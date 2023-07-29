#ifndef _PICUSBJIGGLER_H_
#define _PICUSBJIGGLER_H_

#define LED (portb.1) // LED pin
#define BUTTON (portb.2) // Button (switch) pin

bit isJiggling = 0; // When 0, device does nothing
bit buttonOld = 1;

#endif //_PICUSBJIGGLER_H_
