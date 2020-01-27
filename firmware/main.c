#include "trx.h"

#include <avr/interrupt.h>
#include <util/delay.h>

int main(void) {
  trx_init();

  sei();

  while (1) {
    trx_poll();
  }

  return 0;
}
