#ifndef __TRX_H__
#define __TRX_H__

#include <avr/io.h>
#include <stdint.h>
#include "keyer.h"

#define TRX_KEY_PORT PORTB
#define TRX_KEY_DDR  DDRB
#define TRX_KEY_BIT  PB0

#define TRX_LED_PORT    PORTB
#define TRX_LED_DDR     DDRB
#define TRX_LED_BIT     PB1

typedef enum {
  TRX_IDLE       = 0,
  TRX_TX         = 1,
  TRX_ERROR      = 2,
  TRX_STATE_MASK = (TRX_TX | TRX_ERROR),

  TRX_TX_ID      = (1 << 2),
  TRX_TX_CALL    = (2 << 2),
  TRX_TX_FINAL   = (3 << 2),
  TRX_TX_MASK    = (TRX_TX_ID | TRX_TX_CALL | TRX_TX_FINAL),

  TRX_ERR_VOL    = (1 << 4),
  TRX_ERR_TEMP   = (2 << 4),
  TRX_ERR_MASK   = (TRX_ERR_VOL | TRX_ERR_TEMP)
} TRXState;

void trx_init();
void trx_tx();
void trx_rx();
TRXState trx_state();
void trx_set_state(TRXState state);

uint8_t trx_seconds();
uint16_t trx_msecods();

void trx_poll();


// Error state trap.
void trx_error(TRXState err);

#endif // __TRX_H__
