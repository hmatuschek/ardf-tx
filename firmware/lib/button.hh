#ifndef __AVR_BUTTON_HH__
#define __AVR_BUTTON_HH__

#include <avr/io.h>

typedef enum {
  PinBankA,
  PinBankB,
  PinBankC,
  PinBankD
} PinBank;

typedef enum {
  InputPin,
  Outputpin
} PinType;


template <PinBank bank, unsigned number, PinType dir, bool pullup=true>
class Pin
{
public:
  Pin();

  bool get() const;
  void set(bool value) const;
};


template<PinBank bank, unsigned number, bool pullup=true>
class Button: public Pin<bank, number, InputPin, pullup>
{
public:
  Button();

  void tick();

  bool get();
};

#endif // __AVR_BUTTON_HH__
