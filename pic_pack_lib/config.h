#ifndef __config_h
#define __config_h
#include "platform.h"
#include "system.h"

// - - - - - - - - - - - - - - - - - - - - 
// pic_serial defines
// - - - - - - - - - - - - - - - - - - - - 
//#define SERIAL_DISCARD_ON_TX_FULL_DURING_INT
#define SERIAL_TX_BUFFER_SIZE 254
#define SERIAL_RX_BUFFER_SIZE 4
//#define SERIAL_DEBUG_ON

// - - - - - - - - - - - - - - -
// General platform definitions
// - - - - - - - - - - - - - - -
#define PLATFORM_TYPE TECH_TOYS_PIC18F2550
#define PLATFORM_CLOCK 24000000


//
#define JOY_PORT	PORTB
#define UP_PIN		7
#define DOWN_PIN	5
#define CENTER_PIN	2
#define LEFT_PIN	6
#define RIGHT_PIN	4

#define USB_HIGHEST_EP 1
// #define USB_SELF_POWERED
#define USB_BUS_POWERED

#define USB_EP0_OUT_SIZE 8
#define USB_EP0_OUT_ADDR 0x0500
#define USB_EP0_IN_SIZE 8
#define USB_EP0_IN_ADDR 0x0508

#define USB_EP1_IN_SIZE		8
#define USB_EP1_IN_ADDR		0x0510

//#define USB_CALLBACK_ON_SOF
// if you define it, you'll need to include this routine in your code:
// void usb_SOF_callback(uns16 frame) {
//	}

//#define USB_CALLBACK_ON_DEVICE_CONFIGURED
// if you define it, you'll need to include this routine in your code:
// void usb_device_configured_callback() {
//	}

#define USB_CALLBACK_ON_CLASS_CTRL
// if you define it, you'll need to include these routines in your code:
//void usb_handle_class_ctrl_read_callback();	
//void usb_handle_class_ctrl_write_callback(uns8 *data, uns16 count);
//void usb_handle_class_request_callback(setup_data_packet sdp);


//#define USB_EP_DATA_CALLBACK
// if you define it, you'll need to include these routines in your code:
//void usb_ep_data_out_callback(uns8 end_point, uns8 *buffer_location, uns16 byte_count);
//void usb_ep_data_in_callback(uns8 end_point, uns16 byte_count);

// Debug - find out what's going on
#define USB_DEBUG
// Heaps of debug, too much for bedtime reading
//#define USB_DEBUG_HIGH


#endif