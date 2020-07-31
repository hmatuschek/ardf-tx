#ifndef __BUTTON_H__
#define __BUTTON_H__

#include <inttypes.h>

#define BUTTON_PORT PORTB
#define BUTTON_DDR  DDRB
#define BUTTON_PIN  PINB
#define BUTTON_BIT  PB2


void button_init();
void button_tick();
uint8_t button();


#endif // __BUTTON_H__
