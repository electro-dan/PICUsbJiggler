#include <system.h>
#include "PICUsbJiggler.h"

/* 
Requires http://embeddedadventures.blogspot.com/2009/01/picpack-20-released.html
*/

// Pic Pack includes
#include "pic_pack_lib/pic_utils.h"
#include "pic_pack_lib/pic_serial.h"
#include "pic_pack_lib/pic_usb.h"
#include "pic_pack_lib/pic_tick.h"
#include "pic_pack_lib/pic_timer.h"


// Configuration registers
// FOSC3:FOSC0 = HSPLL PLLDIV2:PLLDIV0 = 0, CPUDIV1:CPUDIV0 = 10 (/4)
#pragma DATA    _CONFIG1L, 00110000b // USBDIV on, CPU divide by 4, PLL direct
#pragma DATA    _CONFIG1H, 00001110b // disable oscillator switchover, disable failsafe clock monitor, HSPLL
#pragma DATA    _CONFIG2L, 00111110b // USB voltage regulator enabled, brownout set for 2.1 volts, hardware brownout only, PWRT enabled
#pragma DATA    _CONFIG2H, 00011110b // Watchdog timer disabled
#pragma DATA    _CONFIG3H, 00000000b // MCLR disabled, RB4:RB0 digital on POR
#pragma DATA    _CONFIG4L, 10000000b // Debug off, extended instructions disabled, LVP disabled, disable stack full/underflow reset
#pragma DATA    _CONFIG5L, 00001111b // Read code protection off
#pragma DATA    _CONFIG5H, 11000000b // Read EEPROM and boot block protection off
#pragma DATA    _CONFIG6L, 00001111b // Write code protection off
#pragma DATA    _CONFIG6H, 11100000b // Write EEPROM, boot block and config register protection off
#pragma DATA    _CONFIG7L, 00001111b // Table read protection off
#pragma DATA    _CONFIG7H, 01000000b // Boot block table read protection off

// 4 MHz crystal but the system clock is 24MHz due to CPUDIV configuration
#pragma CLOCK_FREQ 24000000

// See if we need to do a task
uns8 do_task = 0;

// Flag if we received something
bit receive = 0;

// Dummy variable to show we can set it 
uns8 send_to = 0;

/******************************************************
  Function called once only to initialise variables and
  setup the PIC registers
*******************************************************/
void initialise() {
    // IO ports setup
    trisa = 0x00; // all ouptuts
    porta = 0x00; // set to off
    trisb = 0x01; // RB0 input
    portb = 0x00; // set to off
    trisc = 0x00; // all ouptuts
    portc = 0x00; // set to off

    // ADC setup
    adcon0 = 0x00; //  ADC off
    adcon1 = 0x0F; // All digital I/O
    
    // USB setup
    ucon.USBEN = 1; // USB on

    intcon2.RBPU = 0; // Port B pull-ups enabled

    intcon.PEIE = 1; // Enables all unmasked peripheral interrupts
    
    LED = 1; // Standby LED

    intcon.GIE = 1;
}

// Interrupt routine - - - - - - - - - -
void timer_0_callback() {
	handle_tick();
}	

//------------------------------------------------------------------------------
// Interrupt handler
//------------------------------------------------------------------------------
void interrupt(void) {
	usb_handle_isr();
	timer_handle_0_isr();
}

//-----------------------------------------------------------------------------
// MAIN PROGRAM
//------------------------------------------------------------------------------
void main() {
    initialise();
    
    while (1) {
        if (isJiggling) {
			// Emit random movement
			
        }
        // Check for button press
        if(BUTTON) {
			delay_ms(100);
			if(BUTTON) {
				if (isJiggling) {
					isJiggling = 1;
					LED = 1;
				} else {
					isJiggling = 0;
					LED = 0;
				}
			}
        }
    }
} 
