;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 8.01
;// License Type  : Pro License
;// Limitations   : PIC18 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P18F2550.inc"
__HEAPSTART                      EQU	0x0000010E ; Start address of heap 
__HEAPEND                        EQU	0x000003FF ; End address of heap 
memcpy8_00000_arg_dst            EQU	0x000000F9 ; bytes:2
memcpy8_00000_arg_src            EQU	0x000000FB ; bytes:2
memcpy8_00000_arg_len            EQU	0x000000FD ; bytes:1
CompTempVarRet492                EQU	0x00000102 ; bytes:2
memcpy8_00000_1_dst2             EQU	0x000000FE ; bytes:2
memcpy8_00000_1_src2             EQU	0x00000100 ; bytes:2
CompTempVar493                   EQU	0x00000102 ; bytes:1
gbl_status                       EQU	0x00000FD8 ; bytes:1
gbl_prodl                        EQU	0x00000FF3 ; bytes:1
gbl_prodh                        EQU	0x00000FF4 ; bytes:1
gbl_ufrm                         EQU	0x00000F66 ; bytes:1
gbl_ufrml                        EQU	0x00000F66 ; bytes:1
gbl_ufrmh                        EQU	0x00000F67 ; bytes:1
gbl_uir                          EQU	0x00000F68 ; bytes:1
gbl_uie                          EQU	0x00000F69 ; bytes:1
gbl_ueir                         EQU	0x00000F6A ; bytes:1
gbl_ueie                         EQU	0x00000F6B ; bytes:1
gbl_ustat                        EQU	0x00000F6C ; bytes:1
gbl_ucon                         EQU	0x00000F6D ; bytes:1
gbl_uaddr                        EQU	0x00000F6E ; bytes:1
gbl_ucfg                         EQU	0x00000F6F ; bytes:1
gbl_uep0                         EQU	0x00000F70 ; bytes:1
gbl_uep1                         EQU	0x00000F71 ; bytes:1
gbl_uep2                         EQU	0x00000F72 ; bytes:1
gbl_uep3                         EQU	0x00000F73 ; bytes:1
gbl_uep4                         EQU	0x00000F74 ; bytes:1
gbl_uep5                         EQU	0x00000F75 ; bytes:1
gbl_uep6                         EQU	0x00000F76 ; bytes:1
gbl_uep7                         EQU	0x00000F77 ; bytes:1
gbl_uep8                         EQU	0x00000F78 ; bytes:1
gbl_uep9                         EQU	0x00000F79 ; bytes:1
gbl_uep10                        EQU	0x00000F7A ; bytes:1
gbl_uep11                        EQU	0x00000F7B ; bytes:1
gbl_uep12                        EQU	0x00000F7C ; bytes:1
gbl_uep13                        EQU	0x00000F7D ; bytes:1
gbl_uep14                        EQU	0x00000F7E ; bytes:1
gbl_uep15                        EQU	0x00000F7F ; bytes:1
gbl_porta                        EQU	0x00000F80 ; bytes:1
gbl_portb                        EQU	0x00000F81 ; bytes:1
gbl_portc                        EQU	0x00000F82 ; bytes:1
gbl_porte                        EQU	0x00000F84 ; bytes:1
gbl_lata                         EQU	0x00000F89 ; bytes:1
gbl_latb                         EQU	0x00000F8A ; bytes:1
gbl_latc                         EQU	0x00000F8B ; bytes:1
gbl_late                         EQU	0x00000F8D ; bytes:1
gbl_ddra                         EQU	0x00000F92 ; bytes:1
gbl_trisa                        EQU	0x00000F92 ; bytes:1
gbl_ddrb                         EQU	0x00000F93 ; bytes:1
gbl_trisb                        EQU	0x00000F93 ; bytes:1
gbl_ddrc                         EQU	0x00000F94 ; bytes:1
gbl_trisc                        EQU	0x00000F94 ; bytes:1
gbl_trise                        EQU	0x00000F96 ; bytes:1
gbl_osctune                      EQU	0x00000F9B ; bytes:1
gbl_pie1                         EQU	0x00000F9D ; bytes:1
gbl_pir1                         EQU	0x00000F9E ; bytes:1
gbl_ipr1                         EQU	0x00000F9F ; bytes:1
gbl_pie2                         EQU	0x00000FA0 ; bytes:1
gbl_pir2                         EQU	0x00000FA1 ; bytes:1
gbl_ipr2                         EQU	0x00000FA2 ; bytes:1
gbl_eecon1                       EQU	0x00000FA6 ; bytes:1
gbl_eecon2                       EQU	0x00000FA7 ; bytes:1
gbl_eedata                       EQU	0x00000FA8 ; bytes:1
gbl_eeadr                        EQU	0x00000FA9 ; bytes:1
gbl_rcsta                        EQU	0x00000FAB ; bytes:1
gbl_txsta                        EQU	0x00000FAC ; bytes:1
gbl_txreg                        EQU	0x00000FAD ; bytes:1
gbl_rcreg                        EQU	0x00000FAE ; bytes:1
gbl_spbrg                        EQU	0x00000FAF ; bytes:1
gbl_spbrgh                       EQU	0x00000FB0 ; bytes:1
gbl_t3con                        EQU	0x00000FB1 ; bytes:1
gbl_tmr3l                        EQU	0x00000FB2 ; bytes:1
gbl_tmr3h                        EQU	0x00000FB3 ; bytes:1
gbl_cmcon                        EQU	0x00000FB4 ; bytes:1
gbl_cvrcon                       EQU	0x00000FB5 ; bytes:1
gbl_ccp1as                       EQU	0x00000FB6 ; bytes:1
gbl_eccp1as                      EQU	0x00000FB6 ; bytes:1
gbl_ccp1del                      EQU	0x00000FB7 ; bytes:1
gbl_eccp1del                     EQU	0x00000FB7 ; bytes:1
gbl_baudcon                      EQU	0x00000FB8 ; bytes:1
gbl_baudctl                      EQU	0x00000FB8 ; bytes:1
gbl_ccp2con                      EQU	0x00000FBA ; bytes:1
gbl_ccpr2                        EQU	0x00000FBB ; bytes:1
gbl_ccpr2l                       EQU	0x00000FBB ; bytes:1
gbl_ccpr2h                       EQU	0x00000FBC ; bytes:1
gbl_ccp1con                      EQU	0x00000FBD ; bytes:1
gbl_eccp1con                     EQU	0x00000FBD ; bytes:1
gbl_ccpr1                        EQU	0x00000FBE ; bytes:1
gbl_ccpr1l                       EQU	0x00000FBE ; bytes:1
gbl_ccpr1h                       EQU	0x00000FBF ; bytes:1
gbl_adcon2                       EQU	0x00000FC0 ; bytes:1
gbl_adcon1                       EQU	0x00000FC1 ; bytes:1
gbl_adcon0                       EQU	0x00000FC2 ; bytes:1
gbl_adres                        EQU	0x00000FC3 ; bytes:1
gbl_adresl                       EQU	0x00000FC3 ; bytes:1
gbl_adresh                       EQU	0x00000FC4 ; bytes:1
gbl_sspcon2                      EQU	0x00000FC5 ; bytes:1
gbl_sspcon1                      EQU	0x00000FC6 ; bytes:1
gbl_sspstat                      EQU	0x00000FC7 ; bytes:1
gbl_sspadd                       EQU	0x00000FC8 ; bytes:1
gbl_sspbuf                       EQU	0x00000FC9 ; bytes:1
gbl_t2con                        EQU	0x00000FCA ; bytes:1
gbl_pr2                          EQU	0x00000FCB ; bytes:1
gbl_tmr2                         EQU	0x00000FCC ; bytes:1
gbl_t1con                        EQU	0x00000FCD ; bytes:1
gbl_tmr1l                        EQU	0x00000FCE ; bytes:1
gbl_tmr1h                        EQU	0x00000FCF ; bytes:1
gbl_rcon                         EQU	0x00000FD0 ; bytes:1
gbl_wdtcon                       EQU	0x00000FD1 ; bytes:1
gbl_hlvdcon                      EQU	0x00000FD2 ; bytes:1
gbl_lvdcon                       EQU	0x00000FD2 ; bytes:1
gbl_osccon                       EQU	0x00000FD3 ; bytes:1
gbl_t0con                        EQU	0x00000FD5 ; bytes:1
gbl_tmr0l                        EQU	0x00000FD6 ; bytes:1
gbl_tmr0h                        EQU	0x00000FD7 ; bytes:1
gbl_fsr2l                        EQU	0x00000FD9 ; bytes:1
gbl_fsr2h                        EQU	0x00000FDA ; bytes:1
gbl_plusw2                       EQU	0x00000FDB ; bytes:1
gbl_preinc2                      EQU	0x00000FDC ; bytes:1
gbl_postdec2                     EQU	0x00000FDD ; bytes:1
gbl_postinc2                     EQU	0x00000FDE ; bytes:1
gbl_indf2                        EQU	0x00000FDF ; bytes:1
gbl_bsr                          EQU	0x00000FE0 ; bytes:1
gbl_fsr1l                        EQU	0x00000FE1 ; bytes:1
gbl_fsr1h                        EQU	0x00000FE2 ; bytes:1
gbl_plusw1                       EQU	0x00000FE3 ; bytes:1
gbl_preinc1                      EQU	0x00000FE4 ; bytes:1
gbl_postdec1                     EQU	0x00000FE5 ; bytes:1
gbl_postinc1                     EQU	0x00000FE6 ; bytes:1
gbl_indf1                        EQU	0x00000FE7 ; bytes:1
gbl_wreg                         EQU	0x00000FE8 ; bytes:1
gbl_fsr0l                        EQU	0x00000FE9 ; bytes:1
gbl_fsr0h                        EQU	0x00000FEA ; bytes:1
gbl_plusw0                       EQU	0x00000FEB ; bytes:1
gbl_preinc0                      EQU	0x00000FEC ; bytes:1
gbl_postdec0                     EQU	0x00000FED ; bytes:1
gbl_postinc0                     EQU	0x00000FEE ; bytes:1
gbl_indf0                        EQU	0x00000FEF ; bytes:1
gbl_intcon3                      EQU	0x00000FF0 ; bytes:1
gbl_intcon2                      EQU	0x00000FF1 ; bytes:1
gbl_intcon                       EQU	0x00000FF2 ; bytes:1
gbl_prod                         EQU	0x00000FF3 ; bytes:1
gbl_tablat                       EQU	0x00000FF5 ; bytes:1
gbl_tblptr                       EQU	0x00000FF6 ; bytes:1
gbl_tblptrl                      EQU	0x00000FF6 ; bytes:1
gbl_tblptrh                      EQU	0x00000FF7 ; bytes:1
gbl_tblptru                      EQU	0x00000FF8 ; bytes:1
gbl_pc                           EQU	0x00000FF9 ; bytes:1
gbl_pcl                          EQU	0x00000FF9 ; bytes:1
gbl_pclath                       EQU	0x00000FFA ; bytes:1
gbl_pclatu                       EQU	0x00000FFB ; bytes:1
gbl_stkptr                       EQU	0x00000FFC ; bytes:1
gbl_tos                          EQU	0x00000FFD ; bytes:1
gbl_tosl                         EQU	0x00000FFD ; bytes:1
gbl_tosh                         EQU	0x00000FFE ; bytes:1
gbl_tosu                         EQU	0x00000FFF ; bytes:1
gbl_isJiggling                   EQU	0x000000D2 ; bit:0
gbl_buttonOld                    EQU	0x000000D2 ; bit:1
gbl_port_array                   EQU	0x00000F80 ; bytes:5
gbl_tris_array                   EQU	0x00000F92 ; bytes:5
gbl_19_tick                      EQU	0x0000005E ; bytes:2
gbl_do_task                      EQU	0x000000D3 ; bytes:1
gbl_receive                      EQU	0x000000D2 ; bit:2
gbl_send_to                      EQU	0x000000D4 ; bytes:1
interrupt_6_start_value          EQU	0x000000F4 ; bytes:2
main_1_tick_marker               EQU	0x000000DE ; bytes:2
main_1_test_tick                 EQU	0x000000E0 ; bytes:2
main_1_left_count                EQU	0x000000E2 ; bytes:1
main_1_check_count               EQU	0x000000E3 ; bytes:1
main_1_buffer                    EQU	0x000000E4 ; bytes:3
CompTempVar730                   EQU	0x000000E7 ; bytes:1
gbl_20_tick                      EQU	0x000000C2 ; bytes:2
CompTempVarRet735                EQU	0x000000EA ; bytes:2
tick_get_c_00021_1_my_store_gie  EQU	0x000000E7 ; bit:0
tick_get_c_00021_1_result        EQU	0x000000E8 ; bytes:2
tick_calc__00022_arg_a           EQU	0x000000E7 ; bytes:2
tick_calc__00022_arg_b           EQU	0x000000E9 ; bytes:2
CompTempVarRet736                EQU	0x000000EB ; bytes:2
CompTempVar740                   EQU	0x000000ED ; bytes:1
CompTempVar743                   EQU	0x000000EE ; bytes:1
CompTempVar744                   EQU	0x000000EF ; bytes:1
gbl_timer_0_start_value          EQU	0x000000C4 ; bytes:2
timer_setu_00024_arg_mode_8_bit  EQU	0x000000E7 ; bit:0
timer_setu_00024_arg_presc_00025 EQU	0x000000E8 ; bytes:1
timer_setu_00024_arg_timer_00026 EQU	0x000000E9 ; bytes:2
gbl_usb_state                    EQU	0x000000D5 ; bytes:1
gbl_usb_address                  EQU	0x000000D6 ; bytes:1
gbl_usb_sdp                      EQU	0x0000009E ; bytes:8
gbl_control_mode                 EQU	0x000000D7 ; bytes:1
gbl_delivery_bytes_to_send       EQU	0x000000C6 ; bytes:2
gbl_delivery_bytes_max_send      EQU	0x000000C8 ; bytes:2
gbl_delivery_bytes_sent          EQU	0x000000CA ; bytes:2
gbl_delivery_ptr                 EQU	0x000000CC ; bytes:2
gbl_delivery_buffer_size         EQU	0x000000D8 ; bytes:1
gbl_delivery_buffer              EQU	0x000000CE ; bytes:2
gbl_delivery_bd                  EQU	0x000000D0 ; bytes:2
gbl_usb_status                   EQU	0x000000D9 ; bytes:1
gbl_buffer_byte                  EQU	0x000000DA ; bytes:1
usb_send_d_0000F_arg_ep          EQU	0x000000E8 ; bytes:1
usb_send_d_0000F_arg_data        EQU	0x000000E9 ; bytes:2
usb_send_d_0000F_arg_send_count  EQU	0x000000EB ; bytes:1
usb_send_d_0000F_arg_first       EQU	0x000000EC ; bit:0
usb_send_d_0000F_1_count         EQU	0x000000ED ; bytes:1
usb_send_d_0000F_1_bd            EQU	0x000000EE ; bytes:2
usb_send_d_0000F_1_buffer        EQU	0x000000F0 ; bytes:2
CompTempVar775                   EQU	0x000000F2 ; bytes:1
CompTempVar778                   EQU	0x000000F2 ; bytes:1
CompTempVar781                   EQU	0x000000F2 ; bytes:1
CompTempVar782                   EQU	0x000000F3 ; bytes:1
CompTempVar783                   EQU	0x000000F2 ; bytes:1
CompTempVarRet791                EQU	0x000000E7 ; bytes:1
usb_send_d_0002E_1_count         EQU	0x000000FC ; bytes:1
CompTempVar789                   EQU	0x000000FD ; bytes:1
usb_send_o_00030_arg_data        EQU	0x000000FB ; bytes:1
usb_handle_00032_arg_sdp         EQU	0x00000100 ; bytes:8
usb_handle_00032_1_descrip_00033 EQU	0x000000F9 ; bytes:1
usb_handle_00032_1_descrip_00034 EQU	0x000000FA ; bytes:1
usb_handle_0002B_1_end_point     EQU	0x000000F4 ; bytes:1
usb_handle_0002B_1_pid           EQU	0x000000F5 ; bytes:1
CompTempVar755                   EQU	0x000000F6 ; bytes:1
CompTempVar758                   EQU	0x000000F6 ; bytes:1
CompTempVar759                   EQU	0x000000F7 ; bytes:1
CompTempVar761                   EQU	0x000000F8 ; bytes:1
usb_handle_0002B_88_bd           EQU	0x000000F6 ; bytes:2
CompTempVar767                   EQU	0x000000F8 ; bytes:1
CompTempVar770                   EQU	0x000000F8 ; bytes:1
CompTempVar772                   EQU	0x000000F9 ; bytes:2
gbl_bd0out                       EQU	0x00000400 ; bytes:4
gbl_bd0in                        EQU	0x00000404 ; bytes:4
gbl_bd1out                       EQU	0x00000408 ; bytes:4
gbl_bd1in                        EQU	0x0000040C ; bytes:4
gbl_bd2out                       EQU	0x00000410 ; bytes:4
gbl_bd2in                        EQU	0x00000414 ; bytes:4
gbl_bd3out                       EQU	0x00000418 ; bytes:4
gbl_bd3in                        EQU	0x0000041C ; bytes:4
gbl_bd4out                       EQU	0x00000420 ; bytes:4
gbl_bd4in                        EQU	0x00000424 ; bytes:4
gbl_bd5out                       EQU	0x00000428 ; bytes:4
gbl_bd5in                        EQU	0x0000042C ; bytes:4
gbl_bd6out                       EQU	0x00000430 ; bytes:4
gbl_bd6in                        EQU	0x00000434 ; bytes:4
gbl_bd7out                       EQU	0x00000438 ; bytes:4
gbl_bd7in                        EQU	0x0000043C ; bytes:4
gbl_buffer_0_out                 EQU	0x00000500 ; bytes:8
gbl_buffer_0_in                  EQU	0x00000508 ; bytes:8
gbl_buffer_1_in                  EQU	0x00000510 ; bytes:8
gbl_ep_in_bd_location            EQU	0x000000A6 ; bytes:4
gbl_ep_out_bd_location           EQU	0x000000AA ; bytes:4
gbl_ep_in_buffer_location        EQU	0x000000AE ; bytes:4
gbl_ep_out_buffer_location       EQU	0x000000B2 ; bytes:4
gbl_ep_in_buffer_size            EQU	0x000000B6 ; bytes:4
gbl_ep_out_buffer_size           EQU	0x000000BA ; bytes:4
CompGblVar99                     EQU	0x000000DB ; bytes:1
CompGblVar100                    EQU	0x000000DC ; bytes:1
CompGblVar101                    EQU	0x000000DD ; bytes:1
gbl_port_shadow                  EQU	0x00000059 ; bytes:5
gbl_my_device_descriptor         EQU	0x0000008C ; bytes:18
gbl_mouse_report_descriptor      EQU	0x00000005 ; bytes:50
gbl_complete_mouse_configuration EQU	0x00000037 ; bytes:34
gbl_string_00                    EQU	0x000000BE ; bytes:4
gbl_string_01                    EQU	0x00000060 ; bytes:24
gbl_string_02                    EQU	0x00000078 ; bytes:20
usb_get_de_00016_arg_descr_00017 EQU	0x000000FB ; bytes:1
usb_get_de_00016_arg_descr_00018 EQU	0x000000FC ; bytes:1
usb_get_de_00016_arg_rtn_d_00019 EQU	0x000000FD ; bytes:2
usb_get_de_00016_arg_rtn_d_0001A EQU	0x00000108 ; bytes:2
usb_get_de_00016_1_descrip_00039 EQU	0x0000010A ; bytes:2
usb_get_de_00016_1_descrip_0003A EQU	0x0000010C ; bytes:2
CompTempVar831                   EQU	0x000000FF ; bytes:1
CompTempVar832                   EQU	0x000000FF ; bytes:1
CompTempVar833                   EQU	0x000000FF ; bytes:1
CompTempVar834                   EQU	0x000000FF ; bytes:1
CompTempVar835                   EQU	0x000000FF ; bytes:1
CompTempVar836                   EQU	0x000000FF ; bytes:1
CompTempVar837                   EQU	0x000000FF ; bytes:1
CompTempVar838                   EQU	0x000000FF ; bytes:1
usb_handle_00013_arg_sdp         EQU	0x00000100 ; bytes:8
usb_handle_00015_arg_data        EQU	0x000000F6 ; bytes:2
usb_handle_00015_arg_count       EQU	0x000000F8 ; bytes:2
delay_ms_00000_arg_del           EQU	0x000000E7 ; bytes:1
Int1Context                      EQU	0x00000001 ; bytes:4
	ORG 0x00000000
	GOTO	_startup
	ORG 0x00000008
	GOTO	interrupt
	ORG 0x0000000C
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F, 1
	NOP
	BNZ	label1
	RETURN
label1
	MOVLW 0xF9
label2
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	ADDLW 0xFF
	BTFSS STATUS,Z
	BRA	label2
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	DECFSZ delay_ms_00000_arg_del, F, 1
	BRA	label1
	RETURN
; } delay_ms function end

	ORG 0x00000074
usb_send_d_0002E
; { usb_send_data_chunk ; function begin
	MOVLB 0x04
	BTFSC gbl_bd0in,7, 1
	RETURN
	MOVLB 0x00
	CLRF usb_send_d_0002E_1_count, 1
label3
	MOVF gbl_delivery_buffer_size, W, 1
	CPFSLT usb_send_d_0002E_1_count, 1
	BRA	label6
	MOVF gbl_delivery_bytes_to_send+D'1', W, 1
	SUBWF gbl_delivery_bytes_sent+D'1', W, 1
	BNZ	label4
	MOVF gbl_delivery_bytes_to_send, W, 1
	SUBWF gbl_delivery_bytes_sent, W, 1
label4
	BC	label6
	MOVF gbl_delivery_bytes_max_send+D'1', W, 1
	SUBWF gbl_delivery_bytes_sent+D'1', W, 1
	BNZ	label5
	MOVF gbl_delivery_bytes_max_send, W, 1
	SUBWF gbl_delivery_bytes_sent, W, 1
label5
	BC	label6
	MOVF gbl_delivery_ptr+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_delivery_ptr, W, 1
	MOVWF FSR0L
	MOVF INDF0, W
	MOVWF CompTempVar789, 1
	MOVF gbl_delivery_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_delivery_buffer, W, 1
	ADDWF usb_send_d_0002E_1_count, W, 1
	MOVWF FSR0L
	MOVF CompTempVar789, W, 1
	MOVWF INDF0
	INFSNZ gbl_delivery_ptr, F, 1
	INCF gbl_delivery_ptr+D'1', F, 1
	INFSNZ gbl_delivery_bytes_sent, F, 1
	INCF gbl_delivery_bytes_sent+D'1', F, 1
	INCF usb_send_d_0002E_1_count, F, 1
	BRA	label3
label6
	MOVF gbl_delivery_buffer_size, W, 1
	CPFSLT usb_send_d_0002E_1_count, 1
	BRA	label9
	MOVF gbl_delivery_bytes_max_send, W, 1
	CPFSEQ gbl_delivery_bytes_sent, 1
	BRA	label7
	MOVF gbl_delivery_bytes_max_send+D'1', W, 1
	CPFSEQ gbl_delivery_bytes_sent+D'1', 1
	BRA	label7
	BRA	label8
label7
	MOVF gbl_delivery_bytes_to_send, W, 1
	CPFSEQ gbl_delivery_bytes_sent, 1
	BRA	label9
	MOVF gbl_delivery_bytes_to_send+D'1', W, 1
	CPFSEQ gbl_delivery_bytes_sent+D'1', 1
	BRA	label9
label8
	MOVLW 0x05
	MOVWF gbl_control_mode, 1
label9
	MOVF usb_send_d_0002E_1_count, W, 1
	MOVLB 0x04
	MOVWF gbl_bd0in+D'1', 1
	MOVLW HIGH(gbl_buffer_0_in+D'0')
	MOVWF gbl_bd0in+D'3', 1
	MOVLW LOW(gbl_buffer_0_in+D'0')
	MOVWF gbl_bd0in+D'2', 1
	MOVLW 0x40
	XORWF gbl_bd0in, F, 1
	BCF gbl_bd0in,5, 1
	BCF gbl_bd0in,4, 1
	BSF gbl_bd0in,3, 1
	BCF gbl_bd0in,2, 1
	BCF gbl_bd0in,1, 1
	BCF gbl_bd0in,0, 1
	BSF gbl_bd0in,7, 1
	RETURN
; } usb_send_data_chunk function end

	ORG 0x00000108
usb_stall__00011
; { usb_stall_ep0 ; function begin
	MOVLB 0x04
	BSF gbl_bd0in,2, 1
	BSF gbl_bd0in,7, 1
	BSF gbl_bd0out,2, 1
	BSF gbl_bd0out,7, 1
	RETURN
; } usb_stall_ep0 function end

	ORG 0x00000114
usb_send_o_00030
; { usb_send_one_byte ; function begin
	MOVLW 0x08
	MOVWF gbl_delivery_buffer_size, 1
	CLRF gbl_delivery_bytes_sent, 1
	CLRF gbl_delivery_bytes_sent+D'1', 1
	MOVLW 0x01
	MOVWF gbl_delivery_bytes_to_send, 1
	CLRF gbl_delivery_bytes_to_send+D'1', 1
	CLRF gbl_delivery_bytes_max_send, 1
	CLRF gbl_delivery_bytes_max_send+D'1', 1
	MOVF usb_send_o_00030_arg_data, W, 1
	MOVWF gbl_buffer_byte, 1
	MOVLW HIGH(gbl_buffer_byte+D'0')
	MOVWF gbl_delivery_ptr+D'1', 1
	MOVLW LOW(gbl_buffer_byte+D'0')
	MOVWF gbl_delivery_ptr, 1
	MOVLW HIGH(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd+D'1', 1
	MOVLW LOW(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd, 1
	MOVLW HIGH(gbl_buffer_0_in+D'0')
	MOVWF gbl_delivery_buffer+D'1', 1
	MOVLW LOW(gbl_buffer_0_in+D'0')
	MOVWF gbl_delivery_buffer, 1
	MOVLB 0x04
	BCF gbl_bd0in,6, 1
	CALL usb_send_d_0002E
	RETURN
; } usb_send_one_byte function end

	ORG 0x0000014C
usb_send_e_00010
; { usb_send_empty_data_pkt ; function begin
	MOVLW 0x08
	MOVLB 0x00
	MOVWF gbl_delivery_buffer_size, 1
	MOVLW HIGH(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd+D'1', 1
	MOVLW LOW(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd, 1
	MOVLW HIGH(gbl_buffer_0_in+D'0')
	MOVWF gbl_delivery_buffer+D'1', 1
	MOVLW LOW(gbl_buffer_0_in+D'0')
	MOVWF gbl_delivery_buffer, 1
	CLRF gbl_delivery_bytes_sent, 1
	CLRF gbl_delivery_bytes_sent+D'1', 1
	CLRF gbl_delivery_bytes_to_send, 1
	CLRF gbl_delivery_bytes_to_send+D'1', 1
	CLRF gbl_delivery_bytes_max_send, 1
	CLRF gbl_delivery_bytes_max_send+D'1', 1
	CLRF gbl_delivery_ptr, 1
	CLRF gbl_delivery_ptr+D'1', 1
	MOVLB 0x04
	BCF gbl_bd0in,6, 1
	CALL usb_send_d_0002E
	RETURN
; } usb_send_empty_data_pkt function end

	ORG 0x0000017C
usb_get_de_00016
; { usb_get_descriptor_callback ; function begin
	CLRF usb_get_de_00016_1_descrip_00039, 1
	CLRF usb_get_de_00016_1_descrip_00039+D'1', 1
	MOVLB 0x00
	DECF usb_get_de_00016_arg_descr_00017, W, 1
	BZ	label13
	MOVLW 0x02
	CPFSEQ usb_get_de_00016_arg_descr_00017, 1
	BRA	label10
	BRA	label14
label10
	MOVLW 0x03
	CPFSEQ usb_get_de_00016_arg_descr_00017, 1
	BRA	label11
	BRA	label15
label11
	MOVLW 0x06
	CPFSEQ usb_get_de_00016_arg_descr_00017, 1
	BRA	label12
	BRA	label20
label12
	MOVLW 0x22
	CPFSEQ usb_get_de_00016_arg_descr_00017, 1
	BRA	label20
	BRA	label19
label13
	MOVLW HIGH(gbl_my_device_descriptor+D'0')
	MOVWF CompTempVar831, 1
	MOVLW LOW(gbl_my_device_descriptor+D'0')
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039, 1
	MOVLB 0x00
	MOVF CompTempVar831, W, 1
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039+D'1', 1
	MOVLW 0x12
	MOVWF usb_get_de_00016_1_descrip_0003A, 1
	CLRF usb_get_de_00016_1_descrip_0003A+D'1', 1
	BRA	label20
label14
	MOVLW HIGH(gbl_complete_mouse_configuration+D'0')
	MOVWF CompTempVar832, 1
	MOVLW LOW(gbl_complete_mouse_configuration+D'0')
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039, 1
	MOVLB 0x00
	MOVF CompTempVar832, W, 1
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039+D'1', 1
	MOVLW 0x22
	MOVWF usb_get_de_00016_1_descrip_0003A, 1
	CLRF usb_get_de_00016_1_descrip_0003A+D'1', 1
	BRA	label20
label15
	MOVF usb_get_de_00016_arg_descr_00018, F, 1
	BZ	label16
	DECF usb_get_de_00016_arg_descr_00018, W, 1
	BZ	label17
	MOVLW 0x02
	CPFSEQ usb_get_de_00016_arg_descr_00018, 1
	BRA	label20
	BRA	label18
label16
	MOVLW 0x04
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_0003A, 1
	CLRF usb_get_de_00016_1_descrip_0003A+D'1', 1
	MOVLW HIGH(gbl_string_00+D'0')
	MOVLB 0x00
	MOVWF CompTempVar833, 1
	MOVLW LOW(gbl_string_00+D'0')
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039, 1
	MOVLB 0x00
	MOVF CompTempVar833, W, 1
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039+D'1', 1
	BRA	label20
label17
	MOVLW 0x18
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_0003A, 1
	CLRF usb_get_de_00016_1_descrip_0003A+D'1', 1
	MOVLW HIGH(gbl_string_01+D'0')
	MOVLB 0x00
	MOVWF CompTempVar834, 1
	MOVLW LOW(gbl_string_01+D'0')
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039, 1
	MOVLB 0x00
	MOVF CompTempVar834, W, 1
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039+D'1', 1
	BRA	label20
label18
	MOVLW 0x14
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_0003A, 1
	CLRF usb_get_de_00016_1_descrip_0003A+D'1', 1
	MOVLW HIGH(gbl_string_02+D'0')
	MOVLB 0x00
	MOVWF CompTempVar835, 1
	MOVLW LOW(gbl_string_02+D'0')
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039, 1
	MOVLB 0x00
	MOVF CompTempVar835, W, 1
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039+D'1', 1
	BRA	label20
label19
	MOVLW 0x32
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_0003A, 1
	CLRF usb_get_de_00016_1_descrip_0003A+D'1', 1
	MOVLW HIGH(gbl_mouse_report_descriptor+D'0')
	MOVLB 0x00
	MOVWF CompTempVar836, 1
	MOVLW LOW(gbl_mouse_report_descriptor+D'0')
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039, 1
	MOVLB 0x00
	MOVF CompTempVar836, W, 1
	MOVLB 0x01
	MOVWF usb_get_de_00016_1_descrip_00039+D'1', 1
label20
	MOVLB 0x00
	MOVF usb_get_de_00016_arg_rtn_d_00019+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_get_de_00016_arg_rtn_d_00019, W, 1
	MOVWF FSR0L
	INCF FSR0L, F
	MOVLB 0x01
	MOVF usb_get_de_00016_1_descrip_00039, W, 1
	MOVLB 0x00
	MOVWF CompTempVar837, 1
	MOVLB 0x01
	MOVF usb_get_de_00016_1_descrip_00039+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVLB 0x00
	MOVF CompTempVar837, W, 1
	MOVWF INDF0
	MOVLB 0x01
	MOVF usb_get_de_00016_arg_rtn_d_0001A+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_get_de_00016_arg_rtn_d_0001A, W, 1
	MOVWF FSR0L
	INCF FSR0L, F
	MOVF usb_get_de_00016_1_descrip_0003A, W, 1
	MOVLB 0x00
	MOVWF CompTempVar838, 1
	MOVLB 0x01
	MOVF usb_get_de_00016_1_descrip_0003A+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVLB 0x00
	MOVF CompTempVar838, W, 1
	MOVWF INDF0
	RETURN
; } usb_get_descriptor_callback function end

	ORG 0x000002A4
usb_config_0002F
; { usb_configure_endpoints ; function begin
	BSF gbl_uep1,4
	BCF gbl_uep1,2
	BSF gbl_uep1,1
	BSF gbl_uep1,3
	MOVLB 0x04
	BSF gbl_bd1in,6, 1
	BCF gbl_bd1in,5, 1
	BCF gbl_bd1in,4, 1
	BCF gbl_bd1in,3, 1
	BCF gbl_bd1in,2, 1
	BCF gbl_bd1in,1, 1
	BCF gbl_bd1in,0, 1
	BCF gbl_bd1in,7, 1
	RETURN
; } usb_configure_endpoints function end

	ORG 0x000002C0
usb_prime__00031
; { usb_prime_ep0_out ; function begin
	MOVLW 0x08
	MOVLB 0x04
	MOVWF gbl_bd0out+D'1', 1
	CLRF gbl_bd0out+D'2', 1
	MOVLW 0x05
	MOVWF gbl_bd0out+D'3', 1
	BSF gbl_bd0out,6, 1
	BCF gbl_bd0out,5, 1
	BCF gbl_bd0out,4, 1
	BSF gbl_bd0out,3, 1
	BCF gbl_bd0out,2, 1
	BCF gbl_bd0out,1, 1
	BCF gbl_bd0out,0, 1
	BSF gbl_bd0out,7, 1
	RETURN
; } usb_prime_ep0_out function end

	ORG 0x000002DE
usb_handle_00032
; { usb_handle_standard_request ; function begin
	MOVLW 0x06
	CPFSEQ usb_handle_00032_arg_sdp+D'1', 1
	BRA	label21
	BRA	label25
label21
	MOVLW 0x05
	CPFSEQ usb_handle_00032_arg_sdp+D'1', 1
	BRA	label22
	BRA	label28
label22
	MOVLW 0x09
	CPFSEQ usb_handle_00032_arg_sdp+D'1', 1
	BRA	label23
	BRA	label29
label23
	MOVLW 0x0A
	CPFSEQ usb_handle_00032_arg_sdp+D'1', 1
	BRA	label24
	BRA	label30
label24
	MOVF usb_handle_00032_arg_sdp+D'1', F, 1
	BZ	label31
	RETURN
label25
	MOVF usb_handle_00032_arg_sdp+D'3', W, 1
	MOVLB 0x00
	MOVWF usb_handle_00032_1_descrip_00033, 1
	MOVLB 0x01
	MOVF usb_handle_00032_arg_sdp+D'2', W, 1
	MOVLB 0x00
	MOVWF usb_handle_00032_1_descrip_00034, 1
	MOVF usb_handle_00032_1_descrip_00033, W, 1
	MOVWF usb_get_de_00016_arg_descr_00017, 1
	MOVF usb_handle_00032_1_descrip_00034, W, 1
	MOVWF usb_get_de_00016_arg_descr_00018, 1
	MOVLW HIGH(gbl_delivery_ptr+D'0')
	MOVWF usb_get_de_00016_arg_rtn_d_00019+D'1', 1
	MOVLW LOW(gbl_delivery_ptr+D'0')
	MOVWF usb_get_de_00016_arg_rtn_d_00019, 1
	MOVLW HIGH(gbl_delivery_bytes_to_send+D'0')
	MOVLB 0x01
	MOVWF usb_get_de_00016_arg_rtn_d_0001A+D'1', 1
	MOVLW LOW(gbl_delivery_bytes_to_send+D'0')
	MOVWF usb_get_de_00016_arg_rtn_d_0001A, 1
	CALL usb_get_de_00016
	MOVF gbl_delivery_ptr, F, 1
	BNZ	label26
	MOVF gbl_delivery_ptr+D'1', F, 1
	BZ	label27
label26
	MOVLW 0x03
	MOVWF gbl_control_mode, 1
	MOVLB 0x01
	MOVF usb_handle_00032_arg_sdp+D'6', W, 1
	MOVLB 0x00
	MOVWF gbl_delivery_bytes_max_send, 1
	MOVLB 0x01
	MOVF usb_handle_00032_arg_sdp+D'7', W, 1
	MOVLB 0x00
	MOVWF gbl_delivery_bytes_max_send+D'1', 1
	CLRF gbl_delivery_bytes_sent, 1
	CLRF gbl_delivery_bytes_sent+D'1', 1
	MOVLW 0x08
	MOVWF gbl_delivery_buffer_size, 1
	MOVLW HIGH(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd+D'1', 1
	MOVLW LOW(gbl_bd0in+D'0')
	MOVWF gbl_delivery_bd, 1
	MOVLW 0x08
	MOVWF gbl_delivery_buffer, 1
	MOVLW 0x05
	MOVWF gbl_delivery_buffer+D'1', 1
	MOVLB 0x04
	BCF gbl_bd0in,6, 1
	CALL usb_send_d_0002E
	RETURN
label27
	CALL usb_stall__00011
	RETURN
label28
	MOVF usb_handle_00032_arg_sdp+D'2', W, 1
	MOVLB 0x00
	MOVWF gbl_usb_address, 1
	MOVLW 0x01
	MOVWF gbl_usb_status, 1
	CALL usb_send_e_00010
	MOVLW 0x06
	MOVLB 0x00
	MOVWF gbl_control_mode, 1
	RETURN
label29
	MOVLW 0x06
	MOVLB 0x00
	MOVWF gbl_control_mode, 1
	CALL usb_send_e_00010
	MOVLW 0x03
	MOVLB 0x00
	MOVWF gbl_usb_state, 1
	CALL usb_config_0002F
	RETURN
label30
	MOVLW 0x03
	MOVLB 0x00
	MOVWF gbl_control_mode, 1
	MOVLW 0x01
	MOVWF usb_send_o_00030_arg_data, 1
	CALL usb_send_o_00030
label31
	MOVLB 0x00
	CLRF usb_send_o_00030_arg_data, 1
	CALL usb_send_o_00030
	RETURN
; } usb_handle_standard_request function end

	ORG 0x000003B8
usb_handle_00015
; { usb_handle_class_ctrl_write_callback ; function begin
	RETURN
; } usb_handle_class_ctrl_write_callback function end

	ORG 0x000003BA
usb_handle_00014
; { usb_handle_class_ctrl_read_callback ; function begin
	RETURN
; } usb_handle_class_ctrl_read_callback function end

	ORG 0x000003BC
usb_handle_00013
; { usb_handle_class_request_callback ; function begin
	DECF usb_handle_00013_arg_sdp+D'1', W, 1
	BTFSC STATUS,Z
	RETURN
	MOVLW 0x02
	CPFSEQ usb_handle_00013_arg_sdp+D'1', 1
	BRA	label32
	RETURN
label32
	MOVLW 0x03
	CPFSEQ usb_handle_00013_arg_sdp+D'1', 1
	BRA	label33
	RETURN
label33
	MOVLW 0x09
	CPFSEQ usb_handle_00013_arg_sdp+D'1', 1
	BRA	label34
	RETURN
label34
	MOVLW 0x0A
	CPFSEQ usb_handle_00013_arg_sdp+D'1', 1
	BRA	label35
	BRA	label36
label35
	MOVLW 0x0B
	CPFSEQ usb_handle_00013_arg_sdp+D'1', 1
	RETURN
	RETURN
label36
	CALL usb_stall__00011
	RETURN
; } usb_handle_class_request_callback function end

	ORG 0x000003F0
memcpy8_00000
; { memcpy8 ; function begin
	MOVF memcpy8_00000_arg_dst, W, 1
	MOVWF memcpy8_00000_1_dst2, 1
	MOVF memcpy8_00000_arg_dst+D'1', W, 1
	MOVWF memcpy8_00000_1_dst2+D'1', 1
	MOVF memcpy8_00000_arg_src, W, 1
	MOVLB 0x01
	MOVWF memcpy8_00000_1_src2, 1
	MOVLB 0x00
	MOVF memcpy8_00000_arg_src+D'1', W, 1
	MOVLB 0x01
	MOVWF memcpy8_00000_1_src2+D'1', 1
label37
	MOVLW 0x00
	MOVLB 0x00
	CPFSGT memcpy8_00000_arg_len, 1
	BRA	label38
	MOVLB 0x01
	MOVF memcpy8_00000_1_src2+D'1', W, 1
	MOVWF FSR0H
	MOVF memcpy8_00000_1_src2, W, 1
	MOVWF FSR0L
	INFSNZ memcpy8_00000_1_src2, F, 1
	INCF memcpy8_00000_1_src2+D'1', F, 1
	MOVF INDF0, W
	MOVWF CompTempVar493, 1
	MOVLB 0x00
	MOVF memcpy8_00000_1_dst2+D'1', W, 1
	MOVWF FSR0H
	MOVF memcpy8_00000_1_dst2, W, 1
	MOVWF FSR0L
	INFSNZ memcpy8_00000_1_dst2, F, 1
	INCF memcpy8_00000_1_dst2+D'1', F, 1
	MOVLB 0x01
	MOVF CompTempVar493, W, 1
	MOVWF INDF0
	MOVLB 0x00
	DECF memcpy8_00000_arg_len, F, 1
	BRA	label37
label38
	MOVF memcpy8_00000_arg_dst, W, 1
	MOVLB 0x01
	MOVWF CompTempVarRet492, 1
	MOVLB 0x00
	MOVF memcpy8_00000_arg_dst+D'1', W, 1
	MOVLB 0x01
	MOVWF CompTempVarRet492+D'1', 1
	RETURN
; } memcpy8 function end

	ORG 0x0000044A
usb_handle_0002D
; { usb_handle_stall ; function begin
	RETURN
; } usb_handle_stall function end

	ORG 0x0000044C
usb_handle_0002C
; { usb_handle_reset ; function begin
	MOVLB 0x00
	CLRF gbl_usb_address, 1
	CLRF gbl_control_mode, 1
	CLRF gbl_usb_status, 1
	BCF gbl_uir,3
	BCF gbl_uir,3
	BCF gbl_uir,3
	BCF gbl_uir,3
	MOVLW 0x08
	MOVLB 0x04
	MOVWF gbl_bd0out+D'1', 1
	CLRF gbl_bd0out+D'2', 1
	MOVLW 0x05
	MOVWF gbl_bd0out+D'3', 1
	BCF gbl_bd0out,6, 1
	BCF gbl_bd0out,5, 1
	BCF gbl_bd0out,4, 1
	BCF gbl_bd0out,3, 1
	BCF gbl_bd0out,2, 1
	BCF gbl_bd0out,1, 1
	BCF gbl_bd0out,0, 1
	BSF gbl_bd0out,7, 1
	MOVLW 0x08
	MOVWF gbl_bd0in+D'1', 1
	MOVWF gbl_bd0in+D'2', 1
	MOVLW 0x05
	MOVWF gbl_bd0in+D'3', 1
	BCF gbl_bd0in,6, 1
	BCF gbl_bd0in,5, 1
	BCF gbl_bd0in,4, 1
	BCF gbl_bd0in,2, 1
	BCF gbl_bd0in,1, 1
	BCF gbl_bd0in,0, 1
	BCF gbl_bd0in,7, 1
	RETURN
; } usb_handle_reset function end

	ORG 0x00000492
usb_handle_0002B
; { usb_handle_transaction ; function begin
	RRCF gbl_ustat, W
	MOVLB 0x00
	MOVWF usb_handle_0002B_1_end_point, 1
	RRCF usb_handle_0002B_1_end_point, F, 1
	RRCF usb_handle_0002B_1_end_point, F, 1
	MOVLW 0x1F
	ANDWF usb_handle_0002B_1_end_point, F, 1
	BTFSS gbl_ustat,2
	BRA	label39
	MOVLB 0x04
	RRCF gbl_bd0in, W, 1
	MOVLB 0x00
	MOVWF usb_handle_0002B_1_pid, 1
	RRCF usb_handle_0002B_1_pid, F, 1
	MOVLW 0x3F
	ANDWF usb_handle_0002B_1_pid, F, 1
	MOVLW 0x0F
	ANDWF usb_handle_0002B_1_pid, F, 1
	BRA	label40
label39
	MOVLB 0x04
	RRCF gbl_bd0out, W, 1
	MOVLB 0x00
	MOVWF CompTempVar755, 1
	RRCF CompTempVar755, F, 1
	MOVLW 0x3F
	ANDWF CompTempVar755, F, 1
	MOVLW 0x0F
	ANDWF CompTempVar755, W, 1
	MOVWF usb_handle_0002B_1_pid, 1
label40
	MOVF usb_handle_0002B_1_end_point, F, 1
	BTFSS STATUS,Z
	BRA	label55
	MOVLW 0x0D
	CPFSEQ usb_handle_0002B_1_pid, 1
	BRA	label43
	MOVLW HIGH(gbl_usb_sdp+D'0')
	MOVWF memcpy8_00000_arg_dst+D'1', 1
	MOVLW LOW(gbl_usb_sdp+D'0')
	MOVWF memcpy8_00000_arg_dst, 1
	MOVLW HIGH(gbl_buffer_0_out+D'0')
	MOVWF memcpy8_00000_arg_src+D'1', 1
	MOVLW LOW(gbl_buffer_0_out+D'0')
	MOVWF memcpy8_00000_arg_src, 1
	MOVLW 0x08
	MOVWF memcpy8_00000_arg_len, 1
	CALL memcpy8_00000
	CALL usb_prime__00031
	MOVLW 0x40
	MOVLB 0x00
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar758, 1
	TSTFSZ CompTempVar758, 1
	BRA	label41
	MOVLW 0x20
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar759, 1
	TSTFSZ CompTempVar759, 1
	BRA	label41
	MOVF gbl_usb_sdp+D'7', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00032_arg_sdp+D'7', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'6', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00032_arg_sdp+D'6', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'5', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00032_arg_sdp+D'5', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'4', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00032_arg_sdp+D'4', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'3', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00032_arg_sdp+D'3', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'2', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00032_arg_sdp+D'2', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'1', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00032_arg_sdp+D'1', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp, W, 1
	MOVLB 0x01
	MOVWF usb_handle_00032_arg_sdp, 1
	CALL usb_handle_00032
	BRA	label42
label41
	MOVLW 0x40
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar761, 1
	TSTFSZ CompTempVar761, 1
	BRA	label42
	BTFSS gbl_usb_sdp,5, 1
	BRA	label42
	MOVF gbl_usb_sdp+D'7', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00013_arg_sdp+D'7', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'6', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00013_arg_sdp+D'6', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'5', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00013_arg_sdp+D'5', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'4', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00013_arg_sdp+D'4', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'3', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00013_arg_sdp+D'3', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'2', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00013_arg_sdp+D'2', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'1', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00013_arg_sdp+D'1', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp, W, 1
	MOVLB 0x01
	MOVWF usb_handle_00013_arg_sdp, 1
	CALL usb_handle_00013
label42
	BCF gbl_ucon,4
	RETURN
label43
	MOVLW 0x09
	CPFSEQ usb_handle_0002B_1_pid, 1
	BRA	label48
	MOVLW 0x03
	CPFSEQ gbl_control_mode, 1
	BRA	label44
	CALL usb_send_d_0002E
	RETURN
label44
	MOVLW 0x06
	CPFSEQ gbl_control_mode, 1
	BRA	label45
	CLRF gbl_control_mode, 1
	DECF gbl_usb_status, W, 1
	BTFSS STATUS,Z
	RETURN
	MOVLW 0x02
	MOVWF gbl_usb_state, 1
	MOVF gbl_usb_address, W, 1
	MOVWF gbl_uaddr
	CLRF gbl_usb_status, 1
	RETURN
label45
	MOVLW 0x05
	CPFSEQ gbl_control_mode, 1
	BRA	label46
	NOP
	RETURN
label46
	MOVLW 0x04
	CPFSEQ gbl_control_mode, 1
	BRA	label47
	CALL usb_handle_00014
	RETURN
label47
	NOP
	RETURN
label48
	MOVLW 0x02
	CPFSEQ usb_handle_0002B_1_pid, 1
	BRA	label51
	MOVLW 0x03
	CPFSEQ gbl_control_mode, 1
	BRA	label49
	CALL usb_send_d_0002E
	RETURN
label49
	MOVLW 0x04
	CPFSEQ gbl_control_mode, 1
	BRA	label50
	CALL usb_handle_00014
	RETURN
label50
	MOVLW 0x06
	CPFSEQ gbl_control_mode, 1
	RETURN
	CLRF gbl_control_mode, 1
	RETURN
label51
	DECF usb_handle_0002B_1_pid, W, 1
	BTFSS STATUS,Z
	RETURN
	MOVLW 0x05
	CPFSEQ gbl_control_mode, 1
	BRA	label52
	CLRF gbl_control_mode, 1
	BRA	label54
label52
	MOVLW 0x02
	CPFSEQ gbl_control_mode, 1
	BRA	label53
	MOVLW HIGH(gbl_buffer_0_out+D'0')
	MOVWF usb_handle_00015_arg_data+D'1', 1
	MOVLW LOW(gbl_buffer_0_out+D'0')
	MOVWF usb_handle_00015_arg_data, 1
	MOVLB 0x04
	MOVF gbl_bd0out+D'1', W, 1
	MOVLB 0x00
	MOVWF usb_handle_00015_arg_count, 1
	CLRF usb_handle_00015_arg_count+D'1', 1
	CALL usb_handle_00015
	BRA	label54
label53
	MOVLW 0x03
	CPFSEQ gbl_control_mode, 1
	BRA	label54
	CLRF gbl_control_mode, 1
label54
	CALL usb_prime__00031
	RETURN
label55
	BTFSS gbl_ustat,2
	BRA	label56
	NOP
	RETURN
label56
	LFSR 0x00,  gbl_ep_out_bd_location
	MOVF FSR0L, W
	MOVF usb_handle_0002B_1_end_point, W, 1
	MOVWF CompTempVar767, 1
	BCF STATUS,C
	RLCF CompTempVar767, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_handle_0002B_88_bd, 1
	MOVF INDF0, W
	MOVWF usb_handle_0002B_88_bd+D'1', 1
	LFSR 0x00,  gbl_ep_out_buffer_size
	MOVF FSR0L, W
	MOVF usb_handle_0002B_1_end_point, W, 1
	MOVWF CompTempVar770, 1
	BCF STATUS,C
	RLCF CompTempVar770, F, 1
	MOVF CompTempVar770, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF CompTempVar772, 1
	MOVF INDF0, W
	MOVWF CompTempVar772+D'1', 1
	MOVF usb_handle_0002B_88_bd+D'1', W, 1
	MOVWF FSR0H
	INCF usb_handle_0002B_88_bd, W, 1
	MOVWF FSR0L
	MOVF CompTempVar772, W, 1
	MOVWF INDF0
	DECF FSR0L, F
	BCF INDF0,6
	BCF INDF0,5
	BCF INDF0,4
	BCF INDF0,3
	BCF INDF0,2
	BCF INDF0,1
	BCF INDF0,0
	BSF INDF0,7
	RETURN
; } usb_handle_transaction function end

	ORG 0x000006A6
handle_tic_00023
; { handle_tick ; function begin
	MOVLB 0x00
	INFSNZ gbl_20_tick, F, 1
	INCF gbl_20_tick+D'1', F, 1
	RETURN
; } handle_tick function end

	ORG 0x000006AE
usb_handle_0000E
; { usb_handle_isr ; function begin
	BTFSS gbl_pir2,5
	RETURN
	BCF gbl_pir2,5
	BTFSS gbl_uir,3
	BRA	label57
	CALL usb_handle_0002B
	BCF gbl_uir,3
label57
	BTFSS gbl_uir,0
	BRA	label58
	CALL usb_handle_0002C
	BCF gbl_uir,0
label58
	BTFSS gbl_uir,5
	RETURN
	CALL usb_handle_0002D
	BCF gbl_uir,5
	RETURN
; } usb_handle_isr function end

	ORG 0x000006D4
timer_0_ca_00029
; { timer_0_callback ; function begin
	CALL handle_tic_00023
	RETURN
; } timer_0_callback function end

	ORG 0x000006DA
usb_setup_00000
; { usb_setup ; function begin
	MOVLB 0x00
	CLRF gbl_usb_state, 1
	BCF gbl_ucfg,3
	BSF gbl_ucfg,2
	BSF gbl_ucfg,4
	BCF gbl_ucfg,1
	BCF gbl_ucfg,0
	BSF gbl_uep0,4
	BSF gbl_uep0,2
	BSF gbl_uep0,1
	BCF gbl_uep0,3
	MOVLW HIGH(gbl_bd0out+D'0')
	MOVWF gbl_ep_out_bd_location+D'1', 1
	MOVLW LOW(gbl_bd0out+D'0')
	MOVWF gbl_ep_out_bd_location, 1
	MOVLW HIGH(gbl_bd1out+D'0')
	MOVWF gbl_ep_out_bd_location+D'3', 1
	MOVLW LOW(gbl_bd1out+D'0')
	MOVWF gbl_ep_out_bd_location+D'2', 1
	MOVLW HIGH(gbl_bd0in+D'0')
	MOVWF gbl_ep_in_bd_location+D'1', 1
	MOVLW LOW(gbl_bd0in+D'0')
	MOVWF gbl_ep_in_bd_location, 1
	MOVLW HIGH(gbl_bd1in+D'0')
	MOVWF gbl_ep_in_bd_location+D'3', 1
	MOVLW LOW(gbl_bd1in+D'0')
	MOVWF gbl_ep_in_bd_location+D'2', 1
	RETURN
; } usb_setup function end

	ORG 0x00000712
usb_enable_0000D
; { usb_enable_module ; function begin
	CLRF gbl_uir
	BSF gbl_ucon,3
	MOVLW 0x01
	MOVLB 0x00
	MOVWF gbl_usb_state, 1
	RETURN
; } usb_enable_module function end

	ORG 0x0000071E
turn_usb_i_00020
; { turn_usb_ints_on ; function begin
	BSF gbl_uie,5
	BSF gbl_uie,3
	BSF gbl_uie,0
	BSF gbl_pie2,5
	RETURN
; } turn_usb_ints_on function end

	ORG 0x00000728
timer_star_00027
; { timer_start_0 ; function begin
	MOVLB 0x00
	MOVF gbl_timer_0_start_value+D'1', W, 1
	MOVWF gbl_tmr0h
	MOVF gbl_timer_0_start_value, W, 1
	MOVWF gbl_tmr0l
	BSF gbl_t0con,7
	RETURN
; } timer_start_0 function end

	ORG 0x00000736
timer_setu_00024
; { timer_setup_0 ; function begin
	BCF gbl_t0con,7
	BTFSS timer_setu_00024_arg_mode_8_bit,0, 1
	BRA	label59
	BSF gbl_t0con,6
	BRA	label60
label59
	BCF gbl_t0con,6
label60
	BCF gbl_t0con,5
	INCF timer_setu_00024_arg_presc_00025, W, 1
	BNZ	label61
	BSF gbl_t0con,3
	BRA	label62
label61
	BCF gbl_t0con,3
	MOVLW 0xF8
	ANDWF gbl_t0con, F
	MOVF timer_setu_00024_arg_presc_00025, W, 1
	IORWF gbl_t0con, F
label62
	MOVF timer_setu_00024_arg_timer_00026, W, 1
	MOVWF gbl_timer_0_start_value, 1
	MOVF timer_setu_00024_arg_timer_00026+D'1', W, 1
	MOVWF gbl_timer_0_start_value+D'1', 1
	BSF gbl_intcon,5
	RETURN
; } timer_setup_0 function end

	ORG 0x00000762
usb_send_d_0000F
; { usb_send_data ; function begin
	LFSR 0x00,  gbl_ep_in_buffer_location
	MOVF FSR0L, W
	MOVF usb_send_d_0000F_arg_ep, W, 1
	MOVWF CompTempVar775, 1
	BCF STATUS,C
	RLCF CompTempVar775, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_send_d_0000F_1_buffer, 1
	MOVF INDF0, W
	MOVWF usb_send_d_0000F_1_buffer+D'1', 1
	LFSR 0x00,  gbl_ep_in_bd_location
	MOVF FSR0L, W
	MOVF usb_send_d_0000F_arg_ep, W, 1
	MOVWF CompTempVar778, 1
	BCF STATUS,C
	RLCF CompTempVar778, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_send_d_0000F_1_bd, 1
	MOVF INDF0, W
	MOVWF usb_send_d_0000F_1_bd+D'1', 1
	MOVF usb_send_d_0000F_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_0000F_1_bd, W, 1
	MOVWF FSR0L
	BTFSC INDF0,7
	RETURN
	CLRF usb_send_d_0000F_1_count, 1
label63
	MOVF usb_send_d_0000F_arg_send_count, W, 1
	CPFSLT usb_send_d_0000F_1_count, 1
	BRA	label64
	MOVF usb_send_d_0000F_arg_data+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_0000F_arg_data, W, 1
	MOVWF FSR0L
	MOVF usb_send_d_0000F_1_count, W, 1
	MOVWF CompTempVar781, 1
	MOVF CompTempVar781, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar782, 1
	MOVF usb_send_d_0000F_1_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_0000F_1_buffer, W, 1
	ADDWF usb_send_d_0000F_1_count, W, 1
	MOVWF FSR0L
	MOVF CompTempVar782, W, 1
	MOVWF INDF0
	INCF usb_send_d_0000F_1_count, F, 1
	BRA	label63
label64
	MOVF usb_send_d_0000F_1_bd+D'1', W, 1
	MOVWF FSR0H
	INCF usb_send_d_0000F_1_bd, W, 1
	MOVWF FSR0L
	MOVF usb_send_d_0000F_1_count, W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVF usb_send_d_0000F_1_buffer, W, 1
	MOVWF CompTempVar783, 1
	MOVF usb_send_d_0000F_1_buffer+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar783, W, 1
	MOVWF INDF0
	BTFSS usb_send_d_0000F_arg_first,0, 1
	BRA	label65
	MOVF usb_send_d_0000F_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_0000F_1_bd, W, 1
	MOVWF FSR0L
	BCF INDF0,6
label65
	MOVF usb_send_d_0000F_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_0000F_1_bd, W, 1
	MOVWF FSR0L
	MOVLW 0x40
	XORWF INDF0, F
	BCF INDF0,5
	BCF INDF0,4
	BSF INDF0,3
	BCF INDF0,2
	BCF INDF0,1
	BCF INDF0,0
	BSF INDF0,7
	RETURN
; } usb_send_data function end

	ORG 0x00000818
usb_get_st_00012
; { usb_get_state ; function begin
	MOVLB 0x00
	MOVF gbl_usb_state, W, 1
	MOVWF CompTempVarRet791, 1
	RETURN
; } usb_get_state function end

	ORG 0x00000820
tick_get_c_00021
; { tick_get_count ; function begin
	MOVLB 0x00
	BCF tick_get_c_00021_1_my_store_gie,0, 1
	BTFSC gbl_intcon,7
	BSF tick_get_c_00021_1_my_store_gie,0, 1
label66
	BCF gbl_intcon,7
	BTFSC gbl_intcon,7
	BRA	label66
	MOVF gbl_20_tick, W, 1
	MOVWF tick_get_c_00021_1_result, 1
	MOVF gbl_20_tick+D'1', W, 1
	MOVWF tick_get_c_00021_1_result+D'1', 1
	BTFSC tick_get_c_00021_1_my_store_gie,0, 1
	BSF gbl_intcon,7
	BTFSS tick_get_c_00021_1_my_store_gie,0, 1
	BCF gbl_intcon,7
	MOVF tick_get_c_00021_1_result, W, 1
	MOVWF CompTempVarRet735, 1
	MOVF tick_get_c_00021_1_result+D'1', W, 1
	MOVWF CompTempVarRet735+D'1', 1
	RETURN
; } tick_get_count function end

	ORG 0x00000848
tick_calc__00022
; { tick_calc_diff ; function begin
	MOVF tick_calc__00022_arg_a, W, 1
	SUBWF tick_calc__00022_arg_b, W, 1
	MOVF tick_calc__00022_arg_a+D'1', W, 1
	CPFSEQ tick_calc__00022_arg_b+D'1', 1
	SUBWF tick_calc__00022_arg_b+D'1', W, 1
	BNC	label67
	MOVF tick_calc__00022_arg_a, W, 1
	SUBWF tick_calc__00022_arg_b, W, 1
	MOVWF CompTempVarRet736, 1
	MOVF tick_calc__00022_arg_a+D'1', W, 1
	SUBWFB tick_calc__00022_arg_b+D'1', W, 1
	MOVWF CompTempVarRet736+D'1', 1
	RETURN
label67
	MOVF tick_calc__00022_arg_a, W, 1
	SUBLW 0xFF
	MOVWF CompTempVar743, 1
	MOVLW 0xFF
	SUBFWB tick_calc__00022_arg_a+D'1', W, 1
	MOVWF CompTempVar740, 1
	MOVF tick_calc__00022_arg_b, W, 1
	ADDWF CompTempVar743, F, 1
	MOVF tick_calc__00022_arg_b+D'1', W, 1
	MOVWF CompTempVar744, 1
	MOVF CompTempVar740, W, 1
	ADDWFC CompTempVar744, F, 1
	INCF CompTempVar743, F, 1
	BTFSC STATUS,Z
	INCF CompTempVar744, F, 1
	MOVF CompTempVar743, W, 1
	MOVWF CompTempVarRet736, 1
	MOVF CompTempVar744, W, 1
	MOVWF CompTempVarRet736+D'1', 1
	RETURN
; } tick_calc_diff function end

	ORG 0x0000088A
initialise_00000
; { initialise ; function begin
	CLRF gbl_trisa
	CLRF gbl_porta
	MOVLW 0x04
	MOVWF gbl_trisb
	CLRF gbl_portb
	CLRF gbl_trisc
	CLRF gbl_portc
	CLRF gbl_adcon0
	MOVLW 0x0F
	MOVWF gbl_adcon1
	BSF gbl_ucon,3
	BCF gbl_intcon2,7
	CALL usb_setup_00000
	BCF timer_setu_00024_arg_mode_8_bit,0, 1
	SETF timer_setu_00024_arg_presc_00025, 1
	MOVLW 0x8A
	MOVWF timer_setu_00024_arg_timer_00026, 1
	MOVLW 0xE8
	MOVWF timer_setu_00024_arg_timer_00026+D'1', 1
	CALL timer_setu_00024
	CALL turn_usb_i_00020
	BSF gbl_intcon,6
	BSF gbl_intcon,7
	CALL usb_enable_0000D
	CALL timer_star_00027
	RETURN
; } initialise function end

	ORG 0x000008C8
main
; { main ; function begin
	CALL initialise_00000
	CLRF main_1_tick_marker, 1
	CLRF main_1_tick_marker+D'1', 1
	CLRF main_1_left_count, 1
	CLRF main_1_check_count, 1
label68
	CALL tick_get_c_00021
	MOVF CompTempVarRet735, W, 1
	MOVWF main_1_test_tick, 1
	MOVF CompTempVarRet735+D'1', W, 1
	MOVWF main_1_test_tick+D'1', 1
	MOVF main_1_tick_marker, W, 1
	MOVWF tick_calc__00022_arg_a, 1
	MOVF main_1_tick_marker+D'1', W, 1
	MOVWF tick_calc__00022_arg_a+D'1', 1
	MOVF main_1_test_tick, W, 1
	MOVWF tick_calc__00022_arg_b, 1
	MOVF main_1_test_tick+D'1', W, 1
	MOVWF tick_calc__00022_arg_b+D'1', 1
	CALL tick_calc__00022
	MOVLW 0x03
	CPFSGT CompTempVarRet736, 1
	TSTFSZ CompTempVarRet736+D'1', 1
	BRA	label69
	BRA	label71
label69
	MOVF main_1_test_tick, W, 1
	MOVWF main_1_tick_marker, 1
	MOVF main_1_test_tick+D'1', W, 1
	MOVWF main_1_tick_marker+D'1', 1
	INCF main_1_left_count, F, 1
	INCF main_1_check_count, F, 1
	MOVLW 0x05
	CPFSEQ main_1_check_count, 1
	BRA	label71
	CLRF main_1_check_count, 1
	CALL usb_get_st_00012
	MOVLW 0x03
	CPFSEQ CompTempVarRet791, 1
	BRA	label70
	BTFSS gbl_isJiggling,0, 1
	BRA	label70
	CLRF main_1_buffer, 1
	MOVF main_1_left_count, W, 1
	SUBLW 0x00
	MOVWF main_1_buffer+D'1', 1
	CLRF main_1_buffer+D'2', 1
	MOVF main_1_buffer+D'1', W, 1
	IORWF main_1_buffer, W, 1
	MOVWF CompTempVar730, 1
	MOVF main_1_buffer+D'2', W, 1
	IORWF CompTempVar730, W, 1
	BZ	label70
	MOVLW 0x01
	MOVWF usb_send_d_0000F_arg_ep, 1
	MOVLW HIGH(main_1_buffer+D'0')
	MOVWF usb_send_d_0000F_arg_data+D'1', 1
	MOVLW LOW(main_1_buffer+D'0')
	MOVWF usb_send_d_0000F_arg_data, 1
	MOVLW 0x03
	MOVWF usb_send_d_0000F_arg_send_count, 1
	BCF usb_send_d_0000F_arg_first,0, 1
	CALL usb_send_d_0000F
label70
	CLRF main_1_left_count, 1
	CLRF main_1_check_count, 1
label71
	MOVLW 0x00
	BTFSC gbl_portb,2
	XORLW 0x01
	BTFSC gbl_buttonOld,1, 1
	XORLW 0x01
	ANDLW 0xFF
	BZ	label73
	BTFSC gbl_portb,2
	BRA	label73
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	BTFSC gbl_portb,2
	BRA	label73
	BTFSC gbl_isJiggling,0, 1
	BRA	label72
	BSF gbl_isJiggling,0, 1
	BSF gbl_portb,1
	BRA	label73
label72
	BCF gbl_isJiggling,0, 1
	BCF gbl_portb,1
label73
	BCF gbl_buttonOld,1, 1
	BTFSC gbl_portb,2
	BSF gbl_buttonOld,1, 1
	BRA	label68
; } main function end

	ORG 0x00000984
_startup
	MOVLB 0x00
	BCF gbl_isJiggling,0, 1
	BSF gbl_buttonOld,1, 1
	CLRF gbl_19_tick
	CLRF gbl_19_tick+D'1'
	CLRF gbl_do_task, 1
	BCF gbl_receive,2, 1
	CLRF gbl_send_to, 1
	CLRF gbl_20_tick, 1
	CLRF gbl_20_tick+D'1', 1
	CLRF gbl_timer_0_start_value, 1
	CLRF gbl_timer_0_start_value+D'1', 1
	CLRF gbl_usb_state, 1
	MOVLW HIGH(gbl_buffer_0_in+D'0')
	MOVWF CompGblVar99, 1
	MOVLW LOW(gbl_buffer_0_in+D'0')
	MOVWF gbl_ep_in_buffer_location, 1
	MOVF CompGblVar99, W, 1
	MOVWF gbl_ep_in_buffer_location+D'1', 1
	MOVLW HIGH(gbl_buffer_1_in+D'0')
	MOVWF CompGblVar100, 1
	MOVLW LOW(gbl_buffer_1_in+D'0')
	MOVWF gbl_ep_in_buffer_location+D'2', 1
	MOVF CompGblVar100, W, 1
	MOVWF gbl_ep_in_buffer_location+D'3', 1
	MOVLW HIGH(gbl_buffer_0_out+D'0')
	MOVWF CompGblVar101, 1
	MOVLW LOW(gbl_buffer_0_out+D'0')
	MOVWF gbl_ep_out_buffer_location, 1
	MOVF CompGblVar101, W, 1
	MOVWF gbl_ep_out_buffer_location+D'1', 1
	CLRF gbl_ep_out_buffer_location+D'2', 1
	CLRF gbl_ep_out_buffer_location+D'3', 1
	MOVLW 0x08
	MOVWF gbl_ep_in_buffer_size, 1
	CLRF gbl_ep_in_buffer_size+D'1', 1
	MOVLW 0x08
	MOVWF gbl_ep_in_buffer_size+D'2', 1
	CLRF gbl_ep_in_buffer_size+D'3', 1
	MOVLW 0x08
	MOVWF gbl_ep_out_buffer_size, 1
	CLRF gbl_ep_out_buffer_size+D'1', 1
	CLRF gbl_ep_out_buffer_size+D'2', 1
	CLRF gbl_ep_out_buffer_size+D'3', 1
	CLRF gbl_port_shadow
	CLRF gbl_port_shadow+D'1'
	CLRF gbl_port_shadow+D'2'
	CLRF gbl_port_shadow+D'3'
	CLRF gbl_port_shadow+D'4'
	MOVLW 0x12
	MOVWF gbl_my_device_descriptor, 1
	MOVLW 0x01
	MOVWF gbl_my_device_descriptor+D'1', 1
	MOVLW 0x10
	MOVWF gbl_my_device_descriptor+D'2', 1
	MOVLW 0x01
	MOVWF gbl_my_device_descriptor+D'3', 1
	CLRF gbl_my_device_descriptor+D'4', 1
	CLRF gbl_my_device_descriptor+D'5', 1
	CLRF gbl_my_device_descriptor+D'6', 1
	MOVLW 0x08
	MOVWF gbl_my_device_descriptor+D'7', 1
	MOVLW 0xD8
	MOVWF gbl_my_device_descriptor+D'8', 1
	MOVLW 0x04
	MOVWF gbl_my_device_descriptor+D'9', 1
	MOVLW 0x0C
	MOVWF gbl_my_device_descriptor+D'10', 1
	CLRF gbl_my_device_descriptor+D'11', 1
	CLRF gbl_my_device_descriptor+D'12', 1
	MOVLW 0x02
	MOVWF gbl_my_device_descriptor+D'13', 1
	MOVLW 0x01
	MOVWF gbl_my_device_descriptor+D'14', 1
	MOVLW 0x02
	MOVWF gbl_my_device_descriptor+D'15', 1
	CLRF gbl_my_device_descriptor+D'16', 1
	MOVLW 0x01
	MOVWF gbl_my_device_descriptor+D'17', 1
	MOVLW 0x05
	MOVWF gbl_mouse_report_descriptor
	MOVLW 0x01
	MOVWF gbl_mouse_report_descriptor+D'1'
	MOVLW 0x09
	MOVWF gbl_mouse_report_descriptor+D'2'
	MOVLW 0x02
	MOVWF gbl_mouse_report_descriptor+D'3'
	MOVLW 0xA1
	MOVWF gbl_mouse_report_descriptor+D'4'
	MOVLW 0x01
	MOVWF gbl_mouse_report_descriptor+D'5'
	MOVLW 0x09
	MOVWF gbl_mouse_report_descriptor+D'6'
	MOVLW 0x01
	MOVWF gbl_mouse_report_descriptor+D'7'
	MOVLW 0xA1
	MOVWF gbl_mouse_report_descriptor+D'8'
	CLRF gbl_mouse_report_descriptor+D'9'
	MOVLW 0x05
	MOVWF gbl_mouse_report_descriptor+D'10'
	MOVLW 0x09
	MOVWF gbl_mouse_report_descriptor+D'11'
	MOVLW 0x19
	MOVWF gbl_mouse_report_descriptor+D'12'
	MOVLW 0x01
	MOVWF gbl_mouse_report_descriptor+D'13'
	MOVLW 0x29
	MOVWF gbl_mouse_report_descriptor+D'14'
	MOVLW 0x03
	MOVWF gbl_mouse_report_descriptor+D'15'
	MOVLW 0x15
	MOVWF gbl_mouse_report_descriptor+D'16'
	CLRF gbl_mouse_report_descriptor+D'17'
	MOVLW 0x25
	MOVWF gbl_mouse_report_descriptor+D'18'
	MOVLW 0x01
	MOVWF gbl_mouse_report_descriptor+D'19'
	MOVLW 0x95
	MOVWF gbl_mouse_report_descriptor+D'20'
	MOVLW 0x03
	MOVWF gbl_mouse_report_descriptor+D'21'
	MOVLW 0x75
	MOVWF gbl_mouse_report_descriptor+D'22'
	MOVLW 0x01
	MOVWF gbl_mouse_report_descriptor+D'23'
	MOVLW 0x81
	MOVWF gbl_mouse_report_descriptor+D'24'
	MOVLW 0x02
	MOVWF gbl_mouse_report_descriptor+D'25'
	MOVLW 0x95
	MOVWF gbl_mouse_report_descriptor+D'26'
	MOVLW 0x01
	MOVWF gbl_mouse_report_descriptor+D'27'
	MOVLW 0x75
	MOVWF gbl_mouse_report_descriptor+D'28'
	MOVLW 0x05
	MOVWF gbl_mouse_report_descriptor+D'29'
	MOVLW 0x81
	MOVWF gbl_mouse_report_descriptor+D'30'
	MOVLW 0x01
	MOVWF gbl_mouse_report_descriptor+D'31'
	MOVLW 0x05
	MOVWF gbl_mouse_report_descriptor+D'32'
	MOVLW 0x01
	MOVWF gbl_mouse_report_descriptor+D'33'
	MOVLW 0x09
	MOVWF gbl_mouse_report_descriptor+D'34'
	MOVLW 0x30
	MOVWF gbl_mouse_report_descriptor+D'35'
	MOVLW 0x09
	MOVWF gbl_mouse_report_descriptor+D'36'
	MOVLW 0x31
	MOVWF gbl_mouse_report_descriptor+D'37'
	MOVLW 0x15
	MOVWF gbl_mouse_report_descriptor+D'38'
	MOVLW 0x81
	MOVWF gbl_mouse_report_descriptor+D'39'
	MOVLW 0x25
	MOVWF gbl_mouse_report_descriptor+D'40'
	MOVLW 0x7F
	MOVWF gbl_mouse_report_descriptor+D'41'
	MOVLW 0x75
	MOVWF gbl_mouse_report_descriptor+D'42'
	MOVLW 0x08
	MOVWF gbl_mouse_report_descriptor+D'43'
	MOVLW 0x95
	MOVWF gbl_mouse_report_descriptor+D'44'
	MOVLW 0x02
	MOVWF gbl_mouse_report_descriptor+D'45'
	MOVLW 0x81
	MOVWF gbl_mouse_report_descriptor+D'46'
	MOVLW 0x06
	MOVWF gbl_mouse_report_descriptor+D'47'
	MOVLW 0xC0
	MOVWF gbl_mouse_report_descriptor+D'48'
	MOVLW 0xC0
	MOVWF gbl_mouse_report_descriptor+D'49'
	MOVLW 0x09
	MOVWF gbl_complete_mouse_configuration
	MOVLW 0x02
	MOVWF gbl_complete_mouse_configuration+D'1'
	MOVLW 0x22
	MOVWF gbl_complete_mouse_configuration+D'2'
	CLRF gbl_complete_mouse_configuration+D'3'
	MOVLW 0x01
	MOVWF gbl_complete_mouse_configuration+D'4'
	MOVLW 0x01
	MOVWF gbl_complete_mouse_configuration+D'5'
	CLRF gbl_complete_mouse_configuration+D'6'
	MOVLW 0x80
	MOVWF gbl_complete_mouse_configuration+D'7'
	MOVLW 0x64
	MOVWF gbl_complete_mouse_configuration+D'8'
	MOVLW 0x09
	MOVWF gbl_complete_mouse_configuration+D'9'
	MOVLW 0x04
	MOVWF gbl_complete_mouse_configuration+D'10'
	CLRF gbl_complete_mouse_configuration+D'11'
	CLRF gbl_complete_mouse_configuration+D'12'
	MOVLW 0x01
	MOVWF gbl_complete_mouse_configuration+D'13'
	MOVLW 0x03
	MOVWF gbl_complete_mouse_configuration+D'14'
	MOVLW 0x01
	MOVWF gbl_complete_mouse_configuration+D'15'
	MOVLW 0x02
	MOVWF gbl_complete_mouse_configuration+D'16'
	CLRF gbl_complete_mouse_configuration+D'17'
	MOVLW 0x09
	MOVWF gbl_complete_mouse_configuration+D'18'
	MOVLW 0x21
	MOVWF gbl_complete_mouse_configuration+D'19'
	MOVLW 0x10
	MOVWF gbl_complete_mouse_configuration+D'20'
	MOVLW 0x01
	MOVWF gbl_complete_mouse_configuration+D'21'
	CLRF gbl_complete_mouse_configuration+D'22'
	MOVLW 0x01
	MOVWF gbl_complete_mouse_configuration+D'23'
	MOVLW 0x22
	MOVWF gbl_complete_mouse_configuration+D'24'
	MOVLW 0x32
	MOVWF gbl_complete_mouse_configuration+D'25'
	CLRF gbl_complete_mouse_configuration+D'26'
	MOVLW 0x07
	MOVWF gbl_complete_mouse_configuration+D'27'
	MOVLW 0x05
	MOVWF gbl_complete_mouse_configuration+D'28'
	MOVLW 0x81
	MOVWF gbl_complete_mouse_configuration+D'29'
	MOVLW 0x03
	MOVWF gbl_complete_mouse_configuration+D'30'
	MOVLW 0x03
	MOVWF gbl_complete_mouse_configuration+D'31'
	CLRF gbl_complete_mouse_configuration+D'32'
	MOVLW 0x0A
	MOVWF gbl_complete_mouse_configuration+D'33'
	MOVLW 0x04
	MOVWF gbl_string_00, 1
	MOVLW 0x03
	MOVWF gbl_string_00+D'1', 1
	MOVLW 0x09
	MOVWF gbl_string_00+D'2', 1
	MOVLW 0x04
	MOVWF gbl_string_00+D'3', 1
	MOVLW 0x18
	MOVWF gbl_string_01, 1
	MOVLW 0x03
	MOVWF gbl_string_01+D'1', 1
	MOVLW 0x50
	MOVWF gbl_string_01+D'2', 1
	CLRF gbl_string_01+D'3', 1
	MOVLW 0x69
	MOVWF gbl_string_01+D'4', 1
	CLRF gbl_string_01+D'5', 1
	MOVLW 0x63
	MOVWF gbl_string_01+D'6', 1
	CLRF gbl_string_01+D'7', 1
	MOVLW 0x50
	MOVWF gbl_string_01+D'8', 1
	CLRF gbl_string_01+D'9', 1
	MOVLW 0x61
	MOVWF gbl_string_01+D'10', 1
	CLRF gbl_string_01+D'11', 1
	MOVLW 0x63
	MOVWF gbl_string_01+D'12', 1
	CLRF gbl_string_01+D'13', 1
	MOVLW 0x6B
	MOVWF gbl_string_01+D'14', 1
	CLRF gbl_string_01+D'15', 1
	MOVLW 0x20
	MOVWF gbl_string_01+D'16', 1
	CLRF gbl_string_01+D'17', 1
	MOVLW 0x49
	MOVWF gbl_string_01+D'18', 1
	CLRF gbl_string_01+D'19', 1
	MOVLW 0x6E
	MOVWF gbl_string_01+D'20', 1
	CLRF gbl_string_01+D'21', 1
	MOVLW 0x63
	MOVWF gbl_string_01+D'22', 1
	CLRF gbl_string_01+D'23', 1
	MOVLW 0x14
	MOVWF gbl_string_02, 1
	MOVLW 0x03
	MOVWF gbl_string_02+D'1', 1
	MOVLW 0x4A
	MOVWF gbl_string_02+D'2', 1
	CLRF gbl_string_02+D'3', 1
	MOVLW 0x6F
	MOVWF gbl_string_02+D'4', 1
	CLRF gbl_string_02+D'5', 1
	MOVLW 0x79
	MOVWF gbl_string_02+D'6', 1
	CLRF gbl_string_02+D'7', 1
	MOVLW 0x2D
	MOVWF gbl_string_02+D'8', 1
	CLRF gbl_string_02+D'9', 1
	MOVLW 0x4D
	MOVWF gbl_string_02+D'10', 1
	CLRF gbl_string_02+D'11', 1
	MOVLW 0x6F
	MOVWF gbl_string_02+D'12', 1
	CLRF gbl_string_02+D'13', 1
	MOVLW 0x75
	MOVWF gbl_string_02+D'14', 1
	CLRF gbl_string_02+D'15', 1
	MOVLW 0x73
	MOVWF gbl_string_02+D'16', 1
	CLRF gbl_string_02+D'17', 1
	MOVLW 0x65
	MOVWF gbl_string_02+D'18', 1
	CLRF gbl_string_02+D'19', 1
	GOTO	main
	ORG 0x00000BFA
interrupt
; { interrupt ; function begin
	MOVFF FSR0H,  Int1Context
	MOVFF FSR0L,  Int1Context+D'1'
	MOVFF PRODH,  Int1Context+D'2'
	MOVFF PRODL,  Int1Context+D'3'
	CALL usb_handle_0000E
	BTFSS gbl_intcon,2
	BRA	label75
	MOVLB 0x00
	CLRF interrupt_6_start_value+D'1', 1
	MOVF gbl_timer_0_start_value, W, 1
	ADDWF gbl_tmr0l, W
	MOVWF interrupt_6_start_value, 1
	MOVF gbl_timer_0_start_value+D'1', W, 1
	ADDWFC interrupt_6_start_value+D'1', F, 1
	INCF interrupt_6_start_value, F, 1
	BTFSC STATUS,Z
	INCF interrupt_6_start_value+D'1', F, 1
	MOVF interrupt_6_start_value+D'1', W, 1
	MOVWF gbl_tmr0h
	MOVF interrupt_6_start_value, W, 1
	MOVWF gbl_tmr0l
	BCF gbl_intcon,2
	CALL timer_0_ca_00029
label75
	MOVFF Int1Context+D'3',  PRODL
	MOVFF Int1Context+D'2',  PRODH
	MOVFF Int1Context+D'1',  FSR0L
	MOVFF Int1Context,  FSR0H
	RETFIE 1
; } interrupt function end

	ORG 0x00300000
	DW 0x0E30
	DW 0x1E3E
	ORG 0x00300004
	DW 0x00FF
	DW 0xFF80
	ORG 0x00300008
	DW 0xC00F
	DW 0xE00F
	DW 0x400F
	END
