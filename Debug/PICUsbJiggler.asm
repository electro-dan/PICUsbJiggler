;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 8.01
;// License Type  : Pro License
;// Limitations   : PIC18 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P18F2550.inc"
__HEAPSTART                      EQU	0x00000518 ; Start address of heap 
__HEAPEND                        EQU	0x000007FF ; End address of heap 
__div_16_1_00005_arg_a           EQU	0x000000FE ; bytes:2
__div_16_1_00005_arg_b           EQU	0x000001FE ; bytes:2
CompTempVarRet347                EQU	0x0000020A ; bytes:2
__div_16_1_00005_1_r             EQU	0x00000206 ; bytes:2
__div_16_1_00005_1_i             EQU	0x00000208 ; bytes:1
CompTempVar349                   EQU	0x00000209 ; bytes:1
__rem_16_1_00006_arg_a           EQU	0x000000FE ; bytes:2
__rem_16_1_00006_arg_b           EQU	0x000001FE ; bytes:2
CompTempVarRet350                EQU	0x0000020D ; bytes:2
__rem_16_1_00006_1_c             EQU	0x00000209 ; bytes:2
__rem_16_1_00006_1_i             EQU	0x0000020B ; bytes:1
CompTempVar352                   EQU	0x0000020C ; bytes:1
memcpy8_00000_arg_dst            EQU	0x000000E4 ; bytes:2
memcpy8_00000_arg_src            EQU	0x000000E6 ; bytes:2
memcpy8_00000_arg_len            EQU	0x000000E8 ; bytes:1
CompTempVarRet567                EQU	0x000000ED ; bytes:2
memcpy8_00000_1_dst2             EQU	0x000000E9 ; bytes:2
memcpy8_00000_1_src2             EQU	0x000000EB ; bytes:2
CompTempVar568                   EQU	0x000000ED ; bytes:1
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
gbl_isJiggling                   EQU	0x000000CE ; bit:0
gbl_port_array                   EQU	0x00000F80 ; bytes:5
gbl_tris_array                   EQU	0x00000F92 ; bytes:5
gbl_20_tick                      EQU	0x0000005E ; bytes:2
gbl_do_task                      EQU	0x000000CF ; bytes:1
gbl_receive                      EQU	0x000000CE ; bit:1
gbl_send_to                      EQU	0x000000D0 ; bytes:1
interrupt_6_start_value          EQU	0x000000DF ; bytes:2
gbl_tx_buffer                    EQU	0x00000100 ; bytes:254
gbl_tx_start                     EQU	0x000000D1 ; bytes:1
gbl_tx_end                       EQU	0x000000D2 ; bytes:1
gbl_rx_start                     EQU	0x000000D3 ; bytes:1
gbl_rx_end                       EQU	0x000000D4 ; bytes:1
serial_tx__0000D_1_tx_next       EQU	0x000001FF ; bytes:1
serial_put_00010_arg_c           EQU	0x000000FE ; bytes:1
serial_put_00010_1_tx_next       EQU	0x000000FF ; bytes:1
serial_put_00010_1_my_store_gie  EQU	0x000001FE ; bit:0
serial_pri_00012_arg_str         EQU	0x000000FB ; bytes:2
serial_pri_00012_1_count         EQU	0x000000FD ; bytes:1
serial_pri_00014_arg_i           EQU	0x000000FB ; bytes:2
serial_pri_00014_1_buffer        EQU	0x00000200 ; bytes:6
serial_pri_00014_1_count         EQU	0x000000FD ; bytes:1
CompTempVar817                   EQU	0x00000206 ; bytes:1
CompTempVar818                   EQU	0x00000207 ; bytes:1
CompTempVar819                   EQU	0x00000208 ; bytes:1
serial_pri_00015_arg_i           EQU	0x000000F1 ; bytes:1
serial_pri_00015_5_x             EQU	0x000000F2 ; bytes:1
serial_pri_00015_15_x            EQU	0x000000F2 ; bytes:1
gbl_22_tick                      EQU	0x000000BE ; bytes:2
gbl_timer_0_start_value          EQU	0x000000C0 ; bytes:2
gbl_usb_state                    EQU	0x000000D5 ; bytes:1
gbl_usb_address                  EQU	0x000000D6 ; bytes:1
gbl_usb_sdp                      EQU	0x0000009E ; bytes:8
gbl_control_mode                 EQU	0x000000D7 ; bytes:1
gbl_delivery_bytes_to_send       EQU	0x000000C2 ; bytes:2
gbl_delivery_bytes_max_send      EQU	0x000000C4 ; bytes:2
gbl_delivery_bytes_sent          EQU	0x000000C6 ; bytes:2
gbl_delivery_ptr                 EQU	0x000000C8 ; bytes:2
gbl_delivery_buffer_size         EQU	0x000000D8 ; bytes:1
gbl_delivery_buffer              EQU	0x000000CA ; bytes:2
gbl_delivery_bd                  EQU	0x000000CC ; bytes:2
gbl_usb_status                   EQU	0x000000D9 ; bytes:1
gbl_buffer_byte                  EQU	0x000000DA ; bytes:1
CompTempVar936                   EQU	0x00000200 ; bytes:12
usb_send_d_0003D_1_count         EQU	0x000000F2 ; bytes:1
CompTempVar930                   EQU	0x00000200 ; bytes:17
CompTempVar933                   EQU	0x000000F3 ; bytes:1
usb_send_o_0003F_arg_data        EQU	0x000000F1 ; bytes:1
usb_handle_00041_arg_sdp         EQU	0x000000E7 ; bytes:8
usb_handle_00041_1_descrip_00042 EQU	0x000000EF ; bytes:1
usb_handle_00041_1_descrip_00043 EQU	0x000000F0 ; bytes:1
CompTempVar941                   EQU	0x000000F3 ; bytes:6
CompTempVar946                   EQU	0x000000F1 ; bytes:10
CompTempVar948                   EQU	0x000000F1 ; bytes:5
CompTempVar950                   EQU	0x000000F1 ; bytes:6
CompTempVar952                   EQU	0x000000F1 ; bytes:5
CompTempVar954                   EQU	0x000000F1 ; bytes:5
CompTempVar956                   EQU	0x000000F1 ; bytes:7
usb_handle_0003A_1_end_point     EQU	0x000000DF ; bytes:1
usb_handle_0003A_1_pid           EQU	0x000000E0 ; bytes:1
CompTempVar851                   EQU	0x000000E1 ; bytes:5
CompTempVar854                   EQU	0x000000E1 ; bytes:1
CompTempVar855                   EQU	0x000000E1 ; bytes:5
CompTempVar859                   EQU	0x000000E1 ; bytes:1
CompTempVar860                   EQU	0x000000E2 ; bytes:1
CompTempVar862                   EQU	0x000000E3 ; bytes:1
CompTempVar865                   EQU	0x000000E4 ; bytes:8
CompTempVar867                   EQU	0x00000200 ; bytes:16
CompTempVar869                   EQU	0x00000200 ; bytes:20
CompTempVar871                   EQU	0x000000E4 ; bytes:1
CompTempVar872                   EQU	0x000000E5 ; bytes:1
CompTempVar873                   EQU	0x000000E6 ; bytes:1
CompTempVar874                   EQU	0x000000E7 ; bytes:6
CompTempVar876                   EQU	0x000000E4 ; bytes:8
CompTempVar878                   EQU	0x000000E4 ; bytes:10
CompTempVar880                   EQU	0x000000E1 ; bytes:5
CompTempVar882                   EQU	0x000000E1 ; bytes:7
CompTempVar884                   EQU	0x00000200 ; bytes:45
CompTempVar886                   EQU	0x000000E1 ; bytes:8
CompTempVar888                   EQU	0x000000E1 ; bytes:7
CompTempVar890                   EQU	0x000000E1 ; bytes:5
CompTempVar892                   EQU	0x000000E1 ; bytes:10
CompTempVar894                   EQU	0x000000E1 ; bytes:7
CompTempVar897                   EQU	0x000000E1 ; bytes:15
CompTempVar899                   EQU	0x000000E1 ; bytes:10
usb_handle_0003A_181_bd          EQU	0x000000E1 ; bytes:2
CompTempVar903                   EQU	0x000000E3 ; bytes:1
CompTempVar906                   EQU	0x000000E3 ; bytes:1
CompTempVar908                   EQU	0x000000E4 ; bytes:2
CompTempVar909                   EQU	0x000000DF ; bytes:4
CompTempVar911                   EQU	0x000000DF ; bytes:10
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
gbl_ep_out_bd_location           EQU	0x000000A6 ; bytes:4
gbl_ep_in_buffer_location        EQU	0x000000AA ; bytes:4
gbl_ep_out_buffer_location       EQU	0x000000AE ; bytes:4
gbl_ep_in_buffer_size            EQU	0x000000B2 ; bytes:4
gbl_ep_out_buffer_size           EQU	0x000000B6 ; bytes:4
CompGblVar105                    EQU	0x000000DB ; bytes:1
CompGblVar106                    EQU	0x000000DC ; bytes:1
CompGblVar107                    EQU	0x000000DD ; bytes:1
gbl_port_shadow                  EQU	0x00000059 ; bytes:5
gbl_my_device_descriptor         EQU	0x0000008C ; bytes:18
gbl_mouse_report_descriptor      EQU	0x00000005 ; bytes:50
gbl_complete_mouse_configuration EQU	0x00000037 ; bytes:34
gbl_string_00                    EQU	0x000000BA ; bytes:4
gbl_string_01                    EQU	0x00000060 ; bytes:24
gbl_string_02                    EQU	0x00000078 ; bytes:20
usb_get_de_00025_arg_descr_00026 EQU	0x000000F1 ; bytes:1
usb_get_de_00025_arg_descr_00027 EQU	0x000000F2 ; bytes:1
usb_get_de_00025_arg_rtn_d_00028 EQU	0x000000F3 ; bytes:2
usb_get_de_00025_arg_rtn_d_00029 EQU	0x000000F5 ; bytes:2
usb_get_de_00025_1_descrip_00048 EQU	0x000000F7 ; bytes:2
usb_get_de_00025_1_descrip_00049 EQU	0x000000F9 ; bytes:2
CompTempVar991                   EQU	0x00000200 ; bytes:9
CompTempVar993                   EQU	0x000000FB ; bytes:1
CompTempVar994                   EQU	0x00000200 ; bytes:9
CompTempVar996                   EQU	0x000000FB ; bytes:1
CompTempVar997                   EQU	0x00000200 ; bytes:10
CompTempVar999                   EQU	0x000000FB ; bytes:1
CompTempVar1000                  EQU	0x000000FB ; bytes:1
CompTempVar1001                  EQU	0x000000FB ; bytes:1
CompTempVar1002                  EQU	0x00000200 ; bytes:26
CompTempVar1004                  EQU	0x00000200 ; bytes:13
CompTempVar1006                  EQU	0x000000FB ; bytes:1
CompTempVar1007                  EQU	0x00000200 ; bytes:4
CompTempVar1009                  EQU	0x000000FB ; bytes:1
CompTempVar1010                  EQU	0x000000FB ; bytes:1
usb_handle_00022_arg_sdp         EQU	0x000000E4 ; bytes:8
CompTempVar1011                  EQU	0x00000200 ; bytes:16
CompTempVar1013                  EQU	0x00000200 ; bytes:11
usb_handle_00024_arg_data        EQU	0x000000E1 ; bytes:2
usb_handle_00024_arg_count       EQU	0x000000E3 ; bytes:2
delay_ms_00000_arg_del           EQU	0x000000DE ; bytes:1
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
serial_tx__0000D
; { serial_tx_isr ; function begin
	MOVLB 0x00
	MOVF gbl_tx_start, W, 1
	CPFSEQ gbl_tx_end, 1
	BRA	label3
	RETURN
label3
	INCF gbl_tx_start, W, 1
	MOVLB 0x01
	MOVWF serial_tx__0000D_1_tx_next, 1
	MOVLW 0xFE
	CPFSEQ serial_tx__0000D_1_tx_next, 1
	BRA	label4
	CLRF serial_tx__0000D_1_tx_next, 1
label4
	MOVF serial_tx__0000D_1_tx_next, W, 1
	MOVLB 0x00
	CPFSEQ gbl_tx_end, 1
	BRA	label5
	BCF gbl_pie1,4
label5
	LFSR 0x00,  gbl_tx_buffer
	MOVF FSR0L, W
	MOVF gbl_tx_start, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF gbl_txreg
	MOVLB 0x01
	MOVF serial_tx__0000D_1_tx_next, W, 1
	MOVLB 0x00
	MOVWF gbl_tx_start, 1
	RETURN
; } serial_tx_isr function end

	ORG 0x000000AE
serial_put_00010
; { serial_putc ; function begin
	MOVF gbl_tx_start, W, 1
	CPFSEQ gbl_tx_end, 1
	BRA	label6
	BTFSS gbl_pir1,4
	BRA	label6
	MOVF serial_put_00010_arg_c, W, 1
	MOVWF gbl_txreg
	RETURN
label6
	INCF gbl_tx_end, W, 1
	MOVWF serial_put_00010_1_tx_next, 1
	MOVLW 0xFE
	CPFSEQ serial_put_00010_1_tx_next, 1
	BRA	label7
	CLRF serial_put_00010_1_tx_next, 1
label7
	MOVF gbl_tx_start, W, 1
	CPFSEQ serial_put_00010_1_tx_next, 1
	BRA	label8
	BTFSC gbl_intcon,7
	BRA	label7
	BTFSC gbl_pir1,4
	CALL serial_tx__0000D
	BRA	label7
label8
	MOVLB 0x01
	BCF serial_put_00010_1_my_store_gie,0, 1
	BTFSC gbl_intcon,7
	BSF serial_put_00010_1_my_store_gie,0, 1
label9
	BCF gbl_intcon,7
	BTFSC gbl_intcon,7
	BRA	label9
	LFSR 0x00,  gbl_tx_buffer
	MOVF FSR0L, W
	MOVLB 0x00
	MOVF gbl_tx_end, W, 1
	ADDWF FSR0L, F
	MOVF serial_put_00010_arg_c, W, 1
	MOVWF INDF0
	MOVF serial_put_00010_1_tx_next, W, 1
	MOVWF gbl_tx_end, 1
	BSF gbl_pie1,4
	MOVLB 0x01
	BTFSC serial_put_00010_1_my_store_gie,0, 1
	BSF gbl_intcon,7
	BTFSS serial_put_00010_1_my_store_gie,0, 1
	BCF gbl_intcon,7
	RETURN
; } serial_putc function end

	ORG 0x0000010C
serial_pri_00012
; { serial_print_str ; function begin
	CLRF serial_pri_00012_1_count, 1
label10
	MOVF serial_pri_00012_arg_str+D'1', W, 1
	MOVWF FSR0H
	MOVF serial_pri_00012_arg_str, W, 1
	ADDWF serial_pri_00012_1_count, W, 1
	MOVWF FSR0L
	MOVF INDF0, F
	BTFSC STATUS,Z
	RETURN
	MOVF serial_pri_00012_arg_str+D'1', W, 1
	MOVWF FSR0H
	MOVF serial_pri_00012_arg_str, W, 1
	ADDWF serial_pri_00012_1_count, W, 1
	MOVWF FSR0L
	MOVF INDF0, W
	MOVWF serial_put_00010_arg_c, 1
	CALL serial_put_00010
	MOVLB 0x00
	INCF serial_pri_00012_1_count, F, 1
	BRA	label10
; } serial_print_str function end

	ORG 0x00000136
__rem_16_1_00006
; { __rem_16_16 ; function begin
	MOVLB 0x02
	CLRF CompTempVarRet350, 1
	CLRF CompTempVarRet350+D'1', 1
	CLRF __rem_16_1_00006_1_c, 1
	CLRF __rem_16_1_00006_1_c+D'1', 1
	CLRF __rem_16_1_00006_1_i, 1
label11
	MOVLW 0x10
	ANDWF __rem_16_1_00006_1_i, W, 1
	MOVWF CompTempVar352, 1
	TSTFSZ CompTempVar352, 1
	RETURN
	BCF STATUS,C
	RLCF __rem_16_1_00006_1_c, F, 1
	RLCF __rem_16_1_00006_1_c+D'1', F, 1
	MOVLB 0x00
	RLCF __rem_16_1_00006_arg_a, F, 1
	RLCF __rem_16_1_00006_arg_a+D'1', F, 1
	MOVLB 0x02
	RLCF CompTempVarRet350, F, 1
	RLCF CompTempVarRet350+D'1', F, 1
	MOVLB 0x01
	MOVF __rem_16_1_00006_arg_b, W, 1
	MOVLB 0x02
	SUBWF CompTempVarRet350, W, 1
	MOVLB 0x01
	MOVF __rem_16_1_00006_arg_b+D'1', W, 1
	MOVLB 0x02
	CPFSEQ CompTempVarRet350+D'1', 1
	SUBWF CompTempVarRet350+D'1', W, 1
	BNC	label12
	MOVLB 0x01
	MOVF __rem_16_1_00006_arg_b, W, 1
	MOVLB 0x02
	SUBWF CompTempVarRet350, F, 1
	MOVLB 0x01
	MOVF __rem_16_1_00006_arg_b+D'1', W, 1
	MOVLB 0x02
	SUBWFB CompTempVarRet350+D'1', F, 1
	BSF __rem_16_1_00006_1_c,0, 1
label12
	INCF __rem_16_1_00006_1_i, F, 1
	BRA	label11
; } __rem_16_16 function end

	ORG 0x00000188
__div_16_1_00005
; { __div_16_16 ; function begin
	MOVLB 0x02
	CLRF __div_16_1_00005_1_r, 1
	CLRF __div_16_1_00005_1_r+D'1', 1
	CLRF CompTempVarRet347, 1
	CLRF CompTempVarRet347+D'1', 1
	CLRF __div_16_1_00005_1_i, 1
label13
	MOVLW 0x10
	ANDWF __div_16_1_00005_1_i, W, 1
	MOVWF CompTempVar349, 1
	TSTFSZ CompTempVar349, 1
	RETURN
	BCF STATUS,C
	RLCF CompTempVarRet347, F, 1
	RLCF CompTempVarRet347+D'1', F, 1
	MOVLB 0x00
	RLCF __div_16_1_00005_arg_a, F, 1
	RLCF __div_16_1_00005_arg_a+D'1', F, 1
	MOVLB 0x02
	RLCF __div_16_1_00005_1_r, F, 1
	RLCF __div_16_1_00005_1_r+D'1', F, 1
	MOVLB 0x01
	MOVF __div_16_1_00005_arg_b, W, 1
	MOVLB 0x02
	SUBWF __div_16_1_00005_1_r, W, 1
	MOVLB 0x01
	MOVF __div_16_1_00005_arg_b+D'1', W, 1
	MOVLB 0x02
	CPFSEQ __div_16_1_00005_1_r+D'1', 1
	SUBWF __div_16_1_00005_1_r+D'1', W, 1
	BNC	label14
	MOVLB 0x01
	MOVF __div_16_1_00005_arg_b, W, 1
	MOVLB 0x02
	SUBWF __div_16_1_00005_1_r, F, 1
	MOVLB 0x01
	MOVF __div_16_1_00005_arg_b+D'1', W, 1
	MOVLB 0x02
	SUBWFB __div_16_1_00005_1_r+D'1', F, 1
	BSF CompTempVarRet347,0, 1
label14
	INCF __div_16_1_00005_1_i, F, 1
	BRA	label13
; } __div_16_16 function end

	ORG 0x000001DA
usb_send_d_0003D
; { usb_send_data_chunk ; function begin
	MOVLB 0x04
	BTFSS gbl_bd0in,7, 1
	BRA	label15
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar930, 1
	MOVWF CompTempVar930+D'7', 1
	MOVWF CompTempVar930+D'11', 1
	MOVWF CompTempVar930+D'15', 1
	MOVLW 0x21
	MOVWF CompTempVar930+D'1', 1
	MOVWF CompTempVar930+D'14', 1
	MOVLW 0x27
	MOVWF CompTempVar930+D'5', 1
	MOVLW 0x64
	MOVWF CompTempVar930+D'2', 1
	MOVLW 0x69
	MOVWF CompTempVar930+D'12', 1
	MOVLW 0x6E
	MOVWF CompTempVar930+D'4', 1
	MOVWF CompTempVar930+D'10', 1
	MOVLW 0x6F
	MOVWF CompTempVar930+D'3', 1
	MOVWF CompTempVar930+D'8', 1
	MOVLW 0x74
	MOVWF CompTempVar930+D'6', 1
	MOVWF CompTempVar930+D'13', 1
	MOVLW 0x77
	MOVWF CompTempVar930+D'9', 1
	CLRF CompTempVar930+D'16', 1
	MOVLW HIGH(CompTempVar930+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar930+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	RETURN
label15
	MOVLB 0x00
	CLRF usb_send_d_0003D_1_count, 1
label16
	MOVF gbl_delivery_buffer_size, W, 1
	CPFSLT usb_send_d_0003D_1_count, 1
	BRA	label19
	MOVF gbl_delivery_bytes_to_send+D'1', W, 1
	SUBWF gbl_delivery_bytes_sent+D'1', W, 1
	BNZ	label17
	MOVF gbl_delivery_bytes_to_send, W, 1
	SUBWF gbl_delivery_bytes_sent, W, 1
label17
	BC	label19
	MOVF gbl_delivery_bytes_max_send+D'1', W, 1
	SUBWF gbl_delivery_bytes_sent+D'1', W, 1
	BNZ	label18
	MOVF gbl_delivery_bytes_max_send, W, 1
	SUBWF gbl_delivery_bytes_sent, W, 1
label18
	BC	label19
	MOVF gbl_delivery_ptr+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_delivery_ptr, W, 1
	MOVWF FSR0L
	MOVF INDF0, W
	MOVWF CompTempVar933, 1
	MOVF gbl_delivery_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_delivery_buffer, W, 1
	ADDWF usb_send_d_0003D_1_count, W, 1
	MOVWF FSR0L
	MOVF CompTempVar933, W, 1
	MOVWF INDF0
	INFSNZ gbl_delivery_ptr, F, 1
	INCF gbl_delivery_ptr+D'1', F, 1
	INFSNZ gbl_delivery_bytes_sent, F, 1
	INCF gbl_delivery_bytes_sent+D'1', F, 1
	INCF usb_send_d_0003D_1_count, F, 1
	BRA	label16
label19
	MOVF gbl_delivery_buffer_size, W, 1
	CPFSLT usb_send_d_0003D_1_count, 1
	BRA	label22
	MOVF gbl_delivery_bytes_max_send, W, 1
	CPFSEQ gbl_delivery_bytes_sent, 1
	BRA	label20
	MOVF gbl_delivery_bytes_max_send+D'1', W, 1
	CPFSEQ gbl_delivery_bytes_sent+D'1', 1
	BRA	label20
	BRA	label21
label20
	MOVF gbl_delivery_bytes_to_send, W, 1
	CPFSEQ gbl_delivery_bytes_sent, 1
	BRA	label22
	MOVF gbl_delivery_bytes_to_send+D'1', W, 1
	CPFSEQ gbl_delivery_bytes_sent+D'1', 1
	BRA	label22
label21
	MOVLW 0x05
	MOVWF gbl_control_mode, 1
label22
	MOVF usb_send_d_0003D_1_count, W, 1
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

	ORG 0x000002B4
serial_pri_00018
; { serial_print_spc ; function begin
	MOVLW 0x20
	MOVLB 0x00
	MOVWF serial_put_00010_arg_c, 1
	CALL serial_put_00010
	RETURN
; } serial_print_spc function end

	ORG 0x000002C0
serial_pri_00014
; { serial_print_int ; function begin
	MOVLW 0x05
	MOVWF serial_pri_00014_1_count, 1
	MOVLB 0x02
	CLRF serial_pri_00014_1_buffer+D'5', 1
label23
	MOVLB 0x00
	DECF serial_pri_00014_1_count, F, 1
	MOVF serial_pri_00014_arg_i, W, 1
	MOVWF __rem_16_1_00006_arg_a, 1
	MOVF serial_pri_00014_arg_i+D'1', W, 1
	MOVWF __rem_16_1_00006_arg_a+D'1', 1
	MOVLW 0x0A
	MOVLB 0x01
	MOVWF __rem_16_1_00006_arg_b, 1
	CLRF __rem_16_1_00006_arg_b+D'1', 1
	CALL __rem_16_1_00006
	MOVF CompTempVarRet350, W, 1
	MOVWF CompTempVar817, 1
	MOVF CompTempVarRet350+D'1', W, 1
	MOVWF CompTempVar818, 1
	MOVF CompTempVar817, W, 1
	ADDLW 0x30
	MOVWF CompTempVar819, 1
	LFSR 0x00,  serial_pri_00014_1_buffer
	MOVF FSR0L, W
	MOVLB 0x00
	MOVF serial_pri_00014_1_count, W, 1
	ADDWF FSR0L, F
	MOVLB 0x02
	MOVF CompTempVar819, W, 1
	MOVWF INDF0
	MOVLB 0x00
	MOVF serial_pri_00014_arg_i, W, 1
	MOVWF __div_16_1_00005_arg_a, 1
	MOVF serial_pri_00014_arg_i+D'1', W, 1
	MOVWF __div_16_1_00005_arg_a+D'1', 1
	MOVLW 0x0A
	MOVLB 0x01
	MOVWF __div_16_1_00005_arg_b, 1
	CLRF __div_16_1_00005_arg_b+D'1', 1
	CALL __div_16_1_00005
	MOVF CompTempVarRet347, W, 1
	MOVLB 0x00
	MOVWF serial_pri_00014_arg_i, 1
	MOVLB 0x02
	MOVF CompTempVarRet347+D'1', W, 1
	MOVLB 0x00
	MOVWF serial_pri_00014_arg_i+D'1', 1
	MOVLW 0x00
	CPFSGT serial_pri_00014_arg_i, 1
	TSTFSZ serial_pri_00014_arg_i+D'1', 1
	BRA	label23
label24
	LFSR 0x00,  serial_pri_00014_1_buffer
	MOVF FSR0L, W
	MOVF serial_pri_00014_1_count, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, F
	BTFSC STATUS,Z
	RETURN
	LFSR 0x00,  serial_pri_00014_1_buffer
	MOVF FSR0L, W
	MOVF serial_pri_00014_1_count, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF serial_put_00010_arg_c, 1
	CALL serial_put_00010
	MOVLB 0x00
	INCF serial_pri_00014_1_count, F, 1
	BRA	label24
; } serial_print_int function end

	ORG 0x00000354
usb_stall__00020
; { usb_stall_ep0 ; function begin
	MOVLB 0x04
	BSF gbl_bd0in,2, 1
	BSF gbl_bd0in,7, 1
	BSF gbl_bd0out,2, 1
	BSF gbl_bd0out,7, 1
	RETURN
; } usb_stall_ep0 function end

	ORG 0x00000360
usb_send_o_0003F
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
	MOVF usb_send_o_0003F_arg_data, W, 1
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
	CALL usb_send_d_0003D
	RETURN
; } usb_send_one_byte function end

	ORG 0x00000398
usb_send_e_0001F
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
	CALL usb_send_d_0003D
	RETURN
; } usb_send_empty_data_pkt function end

	ORG 0x000003C8
usb_get_de_00025
; { usb_get_descriptor_callback ; function begin
	CLRF usb_get_de_00025_1_descrip_00048, 1
	CLRF usb_get_de_00025_1_descrip_00048+D'1', 1
	DECF usb_get_de_00025_arg_descr_00026, W, 1
	BZ	label28
	MOVLW 0x02
	CPFSEQ usb_get_de_00025_arg_descr_00026, 1
	BRA	label25
	BRA	label29
label25
	MOVLW 0x03
	CPFSEQ usb_get_de_00025_arg_descr_00026, 1
	BRA	label26
	BRA	label30
label26
	MOVLW 0x06
	CPFSEQ usb_get_de_00025_arg_descr_00026, 1
	BRA	label27
	BRA	label34
label27
	MOVLW 0x22
	CPFSEQ usb_get_de_00025_arg_descr_00026, 1
	BRA	label36
	BRA	label35
label28
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar991, 1
	MOVWF CompTempVar991+D'7', 1
	MOVLW 0x44
	MOVWF CompTempVar991+D'1', 1
	MOVLW 0x63
	MOVWF CompTempVar991+D'5', 1
	MOVLW 0x65
	MOVWF CompTempVar991+D'2', 1
	MOVWF CompTempVar991+D'6', 1
	MOVLW 0x69
	MOVWF CompTempVar991+D'4', 1
	MOVLW 0x76
	MOVWF CompTempVar991+D'3', 1
	CLRF CompTempVar991+D'8', 1
	MOVLW HIGH(CompTempVar991+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar991+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW HIGH(gbl_my_device_descriptor+D'0')
	MOVWF CompTempVar993, 1
	MOVLW LOW(gbl_my_device_descriptor+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar993, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	MOVLW 0x12
	MOVWF usb_get_de_00025_1_descrip_00049, 1
	CLRF usb_get_de_00025_1_descrip_00049+D'1', 1
	BRA	label37
label29
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar994, 1
	MOVWF CompTempVar994+D'7', 1
	MOVLW 0x43
	MOVWF CompTempVar994+D'1', 1
	MOVLW 0x66
	MOVWF CompTempVar994+D'4', 1
	MOVLW 0x67
	MOVWF CompTempVar994+D'6', 1
	MOVLW 0x69
	MOVWF CompTempVar994+D'5', 1
	MOVLW 0x6E
	MOVWF CompTempVar994+D'3', 1
	MOVLW 0x6F
	MOVWF CompTempVar994+D'2', 1
	CLRF CompTempVar994+D'8', 1
	MOVLW HIGH(CompTempVar994+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar994+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW HIGH(gbl_complete_mouse_configuration+D'0')
	MOVWF CompTempVar996, 1
	MOVLW LOW(gbl_complete_mouse_configuration+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar996, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	MOVLW 0x22
	MOVWF usb_get_de_00025_1_descrip_00049, 1
	CLRF usb_get_de_00025_1_descrip_00049+D'1', 1
	BRA	label37
label30
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar997, 1
	MOVWF CompTempVar997+D'8', 1
	MOVLW 0x3A
	MOVWF CompTempVar997+D'7', 1
	MOVLW 0x53
	MOVWF CompTempVar997+D'1', 1
	MOVLW 0x67
	MOVWF CompTempVar997+D'6', 1
	MOVLW 0x69
	MOVWF CompTempVar997+D'4', 1
	MOVLW 0x6E
	MOVWF CompTempVar997+D'5', 1
	MOVLW 0x72
	MOVWF CompTempVar997+D'3', 1
	MOVLW 0x74
	MOVWF CompTempVar997+D'2', 1
	CLRF CompTempVar997+D'9', 1
	MOVLW HIGH(CompTempVar997+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar997+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF usb_get_de_00025_arg_descr_00027, W, 1
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
	MOVF usb_get_de_00025_arg_descr_00027, F, 1
	BZ	label31
	DECF usb_get_de_00025_arg_descr_00027, W, 1
	BZ	label32
	MOVLW 0x02
	CPFSEQ usb_get_de_00025_arg_descr_00027, 1
	BRA	label37
	BRA	label33
label31
	MOVLW 0x04
	MOVWF usb_get_de_00025_1_descrip_00049, 1
	CLRF usb_get_de_00025_1_descrip_00049+D'1', 1
	MOVLW HIGH(gbl_string_00+D'0')
	MOVWF CompTempVar999, 1
	MOVLW LOW(gbl_string_00+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar999, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	BRA	label37
label32
	MOVLW 0x18
	MOVWF usb_get_de_00025_1_descrip_00049, 1
	CLRF usb_get_de_00025_1_descrip_00049+D'1', 1
	MOVLW HIGH(gbl_string_01+D'0')
	MOVWF CompTempVar1000, 1
	MOVLW LOW(gbl_string_01+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar1000, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	BRA	label37
label33
	MOVLW 0x14
	MOVWF usb_get_de_00025_1_descrip_00049, 1
	CLRF usb_get_de_00025_1_descrip_00049+D'1', 1
	MOVLW HIGH(gbl_string_02+D'0')
	MOVWF CompTempVar1001, 1
	MOVLW LOW(gbl_string_02+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar1001, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	BRA	label37
label34
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar1002, 1
	MOVWF CompTempVar1002+D'7', 1
	MOVWF CompTempVar1002+D'12', 1
	MOVWF CompTempVar1002+D'24', 1
	MOVLW 0x28
	MOVWF CompTempVar1002+D'13', 1
	MOVLW 0x29
	MOVWF CompTempVar1002+D'23', 1
	MOVLW 0x44
	MOVWF CompTempVar1002+D'1', 1
	MOVLW 0x51
	MOVWF CompTempVar1002+D'8', 1
	MOVLW 0x61
	MOVWF CompTempVar1002+D'10', 1
	MOVWF CompTempVar1002+D'17', 1
	MOVLW 0x63
	MOVWF CompTempVar1002+D'5', 1
	MOVLW 0x64
	MOVWF CompTempVar1002+D'19', 1
	MOVWF CompTempVar1002+D'22', 1
	MOVLW 0x65
	MOVWF CompTempVar1002+D'2', 1
	MOVWF CompTempVar1002+D'6', 1
	MOVWF CompTempVar1002+D'21', 1
	MOVLW 0x68
	MOVWF CompTempVar1002+D'16', 1
	MOVLW 0x69
	MOVWF CompTempVar1002+D'4', 1
	MOVLW 0x6C
	MOVWF CompTempVar1002+D'11', 1
	MOVWF CompTempVar1002+D'20', 1
	MOVLW 0x6E
	MOVWF CompTempVar1002+D'15', 1
	MOVWF CompTempVar1002+D'18', 1
	MOVLW 0x75
	MOVWF CompTempVar1002+D'9', 1
	MOVWF CompTempVar1002+D'14', 1
	MOVLW 0x76
	MOVWF CompTempVar1002+D'3', 1
	CLRF CompTempVar1002+D'25', 1
	MOVLW HIGH(CompTempVar1002+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1002+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	BRA	label37
label35
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar1004, 1
	MOVWF CompTempVar1004+D'4', 1
	MOVWF CompTempVar1004+D'11', 1
	MOVLW 0x44
	MOVWF CompTempVar1004+D'3', 1
	MOVLW 0x48
	MOVWF CompTempVar1004+D'1', 1
	MOVLW 0x49
	MOVWF CompTempVar1004+D'2', 1
	MOVLW 0x52
	MOVWF CompTempVar1004+D'5', 1
	MOVLW 0x65
	MOVWF CompTempVar1004+D'6', 1
	MOVLW 0x6F
	MOVWF CompTempVar1004+D'8', 1
	MOVLW 0x70
	MOVWF CompTempVar1004+D'7', 1
	MOVLW 0x72
	MOVWF CompTempVar1004+D'9', 1
	MOVLW 0x74
	MOVWF CompTempVar1004+D'10', 1
	CLRF CompTempVar1004+D'12', 1
	MOVLW HIGH(CompTempVar1004+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1004+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW 0x32
	MOVWF usb_get_de_00025_1_descrip_00049, 1
	CLRF usb_get_de_00025_1_descrip_00049+D'1', 1
	MOVLW HIGH(gbl_mouse_report_descriptor+D'0')
	MOVWF CompTempVar1006, 1
	MOVLW LOW(gbl_mouse_report_descriptor+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar1006, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	BRA	label37
label36
	MOVLW 0x3F
	MOVLB 0x02
	MOVWF CompTempVar1007, 1
	MOVWF CompTempVar1007+D'1', 1
	MOVLW 0x20
	MOVWF CompTempVar1007+D'2', 1
	CLRF CompTempVar1007+D'3', 1
	MOVLW HIGH(CompTempVar1007+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1007+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF usb_get_de_00025_arg_descr_00026, W, 1
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
	CALL serial_pri_00018
label37
	MOVLB 0x00
	MOVF usb_get_de_00025_arg_rtn_d_00028+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_get_de_00025_arg_rtn_d_00028, W, 1
	MOVWF FSR0L
	INCF FSR0L, F
	MOVF usb_get_de_00025_1_descrip_00048, W, 1
	MOVWF CompTempVar1009, 1
	MOVF usb_get_de_00025_1_descrip_00048+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar1009, W, 1
	MOVWF INDF0
	MOVF usb_get_de_00025_arg_rtn_d_00029+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_get_de_00025_arg_rtn_d_00029, W, 1
	MOVWF FSR0L
	INCF FSR0L, F
	MOVF usb_get_de_00025_1_descrip_00049, W, 1
	MOVWF CompTempVar1010, 1
	MOVF usb_get_de_00025_1_descrip_00049+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar1010, W, 1
	MOVWF INDF0
	RETURN
; } usb_get_descriptor_callback function end

	ORG 0x00000614
usb_config_0003E
; { usb_configure_endpoints ; function begin
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar936+D'6', 1
	MOVWF CompTempVar936+D'10', 1
	MOVLW 0x43
	MOVWF CompTempVar936, 1
	MOVLW 0x65
	MOVWF CompTempVar936+D'7', 1
	MOVLW 0x66
	MOVWF CompTempVar936+D'3', 1
	MOVLW 0x67
	MOVWF CompTempVar936+D'5', 1
	MOVLW 0x69
	MOVWF CompTempVar936+D'4', 1
	MOVLW 0x6E
	MOVWF CompTempVar936+D'2', 1
	MOVLW 0x6F
	MOVWF CompTempVar936+D'1', 1
	MOVLW 0x70
	MOVWF CompTempVar936+D'8', 1
	MOVLW 0x73
	MOVWF CompTempVar936+D'9', 1
	CLRF CompTempVar936+D'11', 1
	MOVLW HIGH(CompTempVar936+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar936+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
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

	ORG 0x0000066C
serial_pri_00015
; { serial_print_int_hex ; function begin
	SWAPF serial_pri_00015_arg_i, W, 1
	ANDLW 0x0F
	MOVWF serial_pri_00015_5_x, 1
	MOVLW 0x0A
	CPFSLT serial_pri_00015_5_x, 1
	BRA	label38
	MOVF serial_pri_00015_5_x, W, 1
	ADDLW 0x30
	MOVWF serial_put_00010_arg_c, 1
	BRA	label39
label38
	MOVF serial_pri_00015_5_x, W, 1
	ADDLW 0x37
	MOVWF serial_put_00010_arg_c, 1
label39
	CALL serial_put_00010
	MOVLW 0x0F
	MOVLB 0x00
	ANDWF serial_pri_00015_arg_i, W, 1
	MOVWF serial_pri_00015_15_x, 1
	MOVLW 0x0A
	CPFSLT serial_pri_00015_15_x, 1
	BRA	label40
	MOVF serial_pri_00015_15_x, W, 1
	ADDLW 0x30
	MOVWF serial_put_00010_arg_c, 1
	BRA	label41
label40
	MOVF serial_pri_00015_15_x, W, 1
	ADDLW 0x37
	MOVWF serial_put_00010_arg_c, 1
label41
	CALL serial_put_00010
	RETURN
; } serial_print_int_hex function end

	ORG 0x000006AC
usb_prime__00040
; { usb_prime_ep0_out ; function begin
	MOVLW 0x50
	MOVLB 0x00
	MOVWF serial_put_00010_arg_c, 1
	CALL serial_put_00010
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

	ORG 0x000006D4
usb_handle_00041
; { usb_handle_standard_request ; function begin
	MOVLW 0x06
	CPFSEQ usb_handle_00041_arg_sdp+D'1', 1
	BRA	label42
	BRA	label46
label42
	MOVLW 0x05
	CPFSEQ usb_handle_00041_arg_sdp+D'1', 1
	BRA	label43
	BRA	label49
label43
	MOVLW 0x09
	CPFSEQ usb_handle_00041_arg_sdp+D'1', 1
	BRA	label44
	BRA	label50
label44
	MOVLW 0x0A
	CPFSEQ usb_handle_00041_arg_sdp+D'1', 1
	BRA	label45
	BRA	label51
label45
	MOVF usb_handle_00041_arg_sdp+D'1', F, 1
	BTFSC STATUS,Z
	BRA	label52
	BRA	label53
label46
	MOVLW 0x20
	MOVWF CompTempVar941, 1
	MOVWF CompTempVar941+D'4', 1
	MOVLW 0x3A
	MOVWF CompTempVar941+D'3', 1
	MOVLW 0x44
	MOVWF CompTempVar941+D'2', 1
	MOVLW 0x47
	MOVWF CompTempVar941+D'1', 1
	CLRF CompTempVar941+D'5', 1
	MOVLW HIGH(CompTempVar941+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar941+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF usb_handle_00041_arg_sdp+D'3', W, 1
	MOVWF usb_handle_00041_1_descrip_00042, 1
	MOVF usb_handle_00041_arg_sdp+D'2', W, 1
	MOVWF usb_handle_00041_1_descrip_00043, 1
	MOVF usb_handle_00041_1_descrip_00042, W, 1
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
	MOVF usb_handle_00041_1_descrip_00042, W, 1
	MOVWF usb_get_de_00025_arg_descr_00026, 1
	MOVF usb_handle_00041_1_descrip_00043, W, 1
	MOVWF usb_get_de_00025_arg_descr_00027, 1
	MOVLW HIGH(gbl_delivery_ptr+D'0')
	MOVWF usb_get_de_00025_arg_rtn_d_00028+D'1', 1
	MOVLW LOW(gbl_delivery_ptr+D'0')
	MOVWF usb_get_de_00025_arg_rtn_d_00028, 1
	MOVLW HIGH(gbl_delivery_bytes_to_send+D'0')
	MOVWF usb_get_de_00025_arg_rtn_d_00029+D'1', 1
	MOVLW LOW(gbl_delivery_bytes_to_send+D'0')
	MOVWF usb_get_de_00025_arg_rtn_d_00029, 1
	CALL usb_get_de_00025
	MOVF gbl_delivery_ptr, F, 1
	BNZ	label47
	MOVF gbl_delivery_ptr+D'1', F, 1
	BZ	label48
label47
	MOVLW 0x03
	MOVWF gbl_control_mode, 1
	MOVF usb_handle_00041_arg_sdp+D'6', W, 1
	MOVWF gbl_delivery_bytes_max_send, 1
	MOVF usb_handle_00041_arg_sdp+D'7', W, 1
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
	CALL usb_send_d_0003D
	RETURN
label48
	MOVLW 0x20
	MOVWF CompTempVar946, 1
	MOVWF CompTempVar946+D'8', 1
	MOVLW 0x3C
	MOVWF CompTempVar946+D'1', 1
	MOVLW 0x3E
	MOVWF CompTempVar946+D'7', 1
	MOVLW 0x61
	MOVWF CompTempVar946+D'4', 1
	MOVLW 0x6C
	MOVWF CompTempVar946+D'5', 1
	MOVWF CompTempVar946+D'6', 1
	MOVLW 0x73
	MOVWF CompTempVar946+D'2', 1
	MOVLW 0x74
	MOVWF CompTempVar946+D'3', 1
	CLRF CompTempVar946+D'9', 1
	MOVLW HIGH(CompTempVar946+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar946+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	CALL usb_stall__00020
	RETURN
label49
	MOVF usb_handle_00041_arg_sdp+D'2', W, 1
	MOVWF gbl_usb_address, 1
	MOVLW 0x20
	MOVWF CompTempVar948, 1
	MOVLW 0x53
	MOVWF CompTempVar948+D'1', 1
	MOVLW 0x41
	MOVWF CompTempVar948+D'2', 1
	MOVLW 0x3A
	MOVWF CompTempVar948+D'3', 1
	CLRF CompTempVar948+D'4', 1
	MOVLW HIGH(CompTempVar948+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar948+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF gbl_usb_address, W, 1
	MOVWF serial_pri_00015_arg_i, 1
	CALL serial_pri_00015
	MOVLW 0x01
	MOVLB 0x00
	MOVWF gbl_usb_status, 1
	CALL usb_send_e_0001F
	MOVLW 0x06
	MOVLB 0x00
	MOVWF gbl_control_mode, 1
	RETURN
label50
	MOVLW 0x20
	MOVWF CompTempVar950, 1
	MOVWF CompTempVar950+D'4', 1
	MOVLW 0x3A
	MOVWF CompTempVar950+D'3', 1
	MOVLW 0x43
	MOVWF CompTempVar950+D'2', 1
	MOVLW 0x53
	MOVWF CompTempVar950+D'1', 1
	CLRF CompTempVar950+D'5', 1
	MOVLW HIGH(CompTempVar950+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar950+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW 0x06
	MOVWF gbl_control_mode, 1
	CALL usb_send_e_0001F
	MOVLW 0x03
	MOVLB 0x00
	MOVWF gbl_usb_state, 1
	CALL usb_config_0003E
	RETURN
label51
	MOVLW 0x20
	MOVWF CompTempVar952, 1
	MOVWF CompTempVar952+D'3', 1
	MOVLW 0x47
	MOVWF CompTempVar952+D'1', 1
	MOVLW 0x49
	MOVWF CompTempVar952+D'2', 1
	CLRF CompTempVar952+D'4', 1
	MOVLW HIGH(CompTempVar952+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar952+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW 0x03
	MOVWF gbl_control_mode, 1
	MOVLW 0x01
	MOVWF usb_send_o_0003F_arg_data, 1
	CALL usb_send_o_0003F
label52
	MOVLW 0x20
	MOVLB 0x00
	MOVWF CompTempVar954, 1
	MOVWF CompTempVar954+D'3', 1
	MOVLW 0x47
	MOVWF CompTempVar954+D'1', 1
	MOVLW 0x53
	MOVWF CompTempVar954+D'2', 1
	CLRF CompTempVar954+D'4', 1
	MOVLW HIGH(CompTempVar954+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar954+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	CLRF usb_send_o_0003F_arg_data, 1
	CALL usb_send_o_0003F
	RETURN
label53
	MOVLW 0x20
	MOVWF CompTempVar956, 1
	MOVWF CompTempVar956+D'5', 1
	MOVLW 0x3F
	MOVWF CompTempVar956+D'1', 1
	MOVWF CompTempVar956+D'2', 1
	MOVLW 0x52
	MOVWF CompTempVar956+D'4', 1
	MOVLW 0x53
	MOVWF CompTempVar956+D'3', 1
	CLRF CompTempVar956+D'6', 1
	MOVLW HIGH(CompTempVar956+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar956+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF usb_handle_00041_arg_sdp+D'1', W, 1
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
	RETURN
; } usb_handle_standard_request function end

	ORG 0x000008A0
usb_handle_00024
; { usb_handle_class_ctrl_write_callback ; function begin
	RETURN
; } usb_handle_class_ctrl_write_callback function end

	ORG 0x000008A2
usb_handle_00023
; { usb_handle_class_ctrl_read_callback ; function begin
	RETURN
; } usb_handle_class_ctrl_read_callback function end

	ORG 0x000008A4
usb_handle_00022
; { usb_handle_class_request_callback ; function begin
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar1011+D'5', 1
	MOVWF CompTempVar1011+D'14', 1
	MOVLW 0x3A
	MOVWF CompTempVar1011+D'13', 1
	MOVLW 0x43
	MOVWF CompTempVar1011, 1
	MOVLW 0x61
	MOVWF CompTempVar1011+D'2', 1
	MOVLW 0x65
	MOVWF CompTempVar1011+D'7', 1
	MOVWF CompTempVar1011+D'10', 1
	MOVLW 0x6C
	MOVWF CompTempVar1011+D'1', 1
	MOVLW 0x71
	MOVWF CompTempVar1011+D'8', 1
	MOVLW 0x72
	MOVWF CompTempVar1011+D'6', 1
	MOVLW 0x73
	MOVWF CompTempVar1011+D'3', 1
	MOVWF CompTempVar1011+D'4', 1
	MOVWF CompTempVar1011+D'11', 1
	MOVLW 0x74
	MOVWF CompTempVar1011+D'12', 1
	MOVLW 0x75
	MOVWF CompTempVar1011+D'9', 1
	CLRF CompTempVar1011+D'15', 1
	MOVLW HIGH(CompTempVar1011+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1011+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF usb_handle_00022_arg_sdp+D'1', W, 1
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
	DECF usb_handle_00022_arg_sdp+D'1', W, 1
	BTFSC STATUS,Z
	RETURN
	MOVLW 0x02
	CPFSEQ usb_handle_00022_arg_sdp+D'1', 1
	BRA	label54
	RETURN
label54
	MOVLW 0x03
	CPFSEQ usb_handle_00022_arg_sdp+D'1', 1
	BRA	label55
	RETURN
label55
	MOVLW 0x09
	CPFSEQ usb_handle_00022_arg_sdp+D'1', 1
	BRA	label56
	RETURN
label56
	MOVLW 0x0A
	CPFSEQ usb_handle_00022_arg_sdp+D'1', 1
	BRA	label57
	BRA	label58
label57
	MOVLW 0x0B
	CPFSEQ usb_handle_00022_arg_sdp+D'1', 1
	RETURN
	RETURN
label58
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar1013, 1
	MOVWF CompTempVar1013+D'9', 1
	MOVLW 0x53
	MOVWF CompTempVar1013+D'1', 1
	MOVLW 0x5F
	MOVWF CompTempVar1013+D'4', 1
	MOVLW 0x64
	MOVWF CompTempVar1013+D'6', 1
	MOVLW 0x65
	MOVWF CompTempVar1013+D'2', 1
	MOVWF CompTempVar1013+D'8', 1
	MOVLW 0x69
	MOVWF CompTempVar1013+D'5', 1
	MOVLW 0x6C
	MOVWF CompTempVar1013+D'7', 1
	MOVLW 0x74
	MOVWF CompTempVar1013+D'3', 1
	CLRF CompTempVar1013+D'10', 1
	MOVLW HIGH(CompTempVar1013+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1013+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	CALL usb_stall__00020
	RETURN
; } usb_handle_class_request_callback function end

	ORG 0x0000095E
memcpy8_00000
; { memcpy8 ; function begin
	MOVF memcpy8_00000_arg_dst, W, 1
	MOVWF memcpy8_00000_1_dst2, 1
	MOVF memcpy8_00000_arg_dst+D'1', W, 1
	MOVWF memcpy8_00000_1_dst2+D'1', 1
	MOVF memcpy8_00000_arg_src, W, 1
	MOVWF memcpy8_00000_1_src2, 1
	MOVF memcpy8_00000_arg_src+D'1', W, 1
	MOVWF memcpy8_00000_1_src2+D'1', 1
label59
	MOVLW 0x00
	CPFSGT memcpy8_00000_arg_len, 1
	BRA	label60
	MOVF memcpy8_00000_1_src2+D'1', W, 1
	MOVWF FSR0H
	MOVF memcpy8_00000_1_src2, W, 1
	MOVWF FSR0L
	INFSNZ memcpy8_00000_1_src2, F, 1
	INCF memcpy8_00000_1_src2+D'1', F, 1
	MOVF INDF0, W
	MOVWF CompTempVar568, 1
	MOVF memcpy8_00000_1_dst2+D'1', W, 1
	MOVWF FSR0H
	MOVF memcpy8_00000_1_dst2, W, 1
	MOVWF FSR0L
	INFSNZ memcpy8_00000_1_dst2, F, 1
	INCF memcpy8_00000_1_dst2+D'1', F, 1
	MOVF CompTempVar568, W, 1
	MOVWF INDF0
	DECF memcpy8_00000_arg_len, F, 1
	BRA	label59
label60
	MOVF memcpy8_00000_arg_dst, W, 1
	MOVWF CompTempVarRet567, 1
	MOVF memcpy8_00000_arg_dst+D'1', W, 1
	MOVWF CompTempVarRet567+D'1', 1
	RETURN
; } memcpy8 function end

	ORG 0x000009A2
usb_handle_0003C
; { usb_handle_stall ; function begin
	MOVLW 0x20
	MOVLB 0x00
	MOVWF CompTempVar911, 1
	MOVWF CompTempVar911+D'8', 1
	MOVLW 0x3A
	MOVWF CompTempVar911+D'2', 1
	MOVLW 0x53
	MOVWF CompTempVar911+D'3', 1
	MOVLW 0x55
	MOVWF CompTempVar911+D'1', 1
	MOVLW 0x61
	MOVWF CompTempVar911+D'5', 1
	MOVLW 0x6C
	MOVWF CompTempVar911+D'6', 1
	MOVWF CompTempVar911+D'7', 1
	MOVLW 0x74
	MOVWF CompTempVar911+D'4', 1
	CLRF CompTempVar911+D'9', 1
	MOVLW HIGH(CompTempVar911+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar911+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	RETURN
; } usb_handle_stall function end

	ORG 0x000009D4
usb_handle_0003B
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
	MOVLW 0x0A
	MOVLB 0x00
	MOVWF CompTempVar909, 1
	MOVLW 0x52
	MOVWF CompTempVar909+D'1', 1
	MOVLW 0x20
	MOVWF CompTempVar909+D'2', 1
	CLRF CompTempVar909+D'3', 1
	MOVLW HIGH(CompTempVar909+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar909+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF gbl_uir, W
	MOVWF serial_pri_00015_arg_i, 1
	CALL serial_pri_00015
	RETURN
; } usb_handle_reset function end

	ORG 0x00000A3E
usb_handle_0003A
; { usb_handle_transaction ; function begin
	RRCF gbl_ustat, W
	MOVLB 0x00
	MOVWF usb_handle_0003A_1_end_point, 1
	RRCF usb_handle_0003A_1_end_point, F, 1
	RRCF usb_handle_0003A_1_end_point, F, 1
	MOVLW 0x1F
	ANDWF usb_handle_0003A_1_end_point, F, 1
	BTFSS gbl_ustat,2
	BRA	label61
	MOVLW 0x0A
	MOVWF CompTempVar851, 1
	MOVLW 0x44
	MOVWF CompTempVar851+D'1', 1
	MOVLW 0x49
	MOVWF CompTempVar851+D'2', 1
	MOVLW 0x20
	MOVWF CompTempVar851+D'3', 1
	CLRF CompTempVar851+D'4', 1
	MOVLW HIGH(CompTempVar851+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar851+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLB 0x04
	RRCF gbl_bd0in, W, 1
	MOVLB 0x00
	MOVWF usb_handle_0003A_1_pid, 1
	RRCF usb_handle_0003A_1_pid, F, 1
	MOVLW 0x3F
	ANDWF usb_handle_0003A_1_pid, F, 1
	MOVLW 0x0F
	ANDWF usb_handle_0003A_1_pid, F, 1
	BRA	label62
label61
	MOVLB 0x04
	RRCF gbl_bd0out, W, 1
	MOVLB 0x00
	MOVWF CompTempVar854, 1
	RRCF CompTempVar854, F, 1
	MOVLW 0x3F
	ANDWF CompTempVar854, F, 1
	MOVLW 0x0F
	ANDWF CompTempVar854, W, 1
	MOVWF usb_handle_0003A_1_pid, 1
	MOVLW 0x0A
	MOVWF CompTempVar855, 1
	MOVLW 0x44
	MOVWF CompTempVar855+D'1', 1
	MOVLW 0x4F
	MOVWF CompTempVar855+D'2', 1
	MOVLW 0x20
	MOVWF CompTempVar855+D'3', 1
	CLRF CompTempVar855+D'4', 1
	MOVLW HIGH(CompTempVar855+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar855+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
label62
	MOVF usb_handle_0003A_1_end_point, F, 1
	BZ	label63
	MOVLW 0x45
	MOVWF serial_put_00010_arg_c, 1
	CALL serial_put_00010
	MOVLB 0x00
	MOVF usb_handle_0003A_1_end_point, W, 1
	MOVWF serial_pri_00015_arg_i, 1
	CALL serial_pri_00015
	CALL serial_pri_00018
label63
	MOVLB 0x00
	MOVF usb_handle_0003A_1_end_point, F, 1
	BTFSS STATUS,Z
	BRA	label85
	MOVLW 0x0D
	CPFSEQ usb_handle_0003A_1_pid, 1
	BRA	label70
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
	CALL usb_prime__00040
	MOVLW 0x20
	MOVLB 0x00
	MOVWF CompTempVar865, 1
	MOVWF CompTempVar865+D'6', 1
	MOVLW 0x53
	MOVWF CompTempVar865+D'1', 1
	MOVLW 0x65
	MOVWF CompTempVar865+D'2', 1
	MOVLW 0x70
	MOVWF CompTempVar865+D'5', 1
	MOVLW 0x74
	MOVWF CompTempVar865+D'3', 1
	MOVLW 0x75
	MOVWF CompTempVar865+D'4', 1
	CLRF CompTempVar865+D'7', 1
	MOVLW HIGH(CompTempVar865+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar865+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF gbl_usb_sdp, W, 1
	MOVWF serial_pri_00015_arg_i, 1
	CALL serial_pri_00015
	MOVLW 0x20
	MOVLB 0x00
	MOVWF serial_put_00010_arg_c, 1
	CALL serial_put_00010
	MOVLB 0x00
	BTFSS gbl_usb_sdp,7, 1
	BRA	label64
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar867, 1
	MOVWF CompTempVar867+D'5', 1
	MOVWF CompTempVar867+D'14', 1
	MOVLW 0x3D
	MOVWF CompTempVar867+D'11', 1
	MOVLW 0x44
	MOVWF CompTempVar867+D'1', 1
	MOVLW 0x49
	MOVWF CompTempVar867+D'12', 1
	MOVLW 0x4E
	MOVWF CompTempVar867+D'13', 1
	MOVLW 0x61
	MOVWF CompTempVar867+D'2', 1
	MOVWF CompTempVar867+D'4', 1
	MOVWF CompTempVar867+D'8', 1
	MOVLW 0x65
	MOVWF CompTempVar867+D'10', 1
	MOVLW 0x67
	MOVWF CompTempVar867+D'9', 1
	MOVLW 0x73
	MOVWF CompTempVar867+D'6', 1
	MOVLW 0x74
	MOVWF CompTempVar867+D'3', 1
	MOVWF CompTempVar867+D'7', 1
	CLRF CompTempVar867+D'15', 1
	MOVLW HIGH(CompTempVar867+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar867+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	BRA	label65
label64
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar869, 1
	MOVWF CompTempVar869+D'5', 1
	MOVWF CompTempVar869+D'18', 1
	MOVLW 0x2F
	MOVWF CompTempVar869+D'15', 1
	MOVLW 0x3D
	MOVWF CompTempVar869+D'11', 1
	MOVLW 0x44
	MOVWF CompTempVar869+D'1', 1
	MOVLW 0x4E
	MOVWF CompTempVar869+D'16', 1
	MOVLW 0x4F
	MOVWF CompTempVar869+D'12', 1
	MOVWF CompTempVar869+D'17', 1
	MOVLW 0x54
	MOVWF CompTempVar869+D'14', 1
	MOVLW 0x55
	MOVWF CompTempVar869+D'13', 1
	MOVLW 0x61
	MOVWF CompTempVar869+D'2', 1
	MOVWF CompTempVar869+D'4', 1
	MOVWF CompTempVar869+D'8', 1
	MOVLW 0x65
	MOVWF CompTempVar869+D'10', 1
	MOVLW 0x67
	MOVWF CompTempVar869+D'9', 1
	MOVLW 0x73
	MOVWF CompTempVar869+D'6', 1
	MOVLW 0x74
	MOVWF CompTempVar869+D'3', 1
	MOVWF CompTempVar869+D'7', 1
	CLRF CompTempVar869+D'19', 1
	MOVLW HIGH(CompTempVar869+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar869+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
label65
	MOVLW 0x40
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar859, 1
	TSTFSZ CompTempVar859, 1
	BRA	label67
	MOVLW 0x20
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar860, 1
	TSTFSZ CompTempVar860, 1
	BRA	label67
	MOVLW 0x1F
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar871, 1
	MOVF CompTempVar871, F, 1
	BZ	label66
	MOVLW 0x1F
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar872, 1
	DECF CompTempVar872, W, 1
	BZ	label66
	MOVLW 0x1F
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar873, 1
	MOVLW 0x03
	CPFSEQ CompTempVar873, 1
	BRA	label66
label66
	MOVLW 0x20
	MOVWF CompTempVar874, 1
	MOVWF CompTempVar874+D'4', 1
	MOVLW 0x64
	MOVWF CompTempVar874+D'3', 1
	MOVLW 0x73
	MOVWF CompTempVar874+D'1', 1
	MOVLW 0x74
	MOVWF CompTempVar874+D'2', 1
	CLRF CompTempVar874+D'5', 1
	MOVLW HIGH(CompTempVar874+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar874+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF gbl_usb_sdp+D'7', W, 1
	MOVWF usb_handle_00041_arg_sdp+D'7', 1
	MOVF gbl_usb_sdp+D'6', W, 1
	MOVWF usb_handle_00041_arg_sdp+D'6', 1
	MOVF gbl_usb_sdp+D'5', W, 1
	MOVWF usb_handle_00041_arg_sdp+D'5', 1
	MOVF gbl_usb_sdp+D'4', W, 1
	MOVWF usb_handle_00041_arg_sdp+D'4', 1
	MOVF gbl_usb_sdp+D'3', W, 1
	MOVWF usb_handle_00041_arg_sdp+D'3', 1
	MOVF gbl_usb_sdp+D'2', W, 1
	MOVWF usb_handle_00041_arg_sdp+D'2', 1
	MOVF gbl_usb_sdp+D'1', W, 1
	MOVWF usb_handle_00041_arg_sdp+D'1', 1
	MOVF gbl_usb_sdp, W, 1
	MOVWF usb_handle_00041_arg_sdp, 1
	CALL usb_handle_00041
	BRA	label69
label67
	MOVLW 0x40
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar862, 1
	TSTFSZ CompTempVar862, 1
	BRA	label68
	BTFSS gbl_usb_sdp,5, 1
	BRA	label68
	MOVLW 0x20
	MOVWF CompTempVar876, 1
	MOVWF CompTempVar876+D'6', 1
	MOVLW 0x61
	MOVWF CompTempVar876+D'3', 1
	MOVLW 0x63
	MOVWF CompTempVar876+D'1', 1
	MOVLW 0x6C
	MOVWF CompTempVar876+D'2', 1
	MOVLW 0x73
	MOVWF CompTempVar876+D'4', 1
	MOVWF CompTempVar876+D'5', 1
	CLRF CompTempVar876+D'7', 1
	MOVLW HIGH(CompTempVar876+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar876+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF gbl_usb_sdp+D'7', W, 1
	MOVWF usb_handle_00022_arg_sdp+D'7', 1
	MOVF gbl_usb_sdp+D'6', W, 1
	MOVWF usb_handle_00022_arg_sdp+D'6', 1
	MOVF gbl_usb_sdp+D'5', W, 1
	MOVWF usb_handle_00022_arg_sdp+D'5', 1
	MOVF gbl_usb_sdp+D'4', W, 1
	MOVWF usb_handle_00022_arg_sdp+D'4', 1
	MOVF gbl_usb_sdp+D'3', W, 1
	MOVWF usb_handle_00022_arg_sdp+D'3', 1
	MOVF gbl_usb_sdp+D'2', W, 1
	MOVWF usb_handle_00022_arg_sdp+D'2', 1
	MOVF gbl_usb_sdp+D'1', W, 1
	MOVWF usb_handle_00022_arg_sdp+D'1', 1
	MOVF gbl_usb_sdp, W, 1
	MOVWF usb_handle_00022_arg_sdp, 1
	CALL usb_handle_00022
	BRA	label69
label68
	MOVLW 0x20
	MOVWF CompTempVar878, 1
	MOVWF CompTempVar878+D'6', 1
	MOVLW 0x3D
	MOVWF CompTempVar878+D'8', 1
	MOVLW 0x3F
	MOVWF CompTempVar878+D'1', 1
	MOVWF CompTempVar878+D'2', 1
	MOVLW 0x65
	MOVWF CompTempVar878+D'4', 1
	MOVLW 0x71
	MOVWF CompTempVar878+D'5', 1
	MOVLW 0x72
	MOVWF CompTempVar878+D'3', 1
	MOVLW 0x74
	MOVWF CompTempVar878+D'7', 1
	CLRF CompTempVar878+D'9', 1
	MOVLW HIGH(CompTempVar878+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar878+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF gbl_usb_sdp, W, 1
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
	MOVLW 0x20
	MOVWF serial_put_00010_arg_c, 1
	CALL serial_put_00010
label69
	BCF gbl_ucon,4
	RETURN
label70
	MOVLW 0x09
	CPFSEQ usb_handle_0003A_1_pid, 1
	BRA	label76
	MOVLW 0x20
	MOVWF CompTempVar880, 1
	MOVWF CompTempVar880+D'3', 1
	MOVLW 0x49
	MOVWF CompTempVar880+D'1', 1
	MOVLW 0x4E
	MOVWF CompTempVar880+D'2', 1
	CLRF CompTempVar880+D'4', 1
	MOVLW HIGH(CompTempVar880+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar880+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW 0x03
	CPFSEQ gbl_control_mode, 1
	BRA	label71
	CALL usb_send_d_0003D
	RETURN
label71
	MOVLW 0x06
	CPFSEQ gbl_control_mode, 1
	BRA	label73
	CLRF gbl_control_mode, 1
	DECF gbl_usb_status, W, 1
	BNZ	label72
	MOVLW 0x02
	MOVWF gbl_usb_state, 1
	MOVF gbl_usb_address, W, 1
	MOVWF gbl_uaddr
	CLRF gbl_usb_status, 1
label72
	MOVLW 0x20
	MOVWF CompTempVar882, 1
	MOVLW 0x2D
	MOVWF CompTempVar882+D'1', 1
	MOVWF CompTempVar882+D'2', 1
	MOVWF CompTempVar882+D'3', 1
	MOVWF CompTempVar882+D'4', 1
	MOVLW 0x0A
	MOVWF CompTempVar882+D'5', 1
	CLRF CompTempVar882+D'6', 1
	MOVLW HIGH(CompTempVar882+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar882+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	RETURN
label73
	MOVLW 0x05
	CPFSEQ gbl_control_mode, 1
	BRA	label74
	NOP
	RETURN
label74
	MOVLW 0x04
	CPFSEQ gbl_control_mode, 1
	BRA	label75
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar884, 1
	MOVWF CompTempVar884+D'5', 1
	MOVWF CompTempVar884+D'10', 1
	MOVWF CompTempVar884+D'15', 1
	MOVWF CompTempVar884+D'21', 1
	MOVWF CompTempVar884+D'27', 1
	MOVWF CompTempVar884+D'29', 1
	MOVWF CompTempVar884+D'34', 1
	MOVWF CompTempVar884+D'37', 1
	MOVWF CompTempVar884+D'43', 1
	MOVLW 0x2D
	MOVWF CompTempVar884+D'28', 1
	MOVLW 0x3F
	MOVWF CompTempVar884+D'42', 1
	MOVLW 0x61
	MOVWF CompTempVar884+D'8', 1
	MOVWF CompTempVar884+D'12', 1
	MOVWF CompTempVar884+D'14', 1
	MOVWF CompTempVar884+D'18', 1
	MOVWF CompTempVar884+D'24', 1
	MOVLW 0x63
	MOVWF CompTempVar884+D'1', 1
	MOVWF CompTempVar884+D'22', 1
	MOVWF CompTempVar884+D'38', 1
	MOVLW 0x64
	MOVWF CompTempVar884+D'9', 1
	MOVWF CompTempVar884+D'11', 1
	MOVLW 0x65
	MOVWF CompTempVar884+D'7', 1
	MOVWF CompTempVar884+D'20', 1
	MOVWF CompTempVar884+D'33', 1
	MOVWF CompTempVar884+D'41', 1
	MOVLW 0x67
	MOVWF CompTempVar884+D'19', 1
	MOVLW 0x6C
	MOVWF CompTempVar884+D'4', 1
	MOVWF CompTempVar884+D'23', 1
	MOVLW 0x6D
	MOVWF CompTempVar884+D'30', 1
	MOVWF CompTempVar884+D'40', 1
	MOVLW 0x6F
	MOVWF CompTempVar884+D'31', 1
	MOVWF CompTempVar884+D'36', 1
	MOVWF CompTempVar884+D'39', 1
	MOVLW 0x72
	MOVWF CompTempVar884+D'3', 1
	MOVWF CompTempVar884+D'6', 1
	MOVWF CompTempVar884+D'32', 1
	MOVLW 0x73
	MOVWF CompTempVar884+D'16', 1
	MOVWF CompTempVar884+D'25', 1
	MOVWF CompTempVar884+D'26', 1
	MOVLW 0x74
	MOVWF CompTempVar884+D'2', 1
	MOVWF CompTempVar884+D'13', 1
	MOVWF CompTempVar884+D'17', 1
	MOVWF CompTempVar884+D'35', 1
	CLRF CompTempVar884+D'44', 1
	MOVLW HIGH(CompTempVar884+D'0')
	MOVLB 0x00
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar884+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	CALL usb_handle_00023
	RETURN
label75
	MOVLW 0x20
	MOVWF CompTempVar886, 1
	MOVWF CompTempVar886+D'3', 1
	MOVLW 0x3D
	MOVWF CompTempVar886+D'6', 1
	MOVLW 0x3F
	MOVWF CompTempVar886+D'1', 1
	MOVWF CompTempVar886+D'2', 1
	MOVLW 0x63
	MOVWF CompTempVar886+D'4', 1
	MOVLW 0x6D
	MOVWF CompTempVar886+D'5', 1
	CLRF CompTempVar886+D'7', 1
	MOVLW HIGH(CompTempVar886+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar886+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF gbl_control_mode, W, 1
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
	CALL serial_pri_00018
	RETURN
label76
	MOVLW 0x02
	CPFSEQ usb_handle_0003A_1_pid, 1
	BRA	label79
	MOVLW 0x2A
	MOVWF CompTempVar888, 1
	MOVWF CompTempVar888+D'1', 1
	MOVWF CompTempVar888+D'2', 1
	MOVWF CompTempVar888+D'3', 1
	MOVLW 0x41
	MOVWF CompTempVar888+D'4', 1
	MOVLW 0x0A
	MOVWF CompTempVar888+D'5', 1
	CLRF CompTempVar888+D'6', 1
	MOVLW HIGH(CompTempVar888+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar888+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW 0x03
	CPFSEQ gbl_control_mode, 1
	BRA	label77
	MOVLW 0x20
	MOVWF CompTempVar890, 1
	MOVWF CompTempVar890+D'3', 1
	MOVLW 0x26
	MOVWF CompTempVar890+D'1', 1
	MOVLW 0x32
	MOVWF CompTempVar890+D'2', 1
	CLRF CompTempVar890+D'4', 1
	MOVLW HIGH(CompTempVar890+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar890+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	CALL usb_send_d_0003D
	RETURN
label77
	MOVLW 0x04
	CPFSEQ gbl_control_mode, 1
	BRA	label78
	CALL usb_handle_00023
	RETURN
label78
	MOVLW 0x06
	CPFSEQ gbl_control_mode, 1
	RETURN
	MOVLW 0x20
	MOVWF CompTempVar892, 1
	MOVWF CompTempVar892+D'3', 1
	MOVWF CompTempVar892+D'8', 1
	MOVLW 0x65
	MOVWF CompTempVar892+D'5', 1
	MOVLW 0x6E
	MOVWF CompTempVar892+D'6', 1
	MOVLW 0x73
	MOVWF CompTempVar892+D'1', 1
	MOVWF CompTempVar892+D'4', 1
	MOVLW 0x74
	MOVWF CompTempVar892+D'2', 1
	MOVWF CompTempVar892+D'7', 1
	CLRF CompTempVar892+D'9', 1
	MOVLW HIGH(CompTempVar892+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar892+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	CLRF gbl_control_mode, 1
	RETURN
label79
	DECF usb_handle_0003A_1_pid, W, 1
	BNZ	label84
	MOVLW 0x05
	CPFSEQ gbl_control_mode, 1
	BRA	label80
	MOVLW 0x20
	MOVWF CompTempVar894, 1
	MOVLW 0x2D
	MOVWF CompTempVar894+D'1', 1
	MOVWF CompTempVar894+D'2', 1
	MOVWF CompTempVar894+D'3', 1
	MOVWF CompTempVar894+D'4', 1
	MOVLW 0x0A
	MOVWF CompTempVar894+D'5', 1
	CLRF CompTempVar894+D'6', 1
	MOVLW HIGH(CompTempVar894+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar894+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	CLRF gbl_control_mode, 1
	BRA	label83
label80
	MOVLW 0x02
	CPFSEQ gbl_control_mode, 1
	BRA	label81
	MOVLW HIGH(gbl_buffer_0_out+D'0')
	MOVWF usb_handle_00024_arg_data+D'1', 1
	MOVLW LOW(gbl_buffer_0_out+D'0')
	MOVWF usb_handle_00024_arg_data, 1
	MOVLB 0x04
	MOVF gbl_bd0out+D'1', W, 1
	MOVLB 0x00
	MOVWF usb_handle_00024_arg_count, 1
	CLRF usb_handle_00024_arg_count+D'1', 1
	CALL usb_handle_00024
	BRA	label83
label81
	MOVLW 0x03
	CPFSEQ gbl_control_mode, 1
	BRA	label82
	CLRF gbl_control_mode, 1
	BRA	label83
label82
	MOVLW 0x20
	MOVWF CompTempVar897+D'5', 1
	MOVWF CompTempVar897+D'13', 1
	MOVLW 0x3F
	MOVWF CompTempVar897, 1
	MOVWF CompTempVar897+D'1', 1
	MOVLW 0x4F
	MOVWF CompTempVar897+D'10', 1
	MOVLW 0x54
	MOVWF CompTempVar897+D'12', 1
	MOVLW 0x55
	MOVWF CompTempVar897+D'11', 1
	MOVLW 0x5F
	MOVWF CompTempVar897+D'9', 1
	MOVLW 0x64
	MOVWF CompTempVar897+D'8', 1
	MOVLW 0x69
	MOVWF CompTempVar897+D'7', 1
	MOVLW 0x6B
	MOVWF CompTempVar897+D'4', 1
	MOVLW 0x6E
	MOVWF CompTempVar897+D'3', 1
	MOVLW 0x70
	MOVWF CompTempVar897+D'6', 1
	MOVLW 0x75
	MOVWF CompTempVar897+D'2', 1
	CLRF CompTempVar897+D'14', 1
	MOVLW HIGH(CompTempVar897+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar897+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF gbl_control_mode, W, 1
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
label83
	CALL usb_prime__00040
	RETURN
label84
	MOVLW 0x20
	MOVWF CompTempVar899, 1
	MOVWF CompTempVar899+D'6', 1
	MOVWF CompTempVar899+D'8', 1
	MOVLW 0x3D
	MOVWF CompTempVar899+D'7', 1
	MOVLW 0x44
	MOVWF CompTempVar899+D'5', 1
	MOVLW 0x49
	MOVWF CompTempVar899+D'4', 1
	MOVLW 0x4B
	MOVWF CompTempVar899+D'2', 1
	MOVLW 0x50
	MOVWF CompTempVar899+D'3', 1
	MOVLW 0x55
	MOVWF CompTempVar899+D'1', 1
	CLRF CompTempVar899+D'9', 1
	MOVLW HIGH(CompTempVar899+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar899+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF usb_handle_0003A_1_pid, W, 1
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
	RETURN
label85
	BTFSS gbl_ustat,2
	BRA	label86
	NOP
	RETURN
label86
	LFSR 0x00,  gbl_ep_out_bd_location
	MOVF FSR0L, W
	MOVF usb_handle_0003A_1_end_point, W, 1
	MOVWF CompTempVar903, 1
	BCF STATUS,C
	RLCF CompTempVar903, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_handle_0003A_181_bd, 1
	MOVF INDF0, W
	MOVWF usb_handle_0003A_181_bd+D'1', 1
	LFSR 0x00,  gbl_ep_out_buffer_size
	MOVF FSR0L, W
	MOVF usb_handle_0003A_1_end_point, W, 1
	MOVWF CompTempVar906, 1
	BCF STATUS,C
	RLCF CompTempVar906, F, 1
	MOVF CompTempVar906, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF CompTempVar908, 1
	MOVF INDF0, W
	MOVWF CompTempVar908+D'1', 1
	MOVF usb_handle_0003A_181_bd+D'1', W, 1
	MOVWF FSR0H
	INCF usb_handle_0003A_181_bd, W, 1
	MOVWF FSR0L
	MOVF CompTempVar908, W, 1
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

	ORG 0x00000FEC
handle_tic_00032
; { handle_tick ; function begin
	MOVLB 0x00
	INFSNZ gbl_22_tick, F, 1
	INCF gbl_22_tick+D'1', F, 1
	RETURN
; } handle_tick function end

	ORG 0x00000FF4
usb_handle_0001D
; { usb_handle_isr ; function begin
	BTFSS gbl_pir2,5
	RETURN
	BCF gbl_pir2,5
	BTFSS gbl_uir,3
	BRA	label87
	CALL usb_handle_0003A
	BCF gbl_uir,3
label87
	BTFSS gbl_uir,0
	BRA	label88
	CALL usb_handle_0003B
	BCF gbl_uir,0
label88
	BTFSS gbl_uir,5
	RETURN
	CALL usb_handle_0003C
	BCF gbl_uir,5
	RETURN
; } usb_handle_isr function end

	ORG 0x0000101A
timer_0_ca_00038
; { timer_0_callback ; function begin
	CALL handle_tic_00032
	RETURN
; } timer_0_callback function end

	ORG 0x00001020
initialise_00000
; { initialise ; function begin
	CLRF gbl_trisa
	CLRF gbl_porta
	MOVLW 0x01
	MOVWF gbl_trisb
	CLRF gbl_portb
	CLRF gbl_trisc
	CLRF gbl_portc
	CLRF gbl_adcon0
	MOVLW 0x0F
	MOVWF gbl_adcon1
	BSF gbl_ucon,3
	BCF gbl_intcon2,7
	BSF gbl_intcon,6
	BSF gbl_portb,1
	BSF gbl_intcon,7
	RETURN
; } initialise function end

	ORG 0x00001040
main
; { main ; function begin
	CALL initialise_00000
label89
	MOVLB 0x00
	BTFSS gbl_isJiggling,0, 1
	BRA	label90
label90
	BTFSS gbl_portb,0
	BRA	label89
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	BTFSS gbl_portb,0
	BRA	label89
	BTFSS gbl_isJiggling,0, 1
	BRA	label91
	BSF gbl_isJiggling,0, 1
	BSF gbl_portb,1
	BRA	label89
label91
	BCF gbl_isJiggling,0, 1
	BCF gbl_portb,1
	BRA	label89
; } main function end

	ORG 0x0000106A
_startup
	MOVLB 0x00
	BCF gbl_isJiggling,0, 1
	CLRF gbl_20_tick
	CLRF gbl_20_tick+D'1'
	CLRF gbl_do_task, 1
	BCF gbl_receive,1, 1
	CLRF gbl_send_to, 1
	CLRF gbl_tx_start, 1
	CLRF gbl_tx_end, 1
	CLRF gbl_rx_start, 1
	CLRF gbl_rx_end, 1
	CLRF gbl_22_tick, 1
	CLRF gbl_22_tick+D'1', 1
	CLRF gbl_timer_0_start_value, 1
	CLRF gbl_timer_0_start_value+D'1', 1
	CLRF gbl_usb_state, 1
	MOVLW HIGH(gbl_buffer_0_in+D'0')
	MOVWF CompGblVar105, 1
	MOVLW LOW(gbl_buffer_0_in+D'0')
	MOVWF gbl_ep_in_buffer_location, 1
	MOVF CompGblVar105, W, 1
	MOVWF gbl_ep_in_buffer_location+D'1', 1
	MOVLW HIGH(gbl_buffer_1_in+D'0')
	MOVWF CompGblVar106, 1
	MOVLW LOW(gbl_buffer_1_in+D'0')
	MOVWF gbl_ep_in_buffer_location+D'2', 1
	MOVF CompGblVar106, W, 1
	MOVWF gbl_ep_in_buffer_location+D'3', 1
	MOVLW HIGH(gbl_buffer_0_out+D'0')
	MOVWF CompGblVar107, 1
	MOVLW LOW(gbl_buffer_0_out+D'0')
	MOVWF gbl_ep_out_buffer_location, 1
	MOVF CompGblVar107, W, 1
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
	ORG 0x000012E6
interrupt
; { interrupt ; function begin
	MOVFF FSR0H,  Int1Context
	MOVFF FSR0L,  Int1Context+D'1'
	MOVFF PRODH,  Int1Context+D'2'
	MOVFF PRODL,  Int1Context+D'3'
	CALL usb_handle_0001D
	BTFSS gbl_intcon,2
	BRA	label93
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
	CALL timer_0_ca_00038
label93
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
