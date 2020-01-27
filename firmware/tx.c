#include "trx.h"
#include "keyer.h"
#include "temp.h"
#include "clock.h"
#include "button.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/eeprom.h>
#include <string.h>

volatile TRXState _state;

#define ID_LEN       4
#define CALL_LEN     7
#define TEMP_ERR_LEN 9
#define VOL_ERR_LEN  9

const uint8_t ID[6][ID_LEN] = {
  {13, 15,  0, 0},                                                         // <- "MO  "
  {13, 15,  5, 0},                                                         // <- "MOE "
  {13, 15,  9, 0},                                                         // <- "MOI "
  {13, 15,  5, 0},                                                         // <- "MOS "
  {13, 15,  8, 0},                                                         // <- "MOH "
  {13, 15, 32, 0}                                                          // <- "MO5 "
};
const uint8_t CALL[CALL_LEN]         = { 4, 13, 30, 13, 1, 20,  0};        // <- "DM3MAT "
const uint8_t TEMP_ERR[TEMP_ERR_LEN] = {20,  5, 13, 16, 0,  5, 18, 18, 0}; // <- "TEMP ERR "
const uint8_t VOLT_ERR[VOL_ERR_LEN]  = {22, 15, 12, 20, 0,  5, 18, 18, 0}; // <- "VOLT ERR"


void trx_init() {
  // Config key pin & clear output
  TRX_KEY_DDR |= (1 << TRX_KEY_BIT);
  TRX_KEY_PORT &= ~(1 << TRX_KEY_BIT);
  // Config LED pin
  TRX_LED_DDR |= (1 << TRX_LED_BIT);
  TRX_LED_PORT &= ~(1 << TRX_LED_BIT);

  clock_init();
  keyer_init(2);
  temp_init();
  button_init();

  _state = TRX_IDLE;

  // Init TX oscillator
  // Set Timer 0 CTC mode, clock source (disabled), toogle OC0A on match
  TCCR0A = (0 << COM0A1) | (0 << COM0A0) | (0 << COM0B1) | (0 << COM0B0) |
      (1 << WGM01) | (0 << WGM00);
  TCCR0B = (0 << FOC0A) | (0 << FOC0B) | (0 << WGM02) |
      (0 << CS02) | (0 << CS01) | (0 << CS00);
  // Should give 3.579MHz at OC0A
  OCR0A = 1;

  // Init Tick-Timer
  // Set Timer 1 on Compare Match (CTC) mode, clock source CLK/64
  TCCR1 = (1 << CTC1) | (0 << PWM1A) | (0 << COM1A1) | (0 << COM1A0) |
      (0 << CS13) | (1 << CS12) | (1 << CS11) | (1 << CS10);
  // -> 1ms (about)
  OCR1A  = 224-1;
  // enable interrupt (OC TIMER 1A)
  TIMSK  |= (1<<OCIE1A);
}


void trx_tx()
{
  if (TRX_TX == (TRX_STATE_MASK & _state)) {
    // Connect COMP T0 to KEY pin
    TCCR0A |= (1 << COM0A0);
    // Enable timer
    TCCR0B |= (1 << CS00);
  }
  // Turn on LED anyway.
  TRX_LED_PORT |= (1 << TRX_LED_BIT);
}

void trx_rx()
{
  // Stop timer
  TCCR0B &= ~(1 << CS00);
  // Disconnect COMP T0 from KEY pin
  TCCR0A &= ~(1 << COM0A0);
  // Pull KEY pin low
  TRX_KEY_PORT &= ~(1 << TRX_KEY_BIT);
  // If in IDLE, WAIT or ERROR state -> turn off LED
  if ( (TRX_WAIT == (TRX_STATE_MASK & _state)) ||
       (TRX_IDLE == (TRX_STATE_MASK & _state)) ||
       (TRX_ERROR == (TRX_STATE_MASK & _state)) )
  {
    TRX_LED_PORT &= ~(1 << TRX_LED_BIT);
  }
}


void trx_poll() {
  // If Brown-out reset -> goto error state!
  if (MCUSR & (1 << BORF))
    trx_error(TRX_ERR_VOL);

  // Check temperature
  if (temp() > 60)
    trx_error(TRX_ERR_TEMP);

  // Read button and handle button events
  uint8_t b = button();
  if (TRX_IDLE == (TRX_STATE_MASK & _state)) {
    // If button press -> WAIT state & TX ID
    if (b) {
      // Reset clock, so clock is synct to this event
      clock_reset();
      _state = (TRX_WAIT | TRX_TX_ID);
      // Start sending ID
      keyer_send_text(ID[1], ID_LEN);
    }
    // Done for IDLE state
    return;
  }
  if (b && (TRX_WAIT == (TRX_STATE_MASK & _state))) {
    _state = (TRX_TX | (TRX_TX_MASK & _state));
    return;
  }
  if (b && (TRX_TX == (TRX_STATE_MASK & _state))) {
    _state = TRX_WAIT;
    return;
  }

  // TX sequencing...
  if (TRX_TX_ID == (TRX_TX_MASK & _state)) {
    if ((KEYER_IDLE == keyer_state()) && (clock() < 50)) {
      keyer_send_text(ID[1], ID_LEN);
    }
    if (clock() >= 50) {
      clock_restart();
      keyer_stop();
      _state = ( (TRX_STATE_MASK & _state) | TRX_TX_CALL );
      keyer_send_text(CALL, CALL_LEN);
    }
  } else if (TRX_TX_CALL == (TRX_TX_MASK & _state)) {
    if ((KEYER_IDLE == keyer_state()) && (9 > clock())) {
      _state = ( (TRX_STATE_MASK & _state) | TRX_TX_FINAL );
    }
    if (9 <= clock()) {
      keyer_stop();
      clock_restart();
      _state = ( (TRX_STATE_MASK & _state) | TRX_TX_PAUSE );
    }
  } else if (TRX_TX_FINAL == (TRX_TX_MASK & _state)) {
    if ((clock_msec() < 800) && (KEYER_IDLE == keyer_state())) {
      keyer_send();
    } else if ((clock_msec() >= 800) && (KEYER_SEND == keyer_state())) {
      keyer_stop();
    }
    if (clock() >= 9) {
      keyer_stop();
      clock_restart();
      _state = ( (TRX_STATE_MASK & _state) | TRX_TX_PAUSE );
    }
  } else if (TRX_TX_PAUSE == (TRX_TX_MASK & _state)) {
    if (KEYER_IDLE != keyer_state())
      keyer_stop();
    if (clock() >= 241) {
      clock_restart();
      _state = ( (TRX_STATE_MASK & _state) | TRX_TX_ID );
    }
  }
}


void trx_error(TRXState err) {
  keyer_stop(); trx_rx();
  _state = (TRX_ERROR | (TRX_ERR_MASK & err));

  while (1) {
    if ((KEYER_IDLE == keyer_state()) && (TRX_ERR_TEMP == (TRX_ERR_MASK & _state)))
      keyer_send_text(TEMP_ERR, TEMP_ERR_LEN);
    if ((KEYER_IDLE == keyer_state()) && (TRX_ERR_VOL == (TRX_ERR_MASK & _state)))
      keyer_send_text(VOLT_ERR, VOL_ERR_LEN);
  }
}


ISR(TIMER1_COMPA_vect) {
  clock_tick();
  keyer_tick();
  temp_tick();
  button_tick();
}

