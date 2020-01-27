#include "clock.h"

volatile uint16_t _clock_ms;
volatile uint16_t _clock;


void clock_init() {
  clock_reset();
}

void clock_reset() {
  _clock_ms = 0;
  _clock  = 0;
}

void clock_restart() {
  _clock  = 0;
}

uint16_t clock_msec() {
  return _clock_ms;
}

uint16_t clock() {
  return _clock;
}

void time(uint8_t *h, uint8_t *m, uint8_t *s) {
  uint16_t v = clock();
  *s = v % 60; v /= 60;
  *m = v % 60; v /= 60;
  *h = v;
}

void clock_tick() {
  _clock_ms++;
  if (999 <= _clock_ms) {
    _clock_ms = 0;
    _clock++;
  }
}

