#include "button.h"
#include <avr/io.h>

uint8_t  _button_count;
volatile uint8_t  _button;

void button_init() {
  // Config button pin & enable pull-up
  BUTTON_DDR &= ~(1 << BUTTON_BIT);
  BUTTON_PORT |= (1 << BUTTON_BIT);
  // Init state vars.
  _button = 0;
  _button_count = 0;
}

uint8_t button() {
  uint8_t b=_button;
  _button = 0;
  return b;
}

void button_tick() {
  if (BUTTON_PIN & (1 << BUTTON_BIT)) {
    _button_count = 0;
    _button = 0;
  } else if (_button_count < 100) {
    _button_count++;
  } else if (100 == _button_count){
    _button = 1;
    _button_count++;
  }
}
