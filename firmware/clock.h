#ifndef __CLOCK_H__
#define __CLOCK_H__

#include <inttypes.h>

void clock_init();

void clock_tick();

uint16_t clock_msec();
uint16_t clock();
void time(uint8_t *h, uint8_t *m, uint8_t *s);

/** Resets the complete clock and resyncs the clock to this time-point. */
void clock_reset();
/** Resets the clock to 0s, keeps sync with last reset. */
void clock_restart();

#endif // __CLOCK_H__
