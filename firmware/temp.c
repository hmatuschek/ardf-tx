#include "temp.h"
#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>

volatile int8_t _temp;
uint16_t _temp_accu;
uint8_t  _temp_count;

void temp_init() {
  // 1.1 Vref, ADC4 (temp), right-aligned result
  ADMUX = (0 << REFS2) | (1 << REFS1) | (0 << REFS0) | (0 << ADLAR) |
      (1 << MUX3) | (1 << MUX2) | (1 << MUX1) | (1 << MUX0);
  // Enable ADC, no auto-trigger, interrupt enable, prescaler 128 -> 112kHz
  ADCSRA = (1 << ADEN) | (0 << ADSC) | (0 << ADATE) | (1 << ADIE) |
      (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);

  // Init value
  _temp       = -127;
  _temp_count = 0;
  _temp_accu  = 0;
}


int8_t temp() {
  return _temp;
}


void temp_tick() {
  static uint16_t ticks = 0;
  ticks++;
  if (ticks >= 100) {
    ticks = 0;
    // Start convertion every 100ms, if not running
    if (0 == (ADSC & ADCSRA))
      ADCSRA |= (1 << ADSC);
  }
}

ISR(ADC_vect) {
  // Handle conversion result
  _temp_accu += ADC;
  _temp_count++;
  if (64 == _temp_count) {
    _temp_count = 0;
    _temp = _temp_accu/768;
  }
}
