#ifndef _PICUSBJIGGLER_H_
#define _PICUSBJIGGLER_H_

#define LED (portb.1) // LED pin
#define BUTTON (portb.2) // Button (switch) pin

#define JIGGLE_TIMEOUT 30 // How many minutes to jiggle for

bit isJiggling = 0; // When 0, device does nothing
char buttonState = 0; // Records state every 10.9ms

unsigned int bres = 0;
char iSec = 0;
char iMin = 0;

// Tasks
char cTask;
#define TASK_TIMER0 1
#define TASK_TIMER1_MIN 2


// Variables originally from usb_defs.h
#define TRUE   1
#define FALSE  0
#define NULL   0

#define DEBUG_SERIAL 	1
#define NUM_CONFIGURATIONS      1
#define NUM_INTERFACES          1

#define ConfiguredUSB() ((USWSTAT&0x3) == CONFIG_STATE)
#define STALL_EP0    	set_bit(uep0,EPSTALL)
#define STALL_PID_EP0IN 	bd0statie = 0xCC  /* REQUEST ERROR */
#define Send_0Len_pkt	bd0cntie = 0;	bd0statie = 0xc8;	USB_dev_req = NULL

#define POWERED_STATE	        0x00
#define DEFAULT_STATE	        0x01
#define ADDRESS_STATE	        0x02
#define CONFIG_STATE	        0x03
#define ENDPT_DISABLED	        0x10  // For 18F2455 with handshaking
#define ENDPT_IN_ONLY	        0x12
#define ENDPT_OUT_ONLY	        0x14
#define ENDPT_CONTROL	        0x16	/* enable for in, out and setup */
#define ENDPT_NON_CONTROL		0x1E	/* enable for in, and out */
#define TOKEN_OUT	(0x01<<2)
#define TOKEN_ACK	(0x02<<2)
#define TOKEN_IN	(0x09<<2)
#define TOKEN_SETUP	(0x0D<<2)
#define CLEAR_FEATURE	        0x01
#define GET_CONFIGURATION	0x08
#define GET_DESCRIPTOR	        0x06
#define GET_INTERFACE	        0x0A
#define GET_STATUS	        0x00
#define SET_ADDRESS	        0x05
#define SET_CONFIGURATION	0x09
#define SET_FEATURE	        0x03
#define SET_INTERFACE	        0x0B
#define HID_GET_REPORT		0x01
#define	HID_GET_IDLE		0x02
#define	HID_GET_PROTOCOL	0x03
#define HID_SET_REPORT		0x09
#define HID_SET_IDLE		0x0A
#define HID_SET_PROTOCOL	0x0B
#define HID_REPORT_DESCRIPTOR 	0x22
#define HID_DESCRIPTOR 			0x21
#define VEND_SET_MEMORY	        0x80
#define HOSTTODEVICE            0x00
#define HOSTTOINTERFACE         0x01
#define HOSTTOENDPOINT          0x02
#define DEVICETOHOST            0x80
#define INTERFACETOHOST         0x81
#define ENDPOINTTOHOST          0x82
#define EP0OUT                  0
#define EP0IN                   1
#define EP1OUT                  2
#define EP1IN                   3
#define EP2OUT                  4
#define EP2IN                   5

// Descriptor Types
#define DEVICE                  1
#define CONFIGURATION           2
#define STRING                  3
#define INTERFACE               4
#define ENDPOINT                5
#define CS_INTERFACE            0x24
#define CS_ENDPOINT             0x25

// BUFFER REGISTERS
// NAMING CONVENTION bdNXXXXDP  where 
// N is endpoint# = 0,1,2,3
// XXXX is the type: stat, cnt, adrl or adrh
// D is direction=i,o (in,out) 
// P is pingpong=e,o  (even,odd)
/* non-pingpong buffering, 8 byte buffers*/
char bd0statoe@0x400;
char bd0cntoe@0x401 = 8;
char bd0adrloe@0x402 = 0x00;
char bd0adrhoe@0x403 = 0x05;

char bd0statie@0x404;
char bd0cntie@0x405 = 8;
char bd0adrlie@0x406 = 0x80;
char bd0adrhie@0x407 = 0x05;

char bd1statoe@0x408;
char bd1cntoe@0x409 = 8;
char bd1adrloe@0x40A = 0x00;
char bd1adrhoe@0x40B = 0x06;

char bd1statie@0x40C;
char bd1cntie@0x40D = 8;
char bd1adrlie@0x40E = 0x80;
char bd1adrhie@0x40F = 0x06;

char bd2statoe@0x410;
char bd2cntoe@0x411 = 8;
char bd2adrloe@0x412 = 0x00;
char bd2adrhoe@0x413 = 0x07;

char bd2statie@0x414;
char bd2cntie@0x415 = 8;
char bd2adrlie@0x416 = 0x80;
char bd2adrhie@0x417 = 0x07;


#endif //_PICUSBJIGGLER_H_
