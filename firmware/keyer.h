#ifndef __KEYER_H__
#define __KEYER_H__

#include <avr/io.h>
#include <inttypes.h>

#define KEYER_NUM_SPEED 25

/** Possible states of the state machine. */
typedef enum {
  KEYER_IDLE,         ///< Idle, wait for keys.
  KEYER_SEND,         ///< Just enable TX for straight key or PTT
  KEYER_SEND_TEXT     ///< Sends a programmed text.
} KeyerState;

#define KEYER_NUM_SYMBOLS 39

void keyer_init(uint8_t speed);

KeyerState keyer_state();
void keyer_set_speed_idx(uint8_t idx);

void keyer_send();
void keyer_send_text(const uint8_t *sym, uint8_t len);
void keyer_stop();

uint8_t keyer_sym2char(uint8_t sym);

void keyer_tick();

#endif // __KEYER_H__
