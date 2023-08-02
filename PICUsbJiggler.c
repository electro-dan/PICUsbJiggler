//###########################################################################
// filename:		PICUsbJiggler.c
//##########################################################################
// The Jiggle Mouse - Program causes the mouse pointer to move in a figure 8 
//		(infinity) shape. Modified by electro-dan to switch on/off.
//		Also modified to work with PIC18F2550 with 4MHz crystal
//		Serial debugging removed
//   CC indicates changes from original Circuit Cellar source
//
// Author:	                Copyright 2005 by Robert Lang		
// Building on the work of: Reston Condit
//                          Dan Butler
//                          Andrew Smallridge
//
// Revision:		1.1 
// Date:		January 2005
// Compiled using:	BOOSTC 1.93
//
// Revision History:
//   1.0 Initial development and conversion to BOOSTC and PIC18F2455 based on 
//       program "Mouse in a circle" example
//   1.1 Added serial port for debugging messages
//
// Comments:
// bXXX indicate specific bits in registers defined in usb_defs.h
// usb buffers are defined in usbdefs.h

//################################################################################
//
// include files:
#include <system.h>
#include "PICUsbJiggler.h" 

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

unsigned char USB_IsIdle;
unsigned char USB_status_device;
unsigned char USB_Curr_Config; 
unsigned char USB_address_pending;
unsigned char USB_dev_req;
unsigned char USB_Interface [3];
unsigned char USB_USTAT;
unsigned char ACTIVE_BUF;
unsigned char USB_protocol;
unsigned char USWSTAT;
unsigned int USB_PID_ERR   = 0; //error counters
unsigned int USB_CRC5_ERR  = 0;
unsigned int USB_CRC16_ERR = 0;
unsigned int USB_DFN8_ERR  = 0;
unsigned int USB_BTO_ERR   = 0;
unsigned int USB_WRT_ERR   = 0;
unsigned int USB_OWN_ERR   = 0;
unsigned int USB_BTS_ERR   = 0;

unsigned char * EP0_start;  //ep0 pointers modified from CC
unsigned char * EP0_end;    // modified from CC
unsigned char EP0_maxLength;

struct BufferDescriptorEntry { // buffer descriptor
	unsigned char EPStat;
	unsigned char bytes;
	unsigned int address;
};

struct BufferStruct { // buffer structure
	unsigned char bmRequestType;
	unsigned char bRequest;
	unsigned int   wValue;
	unsigned int   wIndex;
	unsigned int   wLength;
};

struct BufferDescriptorEntry * BDT= (struct BufferDescriptorEntry *)0x400; 
struct BufferStruct *  Buffer;  //define Buffer as pointer to a BufferStruct
struct BufferStruct  BufferCopy;
struct BufferDescriptorEntry BDTCopy; 

//string descriptors in unicode format
const char String0[] = {4, STRING, 9, 4};
const char String1[] = {20, STRING,
'M',0,
'i',0,
'c',0,
'r',0,
'o',0,
'c',0,
'h',0,
'i',0,
'p',0};
const char String2[] = {48,STRING,
'P',0,
'I',0,
'C',0,
'1',0,
'8',0,
'F',0,
'2',0,
'5',0,
'5',0,
'0',0,
' ',0,
'J',0,
'i',0,
'g',0,
'g',0,
'l',0,
'e',0,
' ',0, 
'M',0,
'o',0,
'u',0,
's',0,
'e',0};

// Report descriptor prepared by USB DESCRIPTOR TOOL
// http://www.usb.org/developers/hidpage/#Descriptor_Tool
const char ReportDescriptor1[] = {
   0x05, 0x01,                    //  USAGE_PAGE (Generic Desktop)
   0x09, 0x02,                    //  USAGE (Mouse)
   0xa1, 0x01,                    //  COLLECTION (Application)
   0x09, 0x01,                    //  USAGE (Pointer)
   0xa1, 0x00,                    //  COLLECTION (Physical)
   0x05, 0x09,                    //  USAGE_PAGE (Button)
   0x19, 0x01,                    //  USAGE_MINIMUM (Button 1)
   0x29, 0x03,                    //  USAGE_MAXIMUM (Button 3)
   0x15, 0x00,                    //  LOGICAL_MINIMUM (0)
   0x25, 0x01,                    //  LOGICAL_MAXIMUM (1)
   0x95, 0x03,                    //  REPORT_COUNT (3)
   0x75, 0x01,                    //  REPORT_SIZE (1)
   0x81, 0x02,                    //  INPUT (Data,Var,Abs)
   0x95, 0x01,                    //  REPORT_COUNT (1)
   0x75, 0x05,                    //  REPORT_SIZE (5)
   0x81, 0x01,                    //  INPUT (Cnst,Ary,Abs)
   0x05, 0x01,                    //  USAGE_PAGE (Generic Desktop)
   0x09, 0x30,                    //  USAGE (X)
   0x09, 0x31,                    //  USAGE (Y)
   0x15, 0x81,                    //  LOGICAL_MINIMUM (-127)
   0x25, 0x7f,                    //  LOGICAL_MAXIMUM (127)
   0x75, 0x08,                    //  REPORT_SIZE (8)
   0x95, 0x02,                    //  REPORT_COUNT (2)
   0x81, 0x06,                    //  INPUT (Data,Var,Rel)
   0xc0,                          //  END_COLLECTION
   0xc0                           //  END_COLLECTION
};

const char DeviceDescriptor [] = {
    0x12, // 18 bytes long 
    DEVICE, // descriptor type
    0x10, 0x01, // USB specification release (1.10)
    0x00, // class code
    0x00, // subclass code
    0x00, // protocol code
    0x08, // maximum packet size
    0xD8,0x04, // vendor id (04d8) microchip
    0x09,0x00, //product id (0009)
    0x00,0x02, // device release number 2.00
    0x01, // index to string that describes vendor
    0x02, // index to string that describes product
    0x00, // index to string that describes serial number (none)
    0x01  // number of possible configurations
};

//CONFIG DESCRIPTOR ORDER CORRESPONDS TO HID 1.0 OR LATER
const char ConfigDescriptor [] = {
    0x09, // 9 bytes long
    CONFIGURATION, // descriptor type
    0x22, 0x00, // total length of config, interface, HID and endpoint descriptors
    0x01, // number of interfaces
    0x01, // configuration number
    0x00, // index to string that describes configuration (none)
    0xA0, // configuration attributes , remote wakeup
    0x32, // current consumption in 2mA units (100 mA) 
    /* Interface Descriptor  */      0x09,// 9 bytes long
    INTERFACE, // descriptor type
    0x00, // number of this interface (zerp based)
    0x00, // alternate setting (none)
    0x01, // number of endpoints used by interface
    0x03, // class code
    0x01, // subclass code
    0x02, // protocol 
    0x00, // index to string that describes endpoint (none)
    /* HID descriptor described above */     
    0x09, 0x21, 0x10, 0x01, 0x00, 0x01, 0x22, sizeof(ReportDescriptor1), sizeof(ReportDescriptor1)>>8,
    /* Endpoint 1 descriptor */       0x07, // 7 bytes long
    ENDPOINT, // descriptor type
    0x81, // endpoint characteristics (IN endpoint)
    0x03, // endpoint attributes  (interrupt)
    0x03, 0x00, // max packet size (HID 3 byte report)
    0x0A //polling interval in 1 msec increments (10)
};

const unsigned int ReportDescrSize = sizeof(ReportDescriptor1);
const char  HIDDescriptor [] =    {
    0x09, // 9 bytes long
    0x21, // descriptor type, HID=21
    0x10, 0x01,  // HUD class version 1.10
    0x00, // country code (none)
    0x01, // Number of HID class descriptors
    0x22, // Type of class descriptor (report)
    sizeof(ReportDescriptor1), sizeof(ReportDescriptor1)>>8  // Size of report descriptor
};

/***********************************************************************************
 PutEP1 
 Tests the EP1 IN OWNS bit.  If there is a buffer available to us, your buffer is 
 copied and turned over to the SIE for transmission on the next IN transfer and 
 returns TRUE (1).  If the buffer is not available, FALSE is returned (0).                                                  
***********************************************************************************/
unsigned char PutEP1(unsigned char bytes, signed char *buffer) {
	signed char * tobuffer;
	unsigned char i;

	//ddrb = 0; //setup b for output

	if ((bd1statie & 0x80) == 0) { /* do we own the buffer? UOWN=0*/
		bd1cntie = bytes;
        tobuffer = (signed char *) ((unsigned int)bd1adrlie + (unsigned int)(bd1adrhie <<8));

		for (i = 0; i < bytes; i++) {
	        tobuffer[i] = buffer[i];
		}

	    bd1statie &= 0x40; /* save only the Data 1/0 bit */
	    bd1statie ^= 0x40; /* toggle Data 0/1 bit */
	    bd1statie ^= 0x88; /* release buffer */ 
		return TRUE;
	}
	return FALSE;	/* Buffer not available, return false */
}

/***********************************************************************************
 Enable Wakeup on interupt and Activity interrupt then put the device to sleep to 
 save power.  Activity on the D+/D- lines will set the ACTIVITY interrupt, waking up
 the part.                       
***********************************************************************************/
void USBSleep() {
	uie.ACTVIE = 1; // enable activity interrupt
	uie.IDLEIE = 0; //disable idle interrupt
	ucon.SUSPND	= 1; // put in suspend mode
	USB_IsIdle = 1; // mark device as idle
}

/***********************************************************************************
 Service the Activity Interrupt.  This is only enabled when the device is put to 
 sleep as a result of inactivity on the bus.  This code wakes up the part, disables 
 the activity interrupt and reenables the idle interrupt.                                                   
***********************************************************************************/
void USBActivity() {
	uir.ACTVIF = 0;
	uie.ACTVIE = 0;
	ucon.SUSPND = 0; //normal operation
	USB_IsIdle = 0;
}

/***********************************************************************************
 USB Reset interrupt triggered (SE0)                                
 initialize the Buffer Descriptor Table,                            
 Transition to the DEFAULT state,                                   
 Set address to 0                                                   
 Enable the USB                                                     
***********************************************************************************/
void USBReset() {
	USB_Curr_Config = 0;
	USB_IsIdle = 0;
	uir.TRNIF = 0; // clear TOK_DNE bit in uir 4 times to 
	uir.TRNIF = 0; // clear out the USTAT FIFO.  See Microchip 	
	uir.TRNIF = 0; // 18F2455 data sheet.
	uir.TRNIF = 0;
	bd0cntoe = 8; //set up for 8 byte buffer
	bd0statoe = 0x88;	// EP0 Out buffer (USB OWNS)
	bd0statie = 0x08;    // EP0 In buffer (MCU OWNS)
	uaddr = 0; // clear address
	uir = 0; // clear USB interrupt flag
	uie	= 00000101b; // enable reset and activity interrupt
	uep0 = ENDPT_CONTROL;
	USWSTAT = DEFAULT_STATE;
	USB_status_device = 1;
}

/***********************************************************************************
 CopyDescriptorToEP0 
 copies the next chunk of buffer descriptor over to the EP0 In buffer.  
 Inputs:                                                                
    EP0_start - points to first byte of configuration table to transfer 
    EP0_end - total number of bytes to transfer                         
    EP0_maxLength - maximum number of bytes that can be sent during     
    a single transfer                                                   
                                                                        
 toggles the data0/1 bit before setting the UOWN bit over to SIE.       
***********************************************************************************/
void CopyDescriptorToEP0() {
	unsigned char *  USBbuffer;  /* pointer to the USB Buffers */
	unsigned char bufindex;
	USBbuffer =  (unsigned char *) ((unsigned int)bd0adrlie + (unsigned int)(bd0adrhie <<8));
	bufindex  = 0;
    while ((bufindex < EP0_maxLength) && ((unsigned short)EP0_start <(unsigned short) EP0_end)) {
		USBbuffer [bufindex] = *EP0_start;
		++ EP0_start;
		++ bufindex;
	}
	if (bufindex < EP0_maxLength)	/* are we sending a short packet? */
		USB_dev_req = 0;	/* Yes, clear the device reqest */

	bd0cntie  = bufindex;
	bd0statie &= 0x40;		/* save only the DTS bit */
	bd0statie ^= 0x40;		/* toggle data DTS bit */
	bd0statie |= 0x88;		/* set OWN and DTSEN bits */
}

/***********************************************************************************
 Init USB
 Initializes the USB peripheral, sets up the interrupts
***********************************************************************************/
void InitUSB() {
	//ucfg.UTRDIS = 0; // enable internal transceiver
	ucfg.FSEN = 1; // Full speed enable
	ucfg.UPUEN = 1; // Enable on-chip pull-ups
	//ucfg.PPB1 = 0; // Disable ping-pong buffering
	//ucfg.PPB0 = 0; // Disable ping-pong buffering
	//uie.STALLIE = 1; // interrupt on stall
	//uie.TRNIE = 1; //   on transaction complete
	uie.URSTIE = 1; //   on reset 
	pie2.USBIE = 1; // general USB interrupts
	
	ucon.PPBRST = 1; // reset pingpong buffers
	ucon.PPBRST = 0; // unlock pingpong buffers
	ucon.USBEN = 1;	// enable usb
	
	USB_Curr_Config = 0;
	USB_status_device = 1;
	char USB_Interface[] = {0,0,0};
	USB_dev_req = NULL;
	// clear all error counters
	USB_PID_ERR = 0;
	USB_CRC5_ERR = 0;
	USB_CRC16_ERR = 0;
	USB_DFN8_ERR = 0;
	USB_BTO_ERR = 0;
	USB_BTS_ERR = 0;
}

/***********************************************************************************
 This is activated by the STALL bit in the UIR register. It really just tells us 
 that the SIE sent a STALL handshake.  So far, Don't see that any action is 
 required.  Clear the bit and move on.
***********************************************************************************/
void USBStall() {
	uir.STALLIF = 0;
}

/***********************************************************************************
 The SIE detected an error.  This code increments the appropriate error counter 
 and clears the flag.
***********************************************************************************/
void Count_Error() {
	if (ueir.PIDEF && ueie.PIDEE) {
		++USB_PID_ERR;
	}
	if (ueir.CRC5EF && ueie.CRC5EE) {
		++USB_CRC5_ERR;
	}
	if (ueir.CRC16EF && ueie.CRC16EE) {
		++USB_CRC16_ERR;
	}
	if (ueir.DFN8EF && ueie.DFN8EE) {
		++USB_DFN8_ERR;
	}
	if (ueir.BTOEF && ueie.BTOEE) {
		++USB_BTO_ERR;
	}
	if (ueir.BTSEF && ueie.BTSEE) {
		++USB_BTS_ERR;
	}
	ueir = 0; // Clear all USB error flag bits
	uir.UERRIF = 0; // Clear master USB error flag bit
}

/***********************************************************************************
 Process token done interrupt...  Most of the work gets done through this interrupt.  
 Token Done is signaled in response to an In, Out, or Setup transaction.
***********************************************************************************/
void Process_Req() {
	unsigned char *OutBuffer;
	unsigned char *UEPArray;
	unsigned char DescriptorType;
	unsigned char Endpoint;
	unsigned char Interface;
	unsigned char DescriptorID;
	unsigned char StringID;
	USB_USTAT = ustat;
	ACTIVE_BUF = (USB_USTAT >> 3) * 2; //EP*2 (IF OUTPUT)
	ACTIVE_BUF = (ACTIVE_BUF + (USB_USTAT & 0x4) >> 2);  //=EP*2 + 1 (IF INPUT) 
	// save data in buffer descriptor table
	BDTCopy.EPStat = BDT[ACTIVE_BUF].EPStat;
	BDTCopy.bytes = BDT[ACTIVE_BUF].bytes;
	BDTCopy.address = BDT[ACTIVE_BUF].address;
	uir.TRNIF = 0;
	if ((BDTCopy.EPStat & 0x3C) == TOKEN_IN) {
        // TOKEN IN
		if (USB_USTAT == 0x04) { 
            /* Process EP0 In's */
			if (USB_dev_req == GET_DESCRIPTOR) {
				CopyDescriptorToEP0 ();
			}
		} else if (USB_USTAT == 0x0C) {
            /* process EP1 In's */
        } else {
		    /* process EP2 In's */
		}
	} else if ((BDTCopy.EPStat & 0x3C) == TOKEN_OUT) {
        //TOKEN OUT
		if (USB_USTAT == 0x00) {
		    /* process EP1 Out's */
		} else if (USB_USTAT == 0x08) {
            /* process EP1 Out's */
		} else {
            /* process EP2 Out's */
		}
	} else if ((BDTCopy.EPStat & 0x3C) == TOKEN_SETUP) {
        // TOKEN SETUP
		Buffer = (struct BufferStruct*) ((unsigned int)bd0adrloe + (unsigned int)(bd0adrhoe << 8));
		BufferCopy.bmRequestType = Buffer->bmRequestType;
		BufferCopy.bRequest = Buffer->bRequest;
		BufferCopy.wValue = Buffer->wValue;
		BufferCopy.wIndex = Buffer->wIndex;
		BufferCopy.wLength = Buffer->wLength;
        ueir.PIDEF = 0;  // Clear REQUEST ERROR  
		bd0cntoe = 0x08;
		if (BufferCopy.bmRequestType == 0x21)
			bd0statoe = 0xC8;
		else
	        bd0statoe = 0x88;/* Turn the buffer around, make it available for the SIE */
		bd0statie = 0x08;
		ucon.PKTDIS = 0;
		USB_dev_req = 0;
		switch (BufferCopy.bmRequestType) {
            // First bmRequestType ************************************		
		    case HOSTTODEVICE:
                // 00
			    switch (BufferCopy.bRequest) {
		            case CLEAR_FEATURE:
                        //01
		                /* Remote wakeup is only valid device feature */
				        if (BufferCopy.wValue == 1)	{
					        USB_status_device &= 0xFD;
				            Send_0Len_pkt;
				        } else {
				            STALL_EP0;
                        }
				        break;

			        case SET_FEATURE:
                        //03
			            /* Set Device Feature.  Only valid device */
				        if ((BufferCopy.wValue & 0xff) == 1) {
				            USB_status_device |= 0x02;	/* feature is remote wakeup */
					        Send_0Len_pkt;
				        } else {
				            STALL_EP0;
                        }
				        break;
			        case SET_ADDRESS:
                        //05
			            USB_address_pending = BufferCopy.wValue;
				        if (USB_address_pending < 0x80) {
					        Send_0Len_pkt;
					        USB_dev_req = SET_ADDRESS;
		                    uie = 00001001b; //enable transaction complete and reset interrupts
				        } else {
				            STALL_EP0;
                        }
				        break;
			        case SET_CONFIGURATION:
                        //09
				        if (BufferCopy.wValue <= NUM_CONFIGURATIONS)
					        USB_Curr_Config = BufferCopy.wValue;

				        if (BufferCopy.wValue == 0) {
					        USWSTAT = ADDRESS_STATE;
					    } else {
					        USWSTAT = CONFIG_STATE;
				        }
				        Send_0Len_pkt;
	                    bd1statie = 0x48; //SET MCU AS OWNER OF THIS BUFFER, ENABLE DATA TOGGLE SYNC
				        uep1 = ENDPT_NON_CONTROL;
  	                    break;
			        default:
			            STALL_EP0;
				        break;
			    }
			    break;
            // Second bmRequestType ************************************	
            case HOSTTOINTERFACE:   
                //01
                switch (BufferCopy.bRequest) {
                    case SET_INTERFACE:
                        //0B
                        if (USWSTAT == CONFIG_STATE) {
                            Interface = BufferCopy.wIndex;
                            USB_Interface[Interface] = BufferCopy.wValue;
                            Send_0Len_pkt;
                        } else {
                            STALL_EP0;
                        }
                        break;
                    case CLEAR_FEATURE:
                        //01
                    case SET_FEATURE:
                        //03
                        /* Set Interface feature - Not Valid */
                    default:
                        STALL_EP0;
                        break;
                }
                break;
            // Third bmRequestType ************************************				
		    case HOSTTOENDPOINT:
			    switch (BufferCopy.bRequest) {
			        case CLEAR_FEATURE:
                        //01
				        UEPArray = (unsigned char *) &uep0;
				        Endpoint = BufferCopy.wIndex & 0x0F;
	                    if (BufferCopy.wValue == 0) {
	                        /* Only valid feature is 0 (Remote Wakeup) */
				            if (((USWSTAT & 0x03) == ADDRESS_STATE) && (Endpoint == 0)) {
						        UEPArray [Endpoint] &= 0xFE;
						        Send_0Len_pkt;
					        } else if (((USWSTAT& 0x03) == CONFIG_STATE) && (Endpoint < 3)) {
						        UEPArray [Endpoint] &= 0xFE;
						        Send_0Len_pkt;
					        } else {
					            STALL_EP0;
                            }
				        } else {
					        STALL_EP0;
                        }
				        break;

			        case SET_FEATURE:
                        //03
				        UEPArray = (unsigned char *) &uep0;
				        Endpoint = BufferCopy.wIndex & 0x0F;
	                    if (BufferCopy.wValue == 0) {
                            /* Only valid feature is 0 (Remote Wakeup) */
				            if (((USWSTAT& 0x03) == ADDRESS_STATE) && (Endpoint == 0)) {
						        UEPArray [Endpoint] |= 1;
						        Send_0Len_pkt;
					        } else if (((USWSTAT& 0x03) == CONFIG_STATE) && (Endpoint < 3)) {
						        UEPArray [Endpoint] |= 1;
						        Send_0Len_pkt;
					        } else {
					            STALL_EP0;
                            }
				        } else {
				  	        STALL_EP0;
                        }
				        break;
			        default:
                        STALL_EP0;
			    }
			    break;

            // Fourth bmRequestType ************************************	
		    case DEVICETOHOST:  
                //80
			    switch (BufferCopy.bRequest) {
			        case GET_CONFIGURATION:
                        OutBuffer =  (unsigned char *) ((unsigned int)bd0adrlie + (unsigned int)(bd0adrhie <<8));
			            OutBuffer [0] = USB_Curr_Config;
				        bd0cntie = 1;
				        bd0statie = 0xc8;
				        break;
			        case GET_DESCRIPTOR:
				        DescriptorID = (unsigned char) (BufferCopy.wValue >> 8);
				        if (DescriptorID == DEVICE) {
							USB_dev_req = GET_DESCRIPTOR;
					        EP0_start = DeviceDescriptor;
				            EP0_end = DeviceDescriptor + sizeof(DeviceDescriptor);
                            if (BufferCopy.wLength < ((unsigned short)EP0_end - (unsigned short)EP0_start))
						        EP0_end = EP0_start + BufferCopy.wLength;
					        EP0_maxLength = 8;
					        CopyDescriptorToEP0();
				        } else if (DescriptorID == CONFIGURATION) {
					        USB_dev_req = GET_DESCRIPTOR;
					        EP0_start = ConfigDescriptor;
				            EP0_end = ConfigDescriptor + sizeof(ConfigDescriptor);
                            if (BufferCopy.wLength < ((unsigned short)EP0_end - (unsigned short)EP0_start))
						        EP0_end = EP0_start + BufferCopy.wLength;
					        EP0_maxLength = 8;
					        CopyDescriptorToEP0();
				        } else if (DescriptorID == STRING) {
					        StringID = (unsigned char) BufferCopy.wValue;
					        USB_dev_req = GET_DESCRIPTOR;
					        EP0_maxLength = 8;
					        switch (StringID) {
					            case 0:
						            EP0_start = String0;  // String0 is start of string0
						            EP0_end = String0 + String0[0]; // String[0] is length of String0
                                    if (BufferCopy.wLength < ((unsigned short)EP0_end - (unsigned short)EP0_start))
							            EP0_end = EP0_start + BufferCopy.wLength;
						            CopyDescriptorToEP0(); // this copies the whole string in 8 byte pieces
						            break;
					            case 1:
						            EP0_start = String1;
						            EP0_end = String1 + String1[0];
                                    if (BufferCopy.wLength < ((unsigned short)EP0_end - (unsigned short)EP0_start))
							            EP0_end = EP0_start + BufferCopy.wLength;
						            CopyDescriptorToEP0 ();
						            break;
					            case 2:
						            EP0_start = String2;
						            EP0_end = String2 + String2[0];
                                    if (BufferCopy.wLength < ((unsigned short)EP0_end - (unsigned short)EP0_start))
							            EP0_end = EP0_start + BufferCopy.wLength;
						            CopyDescriptorToEP0();
						            break;
                                // Additional string processing can be added here						
						        default:
                                    /* REQUEST ERROR */
						            STALL_PID_EP0IN;
					        }
				        } else  {
					        /* REQUEST ERROR */
                            STALL_PID_EP0IN;
                        }
				        break;
			        case GET_STATUS:
				        OutBuffer = (unsigned char *)BDT[EP0IN].address;
				        OutBuffer[0] = USB_status_device;
				        OutBuffer[1] = 0;
				        bd0cntie = 2;
				        bd0statie = 0xc8;
				        break;
			        default:
				        break;
			    }
			    break;
            // Fifth bmRequestType ************************************	
		    case INTERFACETOHOST:
			    switch (BufferCopy.bRequest) {
			        case GET_INTERFACE:
				        Interface = BufferCopy.wIndex;
				        if ((USWSTAT== CONFIG_STATE) && (Interface < NUM_INTERFACES)) {
					        OutBuffer = (unsigned char *) BDT [EP0IN].address;
					        OutBuffer[0] = USB_Interface[Interface];
					        bd0cntie = 1;
					        bd0statie = 0xc8;
				        } else {
					        STALL_EP0;
                        }
				        break;
			        case GET_STATUS:
				        OutBuffer = (unsigned char *) BDT [EP0IN].address;
				        OutBuffer[1] = 0;
				        bd0cntie = 2;
				        Interface = BufferCopy.wIndex;
				        if ((USWSTAT == ADDRESS_STATE) && (Interface == 0))	{
					        OutBuffer[0] = USB_Interface[Interface];
					        bd0statie = 0xc8;
                        } else if ((USWSTAT == CONFIG_STATE) && (Interface < NUM_INTERFACES)) {
					        OutBuffer[0] = USB_Interface[Interface];
					        bd0statie = 0xc8;
				        } else {
					        STALL_EP0;
                        }
				        break;
			        case GET_DESCRIPTOR:
				        DescriptorType = BufferCopy.wValue >> 8;
                        if (DescriptorType == HID_REPORT_DESCRIPTOR) {
                            /* 22 special HID request to return report descriptor */
					        USB_dev_req = GET_DESCRIPTOR;
					        if (BufferCopy.wIndex == 0);
					        {
						        EP0_start = ReportDescriptor1;
				                EP0_end = EP0_start + sizeof(ReportDescriptor1);
						        EP0_maxLength = 8;
				                if (BufferCopy.wLength < sizeof (ReportDescriptor1))
							        EP0_end = EP0_start + BufferCopy.wLength;
						        CopyDescriptorToEP0();
					        }
					        if (BufferCopy.wIndex == 1);
					        {
					            /* Repeat above code for another Report Descriptor. */
					        }
				        } else if (DescriptorType == HID_DESCRIPTOR) {
				            /* 21 HID descriptor */
					        USB_dev_req = GET_DESCRIPTOR;
					        if (BufferCopy.wIndex == 0) {
						        EP0_start = HIDDescriptor;
						        EP0_end   = EP0_start + sizeof (HIDDescriptor);
						        EP0_maxLength = 8;
						        if (BufferCopy.wLength < sizeof (HIDDescriptor))
							        EP0_end = EP0_start + BufferCopy.wLength;
						        CopyDescriptorToEP0();
					        }
					        if (BufferCopy.wIndex == 1) {
						        /* Repeat above code for another HID Descriptor. */
					        }
				        } else {
                            /* unrecognised request */
					        STALL_EP0;
                        }
				        break;
			        default:
				        break;
			    }
			    break;
            // Sixth bmRequestType ************************************	
		    case ENDPOINTTOHOST:
			    if (BufferCopy.bRequest == GET_STATUS) {   
				    UEPArray = (unsigned char *) &uep0;
				    Endpoint = BufferCopy.wIndex & 0x0F;
                    OutBuffer = (unsigned char *) ((unsigned int)bd0adrlie + (unsigned int)(bd0adrhie << 8));
		            //		OutBuffer = (unsigned char * ) bd0adrlie;
				    OutBuffer[1] = 0;
				    bd0cntie = 2;

				    if (Endpoint < 3) {
					    OutBuffer[0] = UEPArray [Endpoint] & 0x01;
					    bd0statie = 0xc8;
				    } else {
					    STALL_EP0;
                    }
			    }
			    break;
            // Seventh bmRequestType (others) ************************************	
		    default:
		        if (BufferCopy.bmRequestType & 0x20) {
	                OutBuffer =  (unsigned char *) ((unsigned int)bd0adrlie + (unsigned int)(bd0adrhie <<8));						
				    switch (BufferCopy.bmRequestType) {
				        case 0x21:	
                            /* Host to Device HID request */
					        switch (BufferCopy.bRequest) {
					            case HID_SET_PROTOCOL:	
                                    /* Set Protocol */
						            USB_protocol = BufferCopy.wValue;
						            Send_0Len_pkt;	
						            break;
					            case HID_SET_REPORT:
                                    /* Set HID Report */
	                                // Add Set_Report Function above for OUT TOKEN and uncomment following two lines
					                //	USB_dev_req = HID_SET_REPORT;
						            break;
					            case HID_SET_IDLE:
                                    /* Set Idle */
					                STALL_EP0;
					                break;
					            default:
					                STALL_EP0;
					        }
					        break;
				    case 0xA1:
                        /* Dev2HostHIDRequest */
						switch (BufferCopy.bRequest) {
					        case HID_GET_PROTOCOL:	/* Get Protocol */
						        OutBuffer[0] = USB_protocol;
						        bd0cntie = 1;
						        bd0statie = 0xC8;
						        break;
					        case HID_GET_REPORT: /* Get HID Report */
	                            // Add Get_Report Function here and uncomment following two lines
			    		        //	BD0IST = 0xc8;	// Turn over BDT to SIE
						        break;
					        case HID_GET_IDLE:
                                /* Get Idle */
					            STALL_EP0;
					            break;
					        default:
                                // device does not support get idle, just stall
					            STALL_EP0;
					    }
					    break;
				    case 0x22:
                        /* Host2DevReportRequest */
					    STALL_EP0;
					    break;				
				    case 0x23:
                        /* Host2DevPhysicalRequest */
					    STALL_EP0;
					    break;				
				    case 0xA2:
                        /* Dev2HostReportRequest */
					    STALL_EP0;
					    break;				
				    case 0xA3:
                        /* Dev2HostPhysicalRequest */
					    STALL_EP0;
					    break;				
				    default:
    				    STALL_EP0;
				}
			}
    	}
    }
}

/***********************************************************************************
 Branch off and service the USB interrupt flags
***********************************************************************************/
void ServiceUSB() {
	if (uir.TRNIF)
		Process_Req();
	
    if (uir.STALLIF)
		USBStall();
	
    if (uir.UERRIF)
	    Count_Error();
	
    if (uie.IDLEIE)	
		USBSleep();
}

/***********************************************************************************
 Interrupt service routine. Branch off to different interrupts
***********************************************************************************/
void interrupt(void) {
    // Handle USB interrupt
    if (pir2.USBIF) {
		if (uir.ACTVIF && uie.ACTVIE) // WAS IT AN ACTIVITY WAKEUP?
			USBActivity();
		
        if (uir.URSTIF && uie.URSTIE) // USB reset must be serviced immediately
			USBReset();
		
        if (uir.TRNIF && uie.TRNIE) { // WAS IT A TOKEN DONE 
			if (USB_dev_req == SET_ADDRESS)	{
                // Finish Set Address
				USB_dev_req = NULL;
				USB_Curr_Config = 0;
				uaddr = USB_address_pending;
				uie = 00000001b;		// enable just the reset interrupt
 				if (USB_address_pending > 0)
					USWSTAT= ADDRESS_STATE;
				else
					USWSTAT= DEFAULT_STATE;
			}
			uir.TRNIF = 0; // clear Token Done flag
		}
		pir2.USBIF = 0;	 // Clear USB interrupt flag
	}
	// Handle Timer0 interrupt
	if (intcon.TMR0IF) {
		cTask.TASK_TIMER0 = 1;
		intcon.TMR0IF = 0; // Clear the timer interrupt flag
	}
	// Handle Timer1 interrupt
	if (pir1.TMR1IF) {
		// Bresenham's Algorithm zero-error
		// uses 1 variable; unsigned 16 bit int bres
        // gets here every TMR1 int
        // TMR1 will interrupt every 43.691ms (43691us) with a 24MHz clock and prescaler of 1/4
        // Count 1 second intervals
        bres += 2731; // add (43691/16) ticks to bresenham total
        if (bres >= 62500) { // if reached 1 second (1000000/16)
            bres -= 62500; // subtract 1 second, retain error
            // Tick 1 second
            iSec++;
            if (iSec == 60) {
                // Tick minutes
                iMin++;
                iSec = 0;
                cTask.TASK_TIMER1_MIN = 1;
            }
        }
        pir1.TMR1IF = 0; // Clear the timer interrupt flag
	}
}

void timer1Set(bit isOn) {
	iSec = 0;
	iMin = 0;
	bres = 0;
	t1con.TMR1ON = isOn;
}

char testButton() {
    buttonState <<= 1;
    if (!BUTTON)
		buttonState.0 = 1; // Set the last bit
    // Test if button state is set three times, ignoring the three times before (bouncing period)
    if ((buttonState & 0b11000111) == 0b00000111) { 
        buttonState = 0b11111111;
        return 1;
    }
    return 0;
}

/***********************************************************************************
 THE MAIN PROGRAM
***********************************************************************************/
void main() {

    // IO ports setup
    trisa = 0x00; // all ouptuts
    porta = 0x00; // set to off
    trisb = 0x05; // RB0, RB2 input
    portb = 0x00; // set to off
    trisc = 0x00; // all ouptuts
    portc = 0x00; // set to off

    //intcon2.RBPU = 0; // Port B pull-ups enabled
    //intcon2.INTEDG2 = 0;
    //intcon3.INT2IE = 1;

    // ADC setup
    adcon0 = 0x00; //  ADC off
    //adcon1 = 0x0F; // All digital I/O - no need to set adcon1 if CONFIG3H<1> is cleared

	unsigned char i;
	unsigned short j;
	signed char buffer[3];
    const signed char tablex [] = {-1, -1, -1, 1, 1, 1,  1,  1, 1, -1,  -1, -1};
    const signed char tabley [] = {-1, 0, 1,  1,  0, -1, -1, 0,  1, 1, 0, -1 };
	// The table array contains the directional data for simulated mouse movement to 
	// form the infinity symbol (i.e. figure 8). Movements are relative to the 
	// previous position. 
	delay_ms(14);

	InitUSB(); // allow SIE to come online before beginning USB initialization
	buffer[0] = 0;	//we won't be simulating mouse buttons		
	i = 10;
	j = 0;
    
    // Set up timer0 as 8 bit timer with prescaler of 256 and enable
    // 4/24* 10^6 * 256 * 256 = 10.9 msec timer overflow
    // t0con defaults to 1111 1111
    //t0con.T0PS2 = 1;
    //t0con.T0PS1 = 1;
    //t0con.T0PS0 = 1;
    //t0con.T08BIT = 1;
    //t0con.TMR0ON = 1;
    t0con.T0CS = 0; // internal source
    t0con.PSA = 0; // timer0 clock comes from prescaler output
    // Enable timer0 to interrupt
    intcon.TMR0IE = 1;
    
    // Set up timer1 as a second/minute timer, used to timeout the jiggle function
    // t1con defaults to 0000 0000
	//t1con.T1SYNC = 1;    // bit 2 Timer1 External Clock Input Synchronization Control bit...1 = Do not synchronize external clock input
	//t1con.TMR1CS = 0;    // bit 1 Timer1 Clock Source Select bit...0 = Internal clock (FOSC/4)
	//t1con.TMR1ON = 1;    // bit 0 enables timer
    // Prescaler 1/4
    t1con.T1CKPS1 = 1;   // bits 5-4  Prescaler Rate Select bits
	t1con.T1CKPS0 = 0;   // bit 4
	// Enable timer1 to interrupt
	pie1.TMR1IE = 1;
	
	// Enable GIE & PEIE
	intcon.GIE = 1;
	intcon.PEIE = 1;
    
    while (1) {
		// Poll all functions every 10.9ms
		if (cTask.TASK_TIMER0) { 
			if (testButton()) {
				if (!isJiggling) {
					timer1Set(1); // Turn on timer
                    isJiggling = 1;
                    LED = 1;
                } else {
					timer1Set(0); // Turn off timer
                    isJiggling = 0;
                    LED = 0;
                }
            }
			
			ServiceUSB(); // Service USB functions
			if (isJiggling) {
                // send same data 10 times (100 msec)
                if (i > 9) {
                    i = 0;
                    j++;
                    // (limit to length of table array)
                    if (j == 12)
                        j = 0;
                }
                // Increment infinity vectors
                buffer[1] = tablex[j];	// X vector 
                buffer[2] = tabley[j];	// Y vector
            }
            cTask.TASK_TIMER0 = 0;
        }
        if (cTask.TASK_TIMER1_MIN) { 
			// See if minutes reached timeout
			if (iMin >= JIGGLE_TIMEOUT) {
				timer1Set(0); // Turn off timer
				if (isJiggling) {
					isJiggling = 0;
					LED = 0;
				}
			}
			cTask.TASK_TIMER1_MIN = 0;
        }
        if (ConfiguredUSB()) {
            // Wait until device is configured before using EP1.  If Endpoints 1 or 2 are used before
			//   the device is configured, errors will occur.
		    if (isJiggling) {
				if (PutEP1(3, buffer)) {
					// Increment i if EP1 IN buffer is accessible to the PIC.
					// If not accessible, try again next time.
					i++;
				}
			}
		}
	}
}