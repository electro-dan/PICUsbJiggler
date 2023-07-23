;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 8.01
;// License Type  : Pro License
;// Limitations   : PIC18 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P18F2550.inc"
__HEAPSTART                      EQU	0x00000518 ; Start address of heap 
__HEAPEND                        EQU	0x000007FF ; End address of heap 
__div_16_1_00005_arg_a           EQU	0x0000022C ; bytes:2
__div_16_1_00005_arg_b           EQU	0x0000022E ; bytes:2
CompTempVarRet347                EQU	0x00000234 ; bytes:2
__div_16_1_00005_1_r             EQU	0x00000230 ; bytes:2
__div_16_1_00005_1_i             EQU	0x00000232 ; bytes:1
CompTempVar349                   EQU	0x00000233 ; bytes:1
__rem_16_1_00006_arg_a           EQU	0x0000022C ; bytes:2
__rem_16_1_00006_arg_b           EQU	0x0000022E ; bytes:2
CompTempVarRet350                EQU	0x00000237 ; bytes:2
__rem_16_1_00006_1_c             EQU	0x00000233 ; bytes:2
__rem_16_1_00006_1_i             EQU	0x00000235 ; bytes:1
CompTempVar352                   EQU	0x00000236 ; bytes:1
memcpy8_00000_arg_dst            EQU	0x000000FD ; bytes:2
memcpy8_00000_arg_src            EQU	0x000001FE ; bytes:2
memcpy8_00000_arg_len            EQU	0x000000FF ; bytes:1
CompTempVarRet567                EQU	0x00000215 ; bytes:2
memcpy8_00000_1_dst2             EQU	0x00000211 ; bytes:2
memcpy8_00000_1_src2             EQU	0x00000213 ; bytes:2
CompTempVar568                   EQU	0x00000215 ; bytes:1
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
gbl_port_array                   EQU	0x00000F80 ; bytes:5
gbl_tris_array                   EQU	0x00000F92 ; bytes:5
gbl_20_tick                      EQU	0x0000005E ; bytes:2
gbl_do_task                      EQU	0x000000D3 ; bytes:1
gbl_receive                      EQU	0x000000D2 ; bit:1
gbl_send_to                      EQU	0x000000D4 ; bytes:1
interrupt_6_start_value          EQU	0x000000F8 ; bytes:2
main_1_tick_marker               EQU	0x000000E2 ; bytes:2
main_1_test_tick                 EQU	0x000000E4 ; bytes:2
main_1_left_count                EQU	0x000000E6 ; bytes:1
main_1_check_count               EQU	0x000000E7 ; bytes:1
main_1_buffer                    EQU	0x000000E8 ; bytes:3
CompTempVar805                   EQU	0x000000EB ; bytes:1
gbl_tx_buffer                    EQU	0x00000100 ; bytes:254
gbl_tx_start                     EQU	0x000000D5 ; bytes:1
gbl_tx_end                       EQU	0x000000D6 ; bytes:1
gbl_rx_start                     EQU	0x000000D7 ; bytes:1
gbl_rx_end                       EQU	0x000000D8 ; bytes:1
serial_tx__0000D_1_tx_next       EQU	0x00000244 ; bytes:1
serial_put_00010_arg_c           EQU	0x00000241 ; bytes:1
serial_put_00010_1_tx_next       EQU	0x00000242 ; bytes:1
serial_put_00010_1_my_store_gie  EQU	0x00000243 ; bit:0
serial_pri_00012_arg_str         EQU	0x0000023E ; bytes:2
serial_pri_00012_1_count         EQU	0x00000240 ; bytes:1
serial_pri_00014_arg_i           EQU	0x00000223 ; bytes:2
serial_pri_00014_1_buffer        EQU	0x00000225 ; bytes:6
serial_pri_00014_1_count         EQU	0x0000022B ; bytes:1
CompTempVar825                   EQU	0x00000230 ; bytes:1
CompTempVar826                   EQU	0x00000231 ; bytes:1
CompTempVar827                   EQU	0x00000232 ; bytes:1
serial_pri_00015_arg_i           EQU	0x00000219 ; bytes:1
serial_pri_00015_5_x             EQU	0x0000021A ; bytes:1
serial_pri_00015_15_x            EQU	0x0000021A ; bytes:1
gbl_22_tick                      EQU	0x000000C2 ; bytes:2
CompTempVarRet840                EQU	0x000000EE ; bytes:2
tick_get_c_00030_1_my_store_gie  EQU	0x000000EB ; bit:0
tick_get_c_00030_1_result        EQU	0x000000EC ; bytes:2
tick_calc__00031_arg_a           EQU	0x000000EB ; bytes:2
tick_calc__00031_arg_b           EQU	0x000000ED ; bytes:2
CompTempVarRet841                EQU	0x000000EF ; bytes:2
CompTempVar845                   EQU	0x000000F1 ; bytes:1
CompTempVar848                   EQU	0x000000F2 ; bytes:1
CompTempVar849                   EQU	0x000000F3 ; bytes:1
gbl_timer_0_start_value          EQU	0x000000C4 ; bytes:2
timer_setu_00033_arg_mode_8_bit  EQU	0x000000EB ; bit:0
timer_setu_00033_arg_presc_00034 EQU	0x000000EC ; bytes:1
timer_setu_00033_arg_timer_00035 EQU	0x000000ED ; bytes:2
gbl_usb_state                    EQU	0x000000D9 ; bytes:1
gbl_usb_address                  EQU	0x000000DA ; bytes:1
gbl_usb_sdp                      EQU	0x0000009E ; bytes:8
gbl_control_mode                 EQU	0x000000DB ; bytes:1
gbl_delivery_bytes_to_send       EQU	0x000000C6 ; bytes:2
gbl_delivery_bytes_max_send      EQU	0x000000C8 ; bytes:2
gbl_delivery_bytes_sent          EQU	0x000000CA ; bytes:2
gbl_delivery_ptr                 EQU	0x000000CC ; bytes:2
gbl_delivery_buffer_size         EQU	0x000000DC ; bytes:1
gbl_delivery_buffer              EQU	0x000000CE ; bytes:2
gbl_delivery_bd                  EQU	0x000000D0 ; bytes:2
gbl_usb_status                   EQU	0x000000DD ; bytes:1
gbl_buffer_byte                  EQU	0x000000DE ; bytes:1
usb_send_d_0001E_arg_ep          EQU	0x000000EC ; bytes:1
usb_send_d_0001E_arg_data        EQU	0x000000ED ; bytes:2
usb_send_d_0001E_arg_send_count  EQU	0x000000EF ; bytes:1
usb_send_d_0001E_arg_first       EQU	0x000000F0 ; bit:0
usb_send_d_0001E_1_count         EQU	0x000000F1 ; bytes:1
usb_send_d_0001E_1_bd            EQU	0x000000F2 ; bytes:2
usb_send_d_0001E_1_buffer        EQU	0x000000F4 ; bytes:2
CompTempVar923                   EQU	0x000000F6 ; bytes:1
CompTempVar926                   EQU	0x000000F6 ; bytes:1
CompTempVar927                   EQU	0x00000200 ; bytes:17
CompTempVar931                   EQU	0x000000F6 ; bytes:1
CompTempVar932                   EQU	0x000000F7 ; bytes:1
CompTempVar933                   EQU	0x000000F6 ; bytes:1
CompTempVarRet943                EQU	0x000000EB ; bytes:1
CompTempVar944                   EQU	0x00000219 ; bytes:12
usb_send_d_0003D_1_count         EQU	0x0000021A ; bytes:1
CompTempVar938                   EQU	0x0000021B ; bytes:17
CompTempVar941                   EQU	0x0000021B ; bytes:1
usb_send_o_0003F_arg_data        EQU	0x00000219 ; bytes:1
usb_handle_00041_arg_sdp         EQU	0x00000211 ; bytes:8
usb_handle_00041_1_descrip_00042 EQU	0x000001FE ; bytes:1
usb_handle_00041_1_descrip_00043 EQU	0x000001FF ; bytes:1
CompTempVar949                   EQU	0x00000219 ; bytes:6
CompTempVar954                   EQU	0x00000219 ; bytes:10
CompTempVar956                   EQU	0x00000219 ; bytes:5
CompTempVar958                   EQU	0x00000219 ; bytes:6
CompTempVar960                   EQU	0x00000219 ; bytes:5
CompTempVar962                   EQU	0x00000219 ; bytes:5
CompTempVar964                   EQU	0x00000219 ; bytes:7
usb_handle_0003A_1_end_point     EQU	0x000000F8 ; bytes:1
usb_handle_0003A_1_pid           EQU	0x000000F9 ; bytes:1
CompTempVar859                   EQU	0x000000FA ; bytes:5
CompTempVar862                   EQU	0x000000FA ; bytes:1
CompTempVar863                   EQU	0x000000FA ; bytes:5
CompTempVar867                   EQU	0x000000FA ; bytes:1
CompTempVar868                   EQU	0x000000FB ; bytes:1
CompTempVar870                   EQU	0x000000FC ; bytes:1
CompTempVar873                   EQU	0x00000211 ; bytes:8
CompTempVar875                   EQU	0x00000211 ; bytes:16
CompTempVar877                   EQU	0x00000211 ; bytes:20
CompTempVar879                   EQU	0x000000FD ; bytes:1
CompTempVar880                   EQU	0x000000FE ; bytes:1
CompTempVar881                   EQU	0x000000FF ; bytes:1
CompTempVar882                   EQU	0x00000211 ; bytes:6
CompTempVar884                   EQU	0x00000211 ; bytes:8
CompTempVar886                   EQU	0x00000211 ; bytes:10
CompTempVar888                   EQU	0x000000FA ; bytes:5
CompTempVar890                   EQU	0x00000211 ; bytes:7
CompTempVar892                   EQU	0x00000211 ; bytes:45
CompTempVar894                   EQU	0x00000211 ; bytes:8
CompTempVar896                   EQU	0x00000211 ; bytes:7
CompTempVar898                   EQU	0x000000FA ; bytes:5
CompTempVar900                   EQU	0x00000211 ; bytes:10
CompTempVar902                   EQU	0x00000211 ; bytes:7
CompTempVar905                   EQU	0x00000211 ; bytes:15
CompTempVar907                   EQU	0x00000211 ; bytes:10
usb_handle_0003A_181_bd          EQU	0x000000FA ; bytes:2
CompTempVar911                   EQU	0x000000FC ; bytes:1
CompTempVar914                   EQU	0x000000FC ; bytes:1
CompTempVar916                   EQU	0x000000FD ; bytes:2
CompTempVar917                   EQU	0x000000F8 ; bytes:4
CompTempVar919                   EQU	0x00000211 ; bytes:10
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
CompGblVar105                    EQU	0x000000DF ; bytes:1
CompGblVar106                    EQU	0x000000E0 ; bytes:1
CompGblVar107                    EQU	0x000000E1 ; bytes:1
gbl_port_shadow                  EQU	0x00000059 ; bytes:5
gbl_my_device_descriptor         EQU	0x0000008C ; bytes:18
gbl_mouse_report_descriptor      EQU	0x00000005 ; bytes:50
gbl_complete_mouse_configuration EQU	0x00000037 ; bytes:34
gbl_string_00                    EQU	0x000000BE ; bytes:4
gbl_string_01                    EQU	0x00000060 ; bytes:24
gbl_string_02                    EQU	0x00000078 ; bytes:20
usb_get_de_00025_arg_descr_00026 EQU	0x00000219 ; bytes:1
usb_get_de_00025_arg_descr_00027 EQU	0x0000021A ; bytes:1
usb_get_de_00025_arg_rtn_d_00028 EQU	0x0000021B ; bytes:2
usb_get_de_00025_arg_rtn_d_00029 EQU	0x0000021D ; bytes:2
usb_get_de_00025_1_descrip_00048 EQU	0x0000021F ; bytes:2
usb_get_de_00025_1_descrip_00049 EQU	0x00000221 ; bytes:2
CompTempVar999                   EQU	0x00000223 ; bytes:9
CompTempVar1001                  EQU	0x00000223 ; bytes:1
CompTempVar1002                  EQU	0x00000223 ; bytes:9
CompTempVar1004                  EQU	0x00000223 ; bytes:1
CompTempVar1005                  EQU	0x00000223 ; bytes:10
CompTempVar1007                  EQU	0x00000223 ; bytes:1
CompTempVar1008                  EQU	0x00000223 ; bytes:1
CompTempVar1009                  EQU	0x00000223 ; bytes:1
CompTempVar1010                  EQU	0x00000223 ; bytes:26
CompTempVar1012                  EQU	0x00000223 ; bytes:13
CompTempVar1014                  EQU	0x00000223 ; bytes:1
CompTempVar1015                  EQU	0x00000223 ; bytes:4
CompTempVar1017                  EQU	0x00000223 ; bytes:1
CompTempVar1018                  EQU	0x00000223 ; bytes:1
usb_handle_00022_arg_sdp         EQU	0x00000211 ; bytes:8
CompTempVar1019                  EQU	0x00000219 ; bytes:16
CompTempVar1021                  EQU	0x00000219 ; bytes:11
usb_handle_00024_arg_data        EQU	0x000000FA ; bytes:2
usb_handle_00024_arg_count       EQU	0x000000FC ; bytes:2
delay_ms_00000_arg_del           EQU	0x000000EB ; bytes:1
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
	MOVLB 0x02
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
	MOVLB 0x02
	MOVF serial_tx__0000D_1_tx_next, W, 1
	MOVLB 0x00
	MOVWF gbl_tx_start, 1
	RETURN
; } serial_tx_isr function end

	ORG 0x000000AE
serial_put_00010
; { serial_putc ; function begin
	MOVLB 0x00
	MOVF gbl_tx_start, W, 1
	CPFSEQ gbl_tx_end, 1
	BRA	label6
	BTFSS gbl_pir1,4
	BRA	label6
	MOVLB 0x02
	MOVF serial_put_00010_arg_c, W, 1
	MOVWF gbl_txreg
	RETURN
label6
	INCF gbl_tx_end, W, 1
	MOVLB 0x02
	MOVWF serial_put_00010_1_tx_next, 1
	MOVLW 0xFE
	CPFSEQ serial_put_00010_1_tx_next, 1
	BRA	label7
	CLRF serial_put_00010_1_tx_next, 1
label7
	MOVLB 0x00
	MOVF gbl_tx_start, W, 1
	MOVLB 0x02
	CPFSEQ serial_put_00010_1_tx_next, 1
	BRA	label8
	BTFSC gbl_intcon,7
	BRA	label7
	BTFSC gbl_pir1,4
	CALL serial_tx__0000D
	BRA	label7
label8
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
	MOVLB 0x02
	MOVF serial_put_00010_arg_c, W, 1
	MOVWF INDF0
	MOVF serial_put_00010_1_tx_next, W, 1
	MOVLB 0x00
	MOVWF gbl_tx_end, 1
	BSF gbl_pie1,4
	MOVLB 0x02
	BTFSC serial_put_00010_1_my_store_gie,0, 1
	BSF gbl_intcon,7
	BTFSS serial_put_00010_1_my_store_gie,0, 1
	BCF gbl_intcon,7
	RETURN
; } serial_putc function end

	ORG 0x00000118
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
	INCF serial_pri_00012_1_count, F, 1
	BRA	label10
; } serial_print_str function end

	ORG 0x00000140
__rem_16_1_00006
; { __rem_16_16 ; function begin
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
	RLCF __rem_16_1_00006_arg_a, F, 1
	RLCF __rem_16_1_00006_arg_a+D'1', F, 1
	RLCF CompTempVarRet350, F, 1
	RLCF CompTempVarRet350+D'1', F, 1
	MOVF __rem_16_1_00006_arg_b, W, 1
	SUBWF CompTempVarRet350, W, 1
	MOVF __rem_16_1_00006_arg_b+D'1', W, 1
	CPFSEQ CompTempVarRet350+D'1', 1
	SUBWF CompTempVarRet350+D'1', W, 1
	BNC	label12
	MOVF __rem_16_1_00006_arg_b, W, 1
	SUBWF CompTempVarRet350, F, 1
	MOVF __rem_16_1_00006_arg_b+D'1', W, 1
	SUBWFB CompTempVarRet350+D'1', F, 1
	BSF __rem_16_1_00006_1_c,0, 1
label12
	INCF __rem_16_1_00006_1_i, F, 1
	BRA	label11
; } __rem_16_16 function end

	ORG 0x0000017C
__div_16_1_00005
; { __div_16_16 ; function begin
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
	RLCF __div_16_1_00005_arg_a, F, 1
	RLCF __div_16_1_00005_arg_a+D'1', F, 1
	RLCF __div_16_1_00005_1_r, F, 1
	RLCF __div_16_1_00005_1_r+D'1', F, 1
	MOVF __div_16_1_00005_arg_b, W, 1
	SUBWF __div_16_1_00005_1_r, W, 1
	MOVF __div_16_1_00005_arg_b+D'1', W, 1
	CPFSEQ __div_16_1_00005_1_r+D'1', 1
	SUBWF __div_16_1_00005_1_r+D'1', W, 1
	BNC	label14
	MOVF __div_16_1_00005_arg_b, W, 1
	SUBWF __div_16_1_00005_1_r, F, 1
	MOVF __div_16_1_00005_arg_b+D'1', W, 1
	SUBWFB __div_16_1_00005_1_r+D'1', F, 1
	BSF CompTempVarRet347,0, 1
label14
	INCF __div_16_1_00005_1_i, F, 1
	BRA	label13
; } __div_16_16 function end

	ORG 0x000001B8
usb_send_d_0003D
; { usb_send_data_chunk ; function begin
	MOVLB 0x04
	BTFSS gbl_bd0in,7, 1
	BRA	label15
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar938, 1
	MOVWF CompTempVar938+D'7', 1
	MOVWF CompTempVar938+D'11', 1
	MOVWF CompTempVar938+D'15', 1
	MOVLW 0x21
	MOVWF CompTempVar938+D'1', 1
	MOVWF CompTempVar938+D'14', 1
	MOVLW 0x27
	MOVWF CompTempVar938+D'5', 1
	MOVLW 0x64
	MOVWF CompTempVar938+D'2', 1
	MOVLW 0x69
	MOVWF CompTempVar938+D'12', 1
	MOVLW 0x6E
	MOVWF CompTempVar938+D'4', 1
	MOVWF CompTempVar938+D'10', 1
	MOVLW 0x6F
	MOVWF CompTempVar938+D'3', 1
	MOVWF CompTempVar938+D'8', 1
	MOVLW 0x74
	MOVWF CompTempVar938+D'6', 1
	MOVWF CompTempVar938+D'13', 1
	MOVLW 0x77
	MOVWF CompTempVar938+D'9', 1
	CLRF CompTempVar938+D'16', 1
	MOVLW HIGH(CompTempVar938+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar938+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	RETURN
label15
	MOVLB 0x02
	CLRF usb_send_d_0003D_1_count, 1
label16
	MOVLB 0x00
	MOVF gbl_delivery_buffer_size, W, 1
	MOVLB 0x02
	CPFSLT usb_send_d_0003D_1_count, 1
	BRA	label19
	MOVLB 0x00
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
	MOVLB 0x02
	MOVWF CompTempVar941, 1
	MOVLB 0x00
	MOVF gbl_delivery_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_delivery_buffer, W, 1
	MOVLB 0x02
	ADDWF usb_send_d_0003D_1_count, W, 1
	MOVWF FSR0L
	MOVF CompTempVar941, W, 1
	MOVWF INDF0
	MOVLB 0x00
	INFSNZ gbl_delivery_ptr, F, 1
	INCF gbl_delivery_ptr+D'1', F, 1
	INFSNZ gbl_delivery_bytes_sent, F, 1
	INCF gbl_delivery_bytes_sent+D'1', F, 1
	MOVLB 0x02
	INCF usb_send_d_0003D_1_count, F, 1
	BRA	label16
label19
	MOVLB 0x00
	MOVF gbl_delivery_buffer_size, W, 1
	MOVLB 0x02
	CPFSLT usb_send_d_0003D_1_count, 1
	BRA	label22
	MOVLB 0x00
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
	MOVLB 0x02
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

	ORG 0x000002A8
serial_pri_00018
; { serial_print_spc ; function begin
	MOVLW 0x20
	MOVLB 0x02
	MOVWF serial_put_00010_arg_c, 1
	CALL serial_put_00010
	RETURN
; } serial_print_spc function end

	ORG 0x000002B4
serial_pri_00014
; { serial_print_int ; function begin
	MOVLW 0x05
	MOVWF serial_pri_00014_1_count, 1
	CLRF serial_pri_00014_1_buffer+D'5', 1
label23
	DECF serial_pri_00014_1_count, F, 1
	MOVF serial_pri_00014_arg_i, W, 1
	MOVWF __rem_16_1_00006_arg_a, 1
	MOVF serial_pri_00014_arg_i+D'1', W, 1
	MOVWF __rem_16_1_00006_arg_a+D'1', 1
	MOVLW 0x0A
	MOVWF __rem_16_1_00006_arg_b, 1
	CLRF __rem_16_1_00006_arg_b+D'1', 1
	CALL __rem_16_1_00006
	MOVF CompTempVarRet350, W, 1
	MOVWF CompTempVar825, 1
	MOVF CompTempVarRet350+D'1', W, 1
	MOVWF CompTempVar826, 1
	MOVF CompTempVar825, W, 1
	ADDLW 0x30
	MOVWF CompTempVar827, 1
	LFSR 0x00,  serial_pri_00014_1_buffer
	MOVF FSR0L, W
	MOVF serial_pri_00014_1_count, W, 1
	ADDWF FSR0L, F
	MOVF CompTempVar827, W, 1
	MOVWF INDF0
	MOVF serial_pri_00014_arg_i, W, 1
	MOVWF __div_16_1_00005_arg_a, 1
	MOVF serial_pri_00014_arg_i+D'1', W, 1
	MOVWF __div_16_1_00005_arg_a+D'1', 1
	MOVLW 0x0A
	MOVWF __div_16_1_00005_arg_b, 1
	CLRF __div_16_1_00005_arg_b+D'1', 1
	CALL __div_16_1_00005
	MOVF CompTempVarRet347, W, 1
	MOVWF serial_pri_00014_arg_i, 1
	MOVF CompTempVarRet347+D'1', W, 1
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
	INCF serial_pri_00014_1_count, F, 1
	BRA	label24
; } serial_print_int function end

	ORG 0x00000332
usb_stall__00020
; { usb_stall_ep0 ; function begin
	MOVLB 0x04
	BSF gbl_bd0in,2, 1
	BSF gbl_bd0in,7, 1
	BSF gbl_bd0out,2, 1
	BSF gbl_bd0out,7, 1
	RETURN
; } usb_stall_ep0 function end

	ORG 0x0000033E
usb_send_o_0003F
; { usb_send_one_byte ; function begin
	MOVLW 0x08
	MOVLB 0x00
	MOVWF gbl_delivery_buffer_size, 1
	CLRF gbl_delivery_bytes_sent, 1
	CLRF gbl_delivery_bytes_sent+D'1', 1
	MOVLW 0x01
	MOVWF gbl_delivery_bytes_to_send, 1
	CLRF gbl_delivery_bytes_to_send+D'1', 1
	CLRF gbl_delivery_bytes_max_send, 1
	CLRF gbl_delivery_bytes_max_send+D'1', 1
	MOVLB 0x02
	MOVF usb_send_o_0003F_arg_data, W, 1
	MOVLB 0x00
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

	ORG 0x0000037C
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

	ORG 0x000003AC
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
	MOVWF CompTempVar999, 1
	MOVWF CompTempVar999+D'7', 1
	MOVLW 0x44
	MOVWF CompTempVar999+D'1', 1
	MOVLW 0x63
	MOVWF CompTempVar999+D'5', 1
	MOVLW 0x65
	MOVWF CompTempVar999+D'2', 1
	MOVWF CompTempVar999+D'6', 1
	MOVLW 0x69
	MOVWF CompTempVar999+D'4', 1
	MOVLW 0x76
	MOVWF CompTempVar999+D'3', 1
	CLRF CompTempVar999+D'8', 1
	MOVLW HIGH(CompTempVar999+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar999+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW HIGH(gbl_my_device_descriptor+D'0')
	MOVWF CompTempVar1001, 1
	MOVLW LOW(gbl_my_device_descriptor+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar1001, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	MOVLW 0x12
	MOVWF usb_get_de_00025_1_descrip_00049, 1
	CLRF usb_get_de_00025_1_descrip_00049+D'1', 1
	BRA	label37
label29
	MOVLW 0x20
	MOVWF CompTempVar1002, 1
	MOVWF CompTempVar1002+D'7', 1
	MOVLW 0x43
	MOVWF CompTempVar1002+D'1', 1
	MOVLW 0x66
	MOVWF CompTempVar1002+D'4', 1
	MOVLW 0x67
	MOVWF CompTempVar1002+D'6', 1
	MOVLW 0x69
	MOVWF CompTempVar1002+D'5', 1
	MOVLW 0x6E
	MOVWF CompTempVar1002+D'3', 1
	MOVLW 0x6F
	MOVWF CompTempVar1002+D'2', 1
	CLRF CompTempVar1002+D'8', 1
	MOVLW HIGH(CompTempVar1002+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1002+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW HIGH(gbl_complete_mouse_configuration+D'0')
	MOVWF CompTempVar1004, 1
	MOVLW LOW(gbl_complete_mouse_configuration+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar1004, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	MOVLW 0x22
	MOVWF usb_get_de_00025_1_descrip_00049, 1
	CLRF usb_get_de_00025_1_descrip_00049+D'1', 1
	BRA	label37
label30
	MOVLW 0x20
	MOVWF CompTempVar1005, 1
	MOVWF CompTempVar1005+D'8', 1
	MOVLW 0x3A
	MOVWF CompTempVar1005+D'7', 1
	MOVLW 0x53
	MOVWF CompTempVar1005+D'1', 1
	MOVLW 0x67
	MOVWF CompTempVar1005+D'6', 1
	MOVLW 0x69
	MOVWF CompTempVar1005+D'4', 1
	MOVLW 0x6E
	MOVWF CompTempVar1005+D'5', 1
	MOVLW 0x72
	MOVWF CompTempVar1005+D'3', 1
	MOVLW 0x74
	MOVWF CompTempVar1005+D'2', 1
	CLRF CompTempVar1005+D'9', 1
	MOVLW HIGH(CompTempVar1005+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1005+D'0')
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
	MOVWF CompTempVar1007, 1
	MOVLW LOW(gbl_string_00+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar1007, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	BRA	label37
label32
	MOVLW 0x18
	MOVWF usb_get_de_00025_1_descrip_00049, 1
	CLRF usb_get_de_00025_1_descrip_00049+D'1', 1
	MOVLW HIGH(gbl_string_01+D'0')
	MOVWF CompTempVar1008, 1
	MOVLW LOW(gbl_string_01+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar1008, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	BRA	label37
label33
	MOVLW 0x14
	MOVWF usb_get_de_00025_1_descrip_00049, 1
	CLRF usb_get_de_00025_1_descrip_00049+D'1', 1
	MOVLW HIGH(gbl_string_02+D'0')
	MOVWF CompTempVar1009, 1
	MOVLW LOW(gbl_string_02+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar1009, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	BRA	label37
label34
	MOVLW 0x20
	MOVWF CompTempVar1010, 1
	MOVWF CompTempVar1010+D'7', 1
	MOVWF CompTempVar1010+D'12', 1
	MOVWF CompTempVar1010+D'24', 1
	MOVLW 0x28
	MOVWF CompTempVar1010+D'13', 1
	MOVLW 0x29
	MOVWF CompTempVar1010+D'23', 1
	MOVLW 0x44
	MOVWF CompTempVar1010+D'1', 1
	MOVLW 0x51
	MOVWF CompTempVar1010+D'8', 1
	MOVLW 0x61
	MOVWF CompTempVar1010+D'10', 1
	MOVWF CompTempVar1010+D'17', 1
	MOVLW 0x63
	MOVWF CompTempVar1010+D'5', 1
	MOVLW 0x64
	MOVWF CompTempVar1010+D'19', 1
	MOVWF CompTempVar1010+D'22', 1
	MOVLW 0x65
	MOVWF CompTempVar1010+D'2', 1
	MOVWF CompTempVar1010+D'6', 1
	MOVWF CompTempVar1010+D'21', 1
	MOVLW 0x68
	MOVWF CompTempVar1010+D'16', 1
	MOVLW 0x69
	MOVWF CompTempVar1010+D'4', 1
	MOVLW 0x6C
	MOVWF CompTempVar1010+D'11', 1
	MOVWF CompTempVar1010+D'20', 1
	MOVLW 0x6E
	MOVWF CompTempVar1010+D'15', 1
	MOVWF CompTempVar1010+D'18', 1
	MOVLW 0x75
	MOVWF CompTempVar1010+D'9', 1
	MOVWF CompTempVar1010+D'14', 1
	MOVLW 0x76
	MOVWF CompTempVar1010+D'3', 1
	CLRF CompTempVar1010+D'25', 1
	MOVLW HIGH(CompTempVar1010+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1010+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	BRA	label37
label35
	MOVLW 0x20
	MOVWF CompTempVar1012, 1
	MOVWF CompTempVar1012+D'4', 1
	MOVWF CompTempVar1012+D'11', 1
	MOVLW 0x44
	MOVWF CompTempVar1012+D'3', 1
	MOVLW 0x48
	MOVWF CompTempVar1012+D'1', 1
	MOVLW 0x49
	MOVWF CompTempVar1012+D'2', 1
	MOVLW 0x52
	MOVWF CompTempVar1012+D'5', 1
	MOVLW 0x65
	MOVWF CompTempVar1012+D'6', 1
	MOVLW 0x6F
	MOVWF CompTempVar1012+D'8', 1
	MOVLW 0x70
	MOVWF CompTempVar1012+D'7', 1
	MOVLW 0x72
	MOVWF CompTempVar1012+D'9', 1
	MOVLW 0x74
	MOVWF CompTempVar1012+D'10', 1
	CLRF CompTempVar1012+D'12', 1
	MOVLW HIGH(CompTempVar1012+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1012+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW 0x32
	MOVWF usb_get_de_00025_1_descrip_00049, 1
	CLRF usb_get_de_00025_1_descrip_00049+D'1', 1
	MOVLW HIGH(gbl_mouse_report_descriptor+D'0')
	MOVWF CompTempVar1014, 1
	MOVLW LOW(gbl_mouse_report_descriptor+D'0')
	MOVWF usb_get_de_00025_1_descrip_00048, 1
	MOVF CompTempVar1014, W, 1
	MOVWF usb_get_de_00025_1_descrip_00048+D'1', 1
	BRA	label37
label36
	MOVLW 0x3F
	MOVWF CompTempVar1015, 1
	MOVWF CompTempVar1015+D'1', 1
	MOVLW 0x20
	MOVWF CompTempVar1015+D'2', 1
	CLRF CompTempVar1015+D'3', 1
	MOVLW HIGH(CompTempVar1015+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1015+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF usb_get_de_00025_arg_descr_00026, W, 1
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
	CALL serial_pri_00018
label37
	MOVF usb_get_de_00025_arg_rtn_d_00028+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_get_de_00025_arg_rtn_d_00028, W, 1
	MOVWF FSR0L
	INCF FSR0L, F
	MOVF usb_get_de_00025_1_descrip_00048, W, 1
	MOVWF CompTempVar1017, 1
	MOVF usb_get_de_00025_1_descrip_00048+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar1017, W, 1
	MOVWF INDF0
	MOVF usb_get_de_00025_arg_rtn_d_00029+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_get_de_00025_arg_rtn_d_00029, W, 1
	MOVWF FSR0L
	INCF FSR0L, F
	MOVF usb_get_de_00025_1_descrip_00049, W, 1
	MOVWF CompTempVar1018, 1
	MOVF usb_get_de_00025_1_descrip_00049+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar1018, W, 1
	MOVWF INDF0
	RETURN
; } usb_get_descriptor_callback function end

	ORG 0x000005DE
usb_config_0003E
; { usb_configure_endpoints ; function begin
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar944+D'6', 1
	MOVWF CompTempVar944+D'10', 1
	MOVLW 0x43
	MOVWF CompTempVar944, 1
	MOVLW 0x65
	MOVWF CompTempVar944+D'7', 1
	MOVLW 0x66
	MOVWF CompTempVar944+D'3', 1
	MOVLW 0x67
	MOVWF CompTempVar944+D'5', 1
	MOVLW 0x69
	MOVWF CompTempVar944+D'4', 1
	MOVLW 0x6E
	MOVWF CompTempVar944+D'2', 1
	MOVLW 0x6F
	MOVWF CompTempVar944+D'1', 1
	MOVLW 0x70
	MOVWF CompTempVar944+D'8', 1
	MOVLW 0x73
	MOVWF CompTempVar944+D'9', 1
	CLRF CompTempVar944+D'11', 1
	MOVLW HIGH(CompTempVar944+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar944+D'0')
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

	ORG 0x00000634
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

	ORG 0x00000672
usb_prime__00040
; { usb_prime_ep0_out ; function begin
	MOVLW 0x50
	MOVLB 0x02
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

	ORG 0x0000069A
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
	MOVWF CompTempVar949, 1
	MOVWF CompTempVar949+D'4', 1
	MOVLW 0x3A
	MOVWF CompTempVar949+D'3', 1
	MOVLW 0x44
	MOVWF CompTempVar949+D'2', 1
	MOVLW 0x47
	MOVWF CompTempVar949+D'1', 1
	CLRF CompTempVar949+D'5', 1
	MOVLW HIGH(CompTempVar949+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar949+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF usb_handle_00041_arg_sdp+D'3', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00041_1_descrip_00042, 1
	MOVLB 0x02
	MOVF usb_handle_00041_arg_sdp+D'2', W, 1
	MOVLB 0x01
	MOVWF usb_handle_00041_1_descrip_00043, 1
	MOVF usb_handle_00041_1_descrip_00042, W, 1
	MOVLB 0x02
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
	MOVLB 0x01
	MOVF usb_handle_00041_1_descrip_00042, W, 1
	MOVLB 0x02
	MOVWF usb_get_de_00025_arg_descr_00026, 1
	MOVLB 0x01
	MOVF usb_handle_00041_1_descrip_00043, W, 1
	MOVLB 0x02
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
	MOVLB 0x00
	MOVF gbl_delivery_ptr, F, 1
	BNZ	label47
	MOVF gbl_delivery_ptr+D'1', F, 1
	BZ	label48
label47
	MOVLW 0x03
	MOVWF gbl_control_mode, 1
	MOVLB 0x02
	MOVF usb_handle_00041_arg_sdp+D'6', W, 1
	MOVLB 0x00
	MOVWF gbl_delivery_bytes_max_send, 1
	MOVLB 0x02
	MOVF usb_handle_00041_arg_sdp+D'7', W, 1
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
	CALL usb_send_d_0003D
	RETURN
label48
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar954, 1
	MOVWF CompTempVar954+D'8', 1
	MOVLW 0x3C
	MOVWF CompTempVar954+D'1', 1
	MOVLW 0x3E
	MOVWF CompTempVar954+D'7', 1
	MOVLW 0x61
	MOVWF CompTempVar954+D'4', 1
	MOVLW 0x6C
	MOVWF CompTempVar954+D'5', 1
	MOVWF CompTempVar954+D'6', 1
	MOVLW 0x73
	MOVWF CompTempVar954+D'2', 1
	MOVLW 0x74
	MOVWF CompTempVar954+D'3', 1
	CLRF CompTempVar954+D'9', 1
	MOVLW HIGH(CompTempVar954+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar954+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	CALL usb_stall__00020
	RETURN
label49
	MOVF usb_handle_00041_arg_sdp+D'2', W, 1
	MOVLB 0x00
	MOVWF gbl_usb_address, 1
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar956, 1
	MOVLW 0x53
	MOVWF CompTempVar956+D'1', 1
	MOVLW 0x41
	MOVWF CompTempVar956+D'2', 1
	MOVLW 0x3A
	MOVWF CompTempVar956+D'3', 1
	CLRF CompTempVar956+D'4', 1
	MOVLW HIGH(CompTempVar956+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar956+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLB 0x00
	MOVF gbl_usb_address, W, 1
	MOVLB 0x02
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
	MOVWF CompTempVar958, 1
	MOVWF CompTempVar958+D'4', 1
	MOVLW 0x3A
	MOVWF CompTempVar958+D'3', 1
	MOVLW 0x43
	MOVWF CompTempVar958+D'2', 1
	MOVLW 0x53
	MOVWF CompTempVar958+D'1', 1
	CLRF CompTempVar958+D'5', 1
	MOVLW HIGH(CompTempVar958+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar958+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW 0x06
	MOVLB 0x00
	MOVWF gbl_control_mode, 1
	CALL usb_send_e_0001F
	MOVLW 0x03
	MOVLB 0x00
	MOVWF gbl_usb_state, 1
	CALL usb_config_0003E
	RETURN
label51
	MOVLW 0x20
	MOVWF CompTempVar960, 1
	MOVWF CompTempVar960+D'3', 1
	MOVLW 0x47
	MOVWF CompTempVar960+D'1', 1
	MOVLW 0x49
	MOVWF CompTempVar960+D'2', 1
	CLRF CompTempVar960+D'4', 1
	MOVLW HIGH(CompTempVar960+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar960+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW 0x03
	MOVLB 0x00
	MOVWF gbl_control_mode, 1
	MOVLW 0x01
	MOVLB 0x02
	MOVWF usb_send_o_0003F_arg_data, 1
	CALL usb_send_o_0003F
label52
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar962, 1
	MOVWF CompTempVar962+D'3', 1
	MOVLW 0x47
	MOVWF CompTempVar962+D'1', 1
	MOVLW 0x53
	MOVWF CompTempVar962+D'2', 1
	CLRF CompTempVar962+D'4', 1
	MOVLW HIGH(CompTempVar962+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar962+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	CLRF usb_send_o_0003F_arg_data, 1
	CALL usb_send_o_0003F
	RETURN
label53
	MOVLW 0x20
	MOVWF CompTempVar964, 1
	MOVWF CompTempVar964+D'5', 1
	MOVLW 0x3F
	MOVWF CompTempVar964+D'1', 1
	MOVWF CompTempVar964+D'2', 1
	MOVLW 0x52
	MOVWF CompTempVar964+D'4', 1
	MOVLW 0x53
	MOVWF CompTempVar964+D'3', 1
	CLRF CompTempVar964+D'6', 1
	MOVLW HIGH(CompTempVar964+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar964+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF usb_handle_00041_arg_sdp+D'1', W, 1
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
	RETURN
; } usb_handle_standard_request function end

	ORG 0x00000890
usb_handle_00024
; { usb_handle_class_ctrl_write_callback ; function begin
	RETURN
; } usb_handle_class_ctrl_write_callback function end

	ORG 0x00000892
usb_handle_00023
; { usb_handle_class_ctrl_read_callback ; function begin
	RETURN
; } usb_handle_class_ctrl_read_callback function end

	ORG 0x00000894
usb_handle_00022
; { usb_handle_class_request_callback ; function begin
	MOVLW 0x20
	MOVWF CompTempVar1019+D'5', 1
	MOVWF CompTempVar1019+D'14', 1
	MOVLW 0x3A
	MOVWF CompTempVar1019+D'13', 1
	MOVLW 0x43
	MOVWF CompTempVar1019, 1
	MOVLW 0x61
	MOVWF CompTempVar1019+D'2', 1
	MOVLW 0x65
	MOVWF CompTempVar1019+D'7', 1
	MOVWF CompTempVar1019+D'10', 1
	MOVLW 0x6C
	MOVWF CompTempVar1019+D'1', 1
	MOVLW 0x71
	MOVWF CompTempVar1019+D'8', 1
	MOVLW 0x72
	MOVWF CompTempVar1019+D'6', 1
	MOVLW 0x73
	MOVWF CompTempVar1019+D'3', 1
	MOVWF CompTempVar1019+D'4', 1
	MOVWF CompTempVar1019+D'11', 1
	MOVLW 0x74
	MOVWF CompTempVar1019+D'12', 1
	MOVLW 0x75
	MOVWF CompTempVar1019+D'9', 1
	CLRF CompTempVar1019+D'15', 1
	MOVLW HIGH(CompTempVar1019+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1019+D'0')
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
	MOVWF CompTempVar1021, 1
	MOVWF CompTempVar1021+D'9', 1
	MOVLW 0x53
	MOVWF CompTempVar1021+D'1', 1
	MOVLW 0x5F
	MOVWF CompTempVar1021+D'4', 1
	MOVLW 0x64
	MOVWF CompTempVar1021+D'6', 1
	MOVLW 0x65
	MOVWF CompTempVar1021+D'2', 1
	MOVWF CompTempVar1021+D'8', 1
	MOVLW 0x69
	MOVWF CompTempVar1021+D'5', 1
	MOVLW 0x6C
	MOVWF CompTempVar1021+D'7', 1
	MOVLW 0x74
	MOVWF CompTempVar1021+D'3', 1
	CLRF CompTempVar1021+D'10', 1
	MOVLW HIGH(CompTempVar1021+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar1021+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	CALL usb_stall__00020
	RETURN
; } usb_handle_class_request_callback function end

	ORG 0x00000946
memcpy8_00000
; { memcpy8 ; function begin
	MOVF memcpy8_00000_arg_dst, W, 1
	MOVLB 0x02
	MOVWF memcpy8_00000_1_dst2, 1
	MOVLB 0x00
	MOVF memcpy8_00000_arg_dst+D'1', W, 1
	MOVLB 0x02
	MOVWF memcpy8_00000_1_dst2+D'1', 1
	MOVLB 0x01
	MOVF memcpy8_00000_arg_src, W, 1
	MOVLB 0x02
	MOVWF memcpy8_00000_1_src2, 1
	MOVLB 0x01
	MOVF memcpy8_00000_arg_src+D'1', W, 1
	MOVLB 0x02
	MOVWF memcpy8_00000_1_src2+D'1', 1
label59
	MOVLW 0x00
	MOVLB 0x00
	CPFSGT memcpy8_00000_arg_len, 1
	BRA	label60
	MOVLB 0x02
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
	MOVLB 0x00
	DECF memcpy8_00000_arg_len, F, 1
	BRA	label59
label60
	MOVF memcpy8_00000_arg_dst, W, 1
	MOVLB 0x02
	MOVWF CompTempVarRet567, 1
	MOVLB 0x00
	MOVF memcpy8_00000_arg_dst+D'1', W, 1
	MOVLB 0x02
	MOVWF CompTempVarRet567+D'1', 1
	RETURN
; } memcpy8 function end

	ORG 0x000009A4
usb_handle_0003C
; { usb_handle_stall ; function begin
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar919, 1
	MOVWF CompTempVar919+D'8', 1
	MOVLW 0x3A
	MOVWF CompTempVar919+D'2', 1
	MOVLW 0x53
	MOVWF CompTempVar919+D'3', 1
	MOVLW 0x55
	MOVWF CompTempVar919+D'1', 1
	MOVLW 0x61
	MOVWF CompTempVar919+D'5', 1
	MOVLW 0x6C
	MOVWF CompTempVar919+D'6', 1
	MOVWF CompTempVar919+D'7', 1
	MOVLW 0x74
	MOVWF CompTempVar919+D'4', 1
	CLRF CompTempVar919+D'9', 1
	MOVLW HIGH(CompTempVar919+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar919+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	RETURN
; } usb_handle_stall function end

	ORG 0x000009D6
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
	MOVWF CompTempVar917, 1
	MOVLW 0x52
	MOVWF CompTempVar917+D'1', 1
	MOVLW 0x20
	MOVWF CompTempVar917+D'2', 1
	CLRF CompTempVar917+D'3', 1
	MOVLW HIGH(CompTempVar917+D'0')
	MOVLB 0x02
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar917+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVF gbl_uir, W
	MOVWF serial_pri_00015_arg_i, 1
	CALL serial_pri_00015
	RETURN
; } usb_handle_reset function end

	ORG 0x00000A42
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
	MOVWF CompTempVar859, 1
	MOVLW 0x44
	MOVWF CompTempVar859+D'1', 1
	MOVLW 0x49
	MOVWF CompTempVar859+D'2', 1
	MOVLW 0x20
	MOVWF CompTempVar859+D'3', 1
	CLRF CompTempVar859+D'4', 1
	MOVLW HIGH(CompTempVar859+D'0')
	MOVLB 0x02
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar859+D'0')
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
	MOVWF CompTempVar862, 1
	RRCF CompTempVar862, F, 1
	MOVLW 0x3F
	ANDWF CompTempVar862, F, 1
	MOVLW 0x0F
	ANDWF CompTempVar862, W, 1
	MOVWF usb_handle_0003A_1_pid, 1
	MOVLW 0x0A
	MOVWF CompTempVar863, 1
	MOVLW 0x44
	MOVWF CompTempVar863+D'1', 1
	MOVLW 0x4F
	MOVWF CompTempVar863+D'2', 1
	MOVLW 0x20
	MOVWF CompTempVar863+D'3', 1
	CLRF CompTempVar863+D'4', 1
	MOVLW HIGH(CompTempVar863+D'0')
	MOVLB 0x02
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar863+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
label62
	MOVLB 0x00
	MOVF usb_handle_0003A_1_end_point, F, 1
	BZ	label63
	MOVLW 0x45
	MOVLB 0x02
	MOVWF serial_put_00010_arg_c, 1
	CALL serial_put_00010
	MOVLB 0x00
	MOVF usb_handle_0003A_1_end_point, W, 1
	MOVLB 0x02
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
	MOVLB 0x01
	MOVWF memcpy8_00000_arg_src+D'1', 1
	MOVLW LOW(gbl_buffer_0_out+D'0')
	MOVWF memcpy8_00000_arg_src, 1
	MOVLW 0x08
	MOVLB 0x00
	MOVWF memcpy8_00000_arg_len, 1
	CALL memcpy8_00000
	CALL usb_prime__00040
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar873, 1
	MOVWF CompTempVar873+D'6', 1
	MOVLW 0x53
	MOVWF CompTempVar873+D'1', 1
	MOVLW 0x65
	MOVWF CompTempVar873+D'2', 1
	MOVLW 0x70
	MOVWF CompTempVar873+D'5', 1
	MOVLW 0x74
	MOVWF CompTempVar873+D'3', 1
	MOVLW 0x75
	MOVWF CompTempVar873+D'4', 1
	CLRF CompTempVar873+D'7', 1
	MOVLW HIGH(CompTempVar873+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar873+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLB 0x00
	MOVF gbl_usb_sdp, W, 1
	MOVLB 0x02
	MOVWF serial_pri_00015_arg_i, 1
	CALL serial_pri_00015
	MOVLW 0x20
	MOVWF serial_put_00010_arg_c, 1
	CALL serial_put_00010
	MOVLB 0x00
	BTFSS gbl_usb_sdp,7, 1
	BRA	label64
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar875, 1
	MOVWF CompTempVar875+D'5', 1
	MOVWF CompTempVar875+D'14', 1
	MOVLW 0x3D
	MOVWF CompTempVar875+D'11', 1
	MOVLW 0x44
	MOVWF CompTempVar875+D'1', 1
	MOVLW 0x49
	MOVWF CompTempVar875+D'12', 1
	MOVLW 0x4E
	MOVWF CompTempVar875+D'13', 1
	MOVLW 0x61
	MOVWF CompTempVar875+D'2', 1
	MOVWF CompTempVar875+D'4', 1
	MOVWF CompTempVar875+D'8', 1
	MOVLW 0x65
	MOVWF CompTempVar875+D'10', 1
	MOVLW 0x67
	MOVWF CompTempVar875+D'9', 1
	MOVLW 0x73
	MOVWF CompTempVar875+D'6', 1
	MOVLW 0x74
	MOVWF CompTempVar875+D'3', 1
	MOVWF CompTempVar875+D'7', 1
	CLRF CompTempVar875+D'15', 1
	MOVLW HIGH(CompTempVar875+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar875+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	BRA	label65
label64
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar877, 1
	MOVWF CompTempVar877+D'5', 1
	MOVWF CompTempVar877+D'18', 1
	MOVLW 0x2F
	MOVWF CompTempVar877+D'15', 1
	MOVLW 0x3D
	MOVWF CompTempVar877+D'11', 1
	MOVLW 0x44
	MOVWF CompTempVar877+D'1', 1
	MOVLW 0x4E
	MOVWF CompTempVar877+D'16', 1
	MOVLW 0x4F
	MOVWF CompTempVar877+D'12', 1
	MOVWF CompTempVar877+D'17', 1
	MOVLW 0x54
	MOVWF CompTempVar877+D'14', 1
	MOVLW 0x55
	MOVWF CompTempVar877+D'13', 1
	MOVLW 0x61
	MOVWF CompTempVar877+D'2', 1
	MOVWF CompTempVar877+D'4', 1
	MOVWF CompTempVar877+D'8', 1
	MOVLW 0x65
	MOVWF CompTempVar877+D'10', 1
	MOVLW 0x67
	MOVWF CompTempVar877+D'9', 1
	MOVLW 0x73
	MOVWF CompTempVar877+D'6', 1
	MOVLW 0x74
	MOVWF CompTempVar877+D'3', 1
	MOVWF CompTempVar877+D'7', 1
	CLRF CompTempVar877+D'19', 1
	MOVLW HIGH(CompTempVar877+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar877+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
label65
	MOVLW 0x40
	MOVLB 0x00
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar867, 1
	TSTFSZ CompTempVar867, 1
	BRA	label67
	MOVLW 0x20
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar868, 1
	TSTFSZ CompTempVar868, 1
	BRA	label67
	MOVLW 0x1F
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar879, 1
	MOVF CompTempVar879, F, 1
	BZ	label66
	MOVLW 0x1F
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar880, 1
	DECF CompTempVar880, W, 1
	BZ	label66
	MOVLW 0x1F
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar881, 1
	MOVLW 0x03
	CPFSEQ CompTempVar881, 1
	BRA	label66
label66
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar882, 1
	MOVWF CompTempVar882+D'4', 1
	MOVLW 0x64
	MOVWF CompTempVar882+D'3', 1
	MOVLW 0x73
	MOVWF CompTempVar882+D'1', 1
	MOVLW 0x74
	MOVWF CompTempVar882+D'2', 1
	CLRF CompTempVar882+D'5', 1
	MOVLW HIGH(CompTempVar882+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar882+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'7', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00041_arg_sdp+D'7', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'6', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00041_arg_sdp+D'6', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'5', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00041_arg_sdp+D'5', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'4', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00041_arg_sdp+D'4', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'3', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00041_arg_sdp+D'3', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'2', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00041_arg_sdp+D'2', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'1', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00041_arg_sdp+D'1', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp, W, 1
	MOVLB 0x02
	MOVWF usb_handle_00041_arg_sdp, 1
	CALL usb_handle_00041
	BRA	label69
label67
	MOVLW 0x40
	ANDWF gbl_usb_sdp, W, 1
	MOVWF CompTempVar870, 1
	TSTFSZ CompTempVar870, 1
	BRA	label68
	BTFSS gbl_usb_sdp,5, 1
	BRA	label68
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar884, 1
	MOVWF CompTempVar884+D'6', 1
	MOVLW 0x61
	MOVWF CompTempVar884+D'3', 1
	MOVLW 0x63
	MOVWF CompTempVar884+D'1', 1
	MOVLW 0x6C
	MOVWF CompTempVar884+D'2', 1
	MOVLW 0x73
	MOVWF CompTempVar884+D'4', 1
	MOVWF CompTempVar884+D'5', 1
	CLRF CompTempVar884+D'7', 1
	MOVLW HIGH(CompTempVar884+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar884+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'7', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00022_arg_sdp+D'7', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'6', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00022_arg_sdp+D'6', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'5', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00022_arg_sdp+D'5', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'4', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00022_arg_sdp+D'4', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'3', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00022_arg_sdp+D'3', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'2', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00022_arg_sdp+D'2', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp+D'1', W, 1
	MOVLB 0x02
	MOVWF usb_handle_00022_arg_sdp+D'1', 1
	MOVLB 0x00
	MOVF gbl_usb_sdp, W, 1
	MOVLB 0x02
	MOVWF usb_handle_00022_arg_sdp, 1
	CALL usb_handle_00022
	BRA	label69
label68
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar886, 1
	MOVWF CompTempVar886+D'6', 1
	MOVLW 0x3D
	MOVWF CompTempVar886+D'8', 1
	MOVLW 0x3F
	MOVWF CompTempVar886+D'1', 1
	MOVWF CompTempVar886+D'2', 1
	MOVLW 0x65
	MOVWF CompTempVar886+D'4', 1
	MOVLW 0x71
	MOVWF CompTempVar886+D'5', 1
	MOVLW 0x72
	MOVWF CompTempVar886+D'3', 1
	MOVLW 0x74
	MOVWF CompTempVar886+D'7', 1
	CLRF CompTempVar886+D'9', 1
	MOVLW HIGH(CompTempVar886+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar886+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLB 0x00
	MOVF gbl_usb_sdp, W, 1
	MOVLB 0x02
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
	MOVWF CompTempVar888, 1
	MOVWF CompTempVar888+D'3', 1
	MOVLW 0x49
	MOVWF CompTempVar888+D'1', 1
	MOVLW 0x4E
	MOVWF CompTempVar888+D'2', 1
	CLRF CompTempVar888+D'4', 1
	MOVLW HIGH(CompTempVar888+D'0')
	MOVLB 0x02
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar888+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW 0x03
	MOVLB 0x00
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
	MOVLB 0x02
	MOVWF CompTempVar890, 1
	MOVLW 0x2D
	MOVWF CompTempVar890+D'1', 1
	MOVWF CompTempVar890+D'2', 1
	MOVWF CompTempVar890+D'3', 1
	MOVWF CompTempVar890+D'4', 1
	MOVLW 0x0A
	MOVWF CompTempVar890+D'5', 1
	CLRF CompTempVar890+D'6', 1
	MOVLW HIGH(CompTempVar890+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar890+D'0')
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
	MOVWF CompTempVar892, 1
	MOVWF CompTempVar892+D'5', 1
	MOVWF CompTempVar892+D'10', 1
	MOVWF CompTempVar892+D'15', 1
	MOVWF CompTempVar892+D'21', 1
	MOVWF CompTempVar892+D'27', 1
	MOVWF CompTempVar892+D'29', 1
	MOVWF CompTempVar892+D'34', 1
	MOVWF CompTempVar892+D'37', 1
	MOVWF CompTempVar892+D'43', 1
	MOVLW 0x2D
	MOVWF CompTempVar892+D'28', 1
	MOVLW 0x3F
	MOVWF CompTempVar892+D'42', 1
	MOVLW 0x61
	MOVWF CompTempVar892+D'8', 1
	MOVWF CompTempVar892+D'12', 1
	MOVWF CompTempVar892+D'14', 1
	MOVWF CompTempVar892+D'18', 1
	MOVWF CompTempVar892+D'24', 1
	MOVLW 0x63
	MOVWF CompTempVar892+D'1', 1
	MOVWF CompTempVar892+D'22', 1
	MOVWF CompTempVar892+D'38', 1
	MOVLW 0x64
	MOVWF CompTempVar892+D'9', 1
	MOVWF CompTempVar892+D'11', 1
	MOVLW 0x65
	MOVWF CompTempVar892+D'7', 1
	MOVWF CompTempVar892+D'20', 1
	MOVWF CompTempVar892+D'33', 1
	MOVWF CompTempVar892+D'41', 1
	MOVLW 0x67
	MOVWF CompTempVar892+D'19', 1
	MOVLW 0x6C
	MOVWF CompTempVar892+D'4', 1
	MOVWF CompTempVar892+D'23', 1
	MOVLW 0x6D
	MOVWF CompTempVar892+D'30', 1
	MOVWF CompTempVar892+D'40', 1
	MOVLW 0x6F
	MOVWF CompTempVar892+D'31', 1
	MOVWF CompTempVar892+D'36', 1
	MOVWF CompTempVar892+D'39', 1
	MOVLW 0x72
	MOVWF CompTempVar892+D'3', 1
	MOVWF CompTempVar892+D'6', 1
	MOVWF CompTempVar892+D'32', 1
	MOVLW 0x73
	MOVWF CompTempVar892+D'16', 1
	MOVWF CompTempVar892+D'25', 1
	MOVWF CompTempVar892+D'26', 1
	MOVLW 0x74
	MOVWF CompTempVar892+D'2', 1
	MOVWF CompTempVar892+D'13', 1
	MOVWF CompTempVar892+D'17', 1
	MOVWF CompTempVar892+D'35', 1
	CLRF CompTempVar892+D'44', 1
	MOVLW HIGH(CompTempVar892+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar892+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	CALL usb_handle_00023
	RETURN
label75
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar894, 1
	MOVWF CompTempVar894+D'3', 1
	MOVLW 0x3D
	MOVWF CompTempVar894+D'6', 1
	MOVLW 0x3F
	MOVWF CompTempVar894+D'1', 1
	MOVWF CompTempVar894+D'2', 1
	MOVLW 0x63
	MOVWF CompTempVar894+D'4', 1
	MOVLW 0x6D
	MOVWF CompTempVar894+D'5', 1
	CLRF CompTempVar894+D'7', 1
	MOVLW HIGH(CompTempVar894+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar894+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLB 0x00
	MOVF gbl_control_mode, W, 1
	MOVLB 0x02
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
	MOVLB 0x02
	MOVWF CompTempVar896, 1
	MOVWF CompTempVar896+D'1', 1
	MOVWF CompTempVar896+D'2', 1
	MOVWF CompTempVar896+D'3', 1
	MOVLW 0x41
	MOVWF CompTempVar896+D'4', 1
	MOVLW 0x0A
	MOVWF CompTempVar896+D'5', 1
	CLRF CompTempVar896+D'6', 1
	MOVLW HIGH(CompTempVar896+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar896+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLW 0x03
	MOVLB 0x00
	CPFSEQ gbl_control_mode, 1
	BRA	label77
	MOVLW 0x20
	MOVWF CompTempVar898, 1
	MOVWF CompTempVar898+D'3', 1
	MOVLW 0x26
	MOVWF CompTempVar898+D'1', 1
	MOVLW 0x32
	MOVWF CompTempVar898+D'2', 1
	CLRF CompTempVar898+D'4', 1
	MOVLW HIGH(CompTempVar898+D'0')
	MOVLB 0x02
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar898+D'0')
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
	MOVLB 0x02
	MOVWF CompTempVar900, 1
	MOVWF CompTempVar900+D'3', 1
	MOVWF CompTempVar900+D'8', 1
	MOVLW 0x65
	MOVWF CompTempVar900+D'5', 1
	MOVLW 0x6E
	MOVWF CompTempVar900+D'6', 1
	MOVLW 0x73
	MOVWF CompTempVar900+D'1', 1
	MOVWF CompTempVar900+D'4', 1
	MOVLW 0x74
	MOVWF CompTempVar900+D'2', 1
	MOVWF CompTempVar900+D'7', 1
	CLRF CompTempVar900+D'9', 1
	MOVLW HIGH(CompTempVar900+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar900+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLB 0x00
	CLRF gbl_control_mode, 1
	RETURN
label79
	DECF usb_handle_0003A_1_pid, W, 1
	BNZ	label84
	MOVLW 0x05
	CPFSEQ gbl_control_mode, 1
	BRA	label80
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar902, 1
	MOVLW 0x2D
	MOVWF CompTempVar902+D'1', 1
	MOVWF CompTempVar902+D'2', 1
	MOVWF CompTempVar902+D'3', 1
	MOVWF CompTempVar902+D'4', 1
	MOVLW 0x0A
	MOVWF CompTempVar902+D'5', 1
	CLRF CompTempVar902+D'6', 1
	MOVLW HIGH(CompTempVar902+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar902+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLB 0x00
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
	MOVLB 0x02
	MOVWF CompTempVar905+D'5', 1
	MOVWF CompTempVar905+D'13', 1
	MOVLW 0x3F
	MOVWF CompTempVar905, 1
	MOVWF CompTempVar905+D'1', 1
	MOVLW 0x4F
	MOVWF CompTempVar905+D'10', 1
	MOVLW 0x54
	MOVWF CompTempVar905+D'12', 1
	MOVLW 0x55
	MOVWF CompTempVar905+D'11', 1
	MOVLW 0x5F
	MOVWF CompTempVar905+D'9', 1
	MOVLW 0x64
	MOVWF CompTempVar905+D'8', 1
	MOVLW 0x69
	MOVWF CompTempVar905+D'7', 1
	MOVLW 0x6B
	MOVWF CompTempVar905+D'4', 1
	MOVLW 0x6E
	MOVWF CompTempVar905+D'3', 1
	MOVLW 0x70
	MOVWF CompTempVar905+D'6', 1
	MOVLW 0x75
	MOVWF CompTempVar905+D'2', 1
	CLRF CompTempVar905+D'14', 1
	MOVLW HIGH(CompTempVar905+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar905+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLB 0x00
	MOVF gbl_control_mode, W, 1
	MOVLB 0x02
	MOVWF serial_pri_00014_arg_i, 1
	CLRF serial_pri_00014_arg_i+D'1', 1
	CALL serial_pri_00014
label83
	CALL usb_prime__00040
	RETURN
label84
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar907, 1
	MOVWF CompTempVar907+D'6', 1
	MOVWF CompTempVar907+D'8', 1
	MOVLW 0x3D
	MOVWF CompTempVar907+D'7', 1
	MOVLW 0x44
	MOVWF CompTempVar907+D'5', 1
	MOVLW 0x49
	MOVWF CompTempVar907+D'4', 1
	MOVLW 0x4B
	MOVWF CompTempVar907+D'2', 1
	MOVLW 0x50
	MOVWF CompTempVar907+D'3', 1
	MOVLW 0x55
	MOVWF CompTempVar907+D'1', 1
	CLRF CompTempVar907+D'9', 1
	MOVLW HIGH(CompTempVar907+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar907+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	MOVLB 0x00
	MOVF usb_handle_0003A_1_pid, W, 1
	MOVLB 0x02
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
	MOVWF CompTempVar911, 1
	BCF STATUS,C
	RLCF CompTempVar911, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_handle_0003A_181_bd, 1
	MOVF INDF0, W
	MOVWF usb_handle_0003A_181_bd+D'1', 1
	LFSR 0x00,  gbl_ep_out_buffer_size
	MOVF FSR0L, W
	MOVF usb_handle_0003A_1_end_point, W, 1
	MOVWF CompTempVar914, 1
	BCF STATUS,C
	RLCF CompTempVar914, F, 1
	MOVF CompTempVar914, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF CompTempVar916, 1
	MOVF INDF0, W
	MOVWF CompTempVar916+D'1', 1
	MOVF usb_handle_0003A_181_bd+D'1', W, 1
	MOVWF FSR0H
	INCF usb_handle_0003A_181_bd, W, 1
	MOVWF FSR0L
	MOVF CompTempVar916, W, 1
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

	ORG 0x0000106C
handle_tic_00032
; { handle_tick ; function begin
	MOVLB 0x00
	INFSNZ gbl_22_tick, F, 1
	INCF gbl_22_tick+D'1', F, 1
	RETURN
; } handle_tick function end

	ORG 0x00001074
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

	ORG 0x0000109A
timer_0_ca_00038
; { timer_0_callback ; function begin
	CALL handle_tic_00032
	RETURN
; } timer_0_callback function end

	ORG 0x000010A0
turn_usb_i_0002F
; { turn_usb_ints_on ; function begin
	BSF gbl_uie,5
	BSF gbl_uie,3
	BSF gbl_uie,0
	BSF gbl_pie2,5
	RETURN
; } turn_usb_ints_on function end

	ORG 0x000010AA
timer_star_00036
; { timer_start_0 ; function begin
	MOVLB 0x00
	MOVF gbl_timer_0_start_value+D'1', W, 1
	MOVWF gbl_tmr0h
	MOVF gbl_timer_0_start_value, W, 1
	MOVWF gbl_tmr0l
	BSF gbl_t0con,7
	RETURN
; } timer_start_0 function end

	ORG 0x000010B8
timer_setu_00033
; { timer_setup_0 ; function begin
	BCF gbl_t0con,7
	BTFSS timer_setu_00033_arg_mode_8_bit,0, 1
	BRA	label89
	BSF gbl_t0con,6
	BRA	label90
label89
	BCF gbl_t0con,6
label90
	BCF gbl_t0con,5
	INCF timer_setu_00033_arg_presc_00034, W, 1
	BNZ	label91
	BSF gbl_t0con,3
	BRA	label92
label91
	BCF gbl_t0con,3
	MOVLW 0xF8
	ANDWF gbl_t0con, F
	MOVF timer_setu_00033_arg_presc_00034, W, 1
	IORWF gbl_t0con, F
label92
	MOVF timer_setu_00033_arg_timer_00035, W, 1
	MOVWF gbl_timer_0_start_value, 1
	MOVF timer_setu_00033_arg_timer_00035+D'1', W, 1
	MOVWF gbl_timer_0_start_value+D'1', 1
	BSF gbl_intcon,5
	RETURN
; } timer_setup_0 function end

	ORG 0x000010E4
usb_send_d_0001E
; { usb_send_data ; function begin
	LFSR 0x00,  gbl_ep_in_buffer_location
	MOVF FSR0L, W
	MOVF usb_send_d_0001E_arg_ep, W, 1
	MOVWF CompTempVar923, 1
	BCF STATUS,C
	RLCF CompTempVar923, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_send_d_0001E_1_buffer, 1
	MOVF INDF0, W
	MOVWF usb_send_d_0001E_1_buffer+D'1', 1
	LFSR 0x00,  gbl_ep_in_bd_location
	MOVF FSR0L, W
	MOVF usb_send_d_0001E_arg_ep, W, 1
	MOVWF CompTempVar926, 1
	BCF STATUS,C
	RLCF CompTempVar926, W, 1
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF usb_send_d_0001E_1_bd, 1
	MOVF INDF0, W
	MOVWF usb_send_d_0001E_1_bd+D'1', 1
	MOVF usb_send_d_0001E_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_0001E_1_bd, W, 1
	MOVWF FSR0L
	BTFSS INDF0,7
	BRA	label93
	MOVLW 0x20
	MOVLB 0x02
	MOVWF CompTempVar927, 1
	MOVWF CompTempVar927+D'7', 1
	MOVWF CompTempVar927+D'11', 1
	MOVWF CompTempVar927+D'15', 1
	MOVLW 0x21
	MOVWF CompTempVar927+D'1', 1
	MOVWF CompTempVar927+D'14', 1
	MOVLW 0x27
	MOVWF CompTempVar927+D'5', 1
	MOVLW 0x64
	MOVWF CompTempVar927+D'2', 1
	MOVLW 0x69
	MOVWF CompTempVar927+D'12', 1
	MOVLW 0x6E
	MOVWF CompTempVar927+D'4', 1
	MOVWF CompTempVar927+D'10', 1
	MOVLW 0x6F
	MOVWF CompTempVar927+D'3', 1
	MOVWF CompTempVar927+D'8', 1
	MOVLW 0x74
	MOVWF CompTempVar927+D'6', 1
	MOVWF CompTempVar927+D'13', 1
	MOVLW 0x77
	MOVWF CompTempVar927+D'9', 1
	CLRF CompTempVar927+D'16', 1
	MOVLW HIGH(CompTempVar927+D'0')
	MOVWF serial_pri_00012_arg_str+D'1', 1
	MOVLW LOW(CompTempVar927+D'0')
	MOVWF serial_pri_00012_arg_str, 1
	CALL serial_pri_00012
	RETURN
label93
	CLRF usb_send_d_0001E_1_count, 1
label94
	MOVF usb_send_d_0001E_arg_send_count, W, 1
	CPFSLT usb_send_d_0001E_1_count, 1
	BRA	label95
	MOVF usb_send_d_0001E_arg_data+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_0001E_arg_data, W, 1
	MOVWF FSR0L
	MOVF usb_send_d_0001E_1_count, W, 1
	MOVWF CompTempVar931, 1
	MOVF CompTempVar931, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar932, 1
	MOVF usb_send_d_0001E_1_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_0001E_1_buffer, W, 1
	ADDWF usb_send_d_0001E_1_count, W, 1
	MOVWF FSR0L
	MOVF CompTempVar932, W, 1
	MOVWF INDF0
	INCF usb_send_d_0001E_1_count, F, 1
	BRA	label94
label95
	MOVF usb_send_d_0001E_1_bd+D'1', W, 1
	MOVWF FSR0H
	INCF usb_send_d_0001E_1_bd, W, 1
	MOVWF FSR0L
	MOVF usb_send_d_0001E_1_count, W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	INCF FSR0L, F
	MOVF usb_send_d_0001E_1_buffer, W, 1
	MOVWF CompTempVar933, 1
	MOVF usb_send_d_0001E_1_buffer+D'1', W, 1
	MOVWF INDF0
	DECF FSR0L, F
	MOVF CompTempVar933, W, 1
	MOVWF INDF0
	BTFSS usb_send_d_0001E_arg_first,0, 1
	BRA	label96
	MOVF usb_send_d_0001E_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_0001E_1_bd, W, 1
	MOVWF FSR0L
	BCF INDF0,6
label96
	MOVF usb_send_d_0001E_1_bd+D'1', W, 1
	MOVWF FSR0H
	MOVF usb_send_d_0001E_1_bd, W, 1
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

	ORG 0x000011DE
usb_get_st_00021
; { usb_get_state ; function begin
	MOVLB 0x00
	MOVF gbl_usb_state, W, 1
	MOVWF CompTempVarRet943, 1
	RETURN
; } usb_get_state function end

	ORG 0x000011E6
tick_get_c_00030
; { tick_get_count ; function begin
	MOVLB 0x00
	BCF tick_get_c_00030_1_my_store_gie,0, 1
	BTFSC gbl_intcon,7
	BSF tick_get_c_00030_1_my_store_gie,0, 1
label97
	BCF gbl_intcon,7
	BTFSC gbl_intcon,7
	BRA	label97
	MOVF gbl_22_tick, W, 1
	MOVWF tick_get_c_00030_1_result, 1
	MOVF gbl_22_tick+D'1', W, 1
	MOVWF tick_get_c_00030_1_result+D'1', 1
	BTFSC tick_get_c_00030_1_my_store_gie,0, 1
	BSF gbl_intcon,7
	BTFSS tick_get_c_00030_1_my_store_gie,0, 1
	BCF gbl_intcon,7
	MOVF tick_get_c_00030_1_result, W, 1
	MOVWF CompTempVarRet840, 1
	MOVF tick_get_c_00030_1_result+D'1', W, 1
	MOVWF CompTempVarRet840+D'1', 1
	RETURN
; } tick_get_count function end

	ORG 0x0000120E
tick_calc__00031
; { tick_calc_diff ; function begin
	MOVF tick_calc__00031_arg_a, W, 1
	SUBWF tick_calc__00031_arg_b, W, 1
	MOVF tick_calc__00031_arg_a+D'1', W, 1
	CPFSEQ tick_calc__00031_arg_b+D'1', 1
	SUBWF tick_calc__00031_arg_b+D'1', W, 1
	BNC	label98
	MOVF tick_calc__00031_arg_a, W, 1
	SUBWF tick_calc__00031_arg_b, W, 1
	MOVWF CompTempVarRet841, 1
	MOVF tick_calc__00031_arg_a+D'1', W, 1
	SUBWFB tick_calc__00031_arg_b+D'1', W, 1
	MOVWF CompTempVarRet841+D'1', 1
	RETURN
label98
	MOVF tick_calc__00031_arg_a, W, 1
	SUBLW 0xFF
	MOVWF CompTempVar848, 1
	MOVLW 0xFF
	SUBFWB tick_calc__00031_arg_a+D'1', W, 1
	MOVWF CompTempVar845, 1
	MOVF tick_calc__00031_arg_b, W, 1
	ADDWF CompTempVar848, F, 1
	MOVF tick_calc__00031_arg_b+D'1', W, 1
	MOVWF CompTempVar849, 1
	MOVF CompTempVar845, W, 1
	ADDWFC CompTempVar849, F, 1
	INCF CompTempVar848, F, 1
	BTFSC STATUS,Z
	INCF CompTempVar849, F, 1
	MOVF CompTempVar848, W, 1
	MOVWF CompTempVarRet841, 1
	MOVF CompTempVar849, W, 1
	MOVWF CompTempVarRet841+D'1', 1
	RETURN
; } tick_calc_diff function end

	ORG 0x00001250
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
	MOVLB 0x00
	BCF timer_setu_00033_arg_mode_8_bit,0, 1
	SETF timer_setu_00033_arg_presc_00034, 1
	MOVLW 0x8A
	MOVWF timer_setu_00033_arg_timer_00035, 1
	MOVLW 0xE8
	MOVWF timer_setu_00033_arg_timer_00035+D'1', 1
	CALL timer_setu_00033
	CALL turn_usb_i_0002F
	BSF gbl_intcon,6
	BSF gbl_intcon,7
	CALL timer_star_00036
	RETURN
; } initialise function end

	ORG 0x00001288
main
; { main ; function begin
	CALL initialise_00000
	CLRF main_1_tick_marker, 1
	CLRF main_1_tick_marker+D'1', 1
	CLRF main_1_left_count, 1
	CLRF main_1_check_count, 1
label99
	CALL tick_get_c_00030
	MOVF CompTempVarRet840, W, 1
	MOVWF main_1_test_tick, 1
	MOVF CompTempVarRet840+D'1', W, 1
	MOVWF main_1_test_tick+D'1', 1
	MOVF main_1_tick_marker, W, 1
	MOVWF tick_calc__00031_arg_a, 1
	MOVF main_1_tick_marker+D'1', W, 1
	MOVWF tick_calc__00031_arg_a+D'1', 1
	MOVF main_1_test_tick, W, 1
	MOVWF tick_calc__00031_arg_b, 1
	MOVF main_1_test_tick+D'1', W, 1
	MOVWF tick_calc__00031_arg_b+D'1', 1
	CALL tick_calc__00031
	MOVLW 0x03
	CPFSGT CompTempVarRet841, 1
	TSTFSZ CompTempVarRet841+D'1', 1
	BRA	label100
	BRA	label102
label100
	MOVF main_1_test_tick, W, 1
	MOVWF main_1_tick_marker, 1
	MOVF main_1_test_tick+D'1', W, 1
	MOVWF main_1_tick_marker+D'1', 1
	INCF main_1_left_count, F, 1
	INCF main_1_check_count, F, 1
	MOVLW 0x05
	CPFSEQ main_1_check_count, 1
	BRA	label102
	CLRF main_1_check_count, 1
	CALL usb_get_st_00021
	MOVLW 0x03
	CPFSEQ CompTempVarRet943, 1
	BRA	label101
	CLRF main_1_buffer, 1
	MOVF main_1_left_count, W, 1
	SUBLW 0x00
	MOVWF main_1_buffer+D'1', 1
	CLRF main_1_buffer+D'2', 1
	MOVF main_1_buffer+D'1', W, 1
	IORWF main_1_buffer, W, 1
	MOVWF CompTempVar805, 1
	MOVF main_1_buffer+D'2', W, 1
	IORWF CompTempVar805, W, 1
	BZ	label101
	MOVLW 0x01
	MOVWF usb_send_d_0001E_arg_ep, 1
	MOVLW HIGH(main_1_buffer+D'0')
	MOVWF usb_send_d_0001E_arg_data+D'1', 1
	MOVLW LOW(main_1_buffer+D'0')
	MOVWF usb_send_d_0001E_arg_data, 1
	MOVLW 0x03
	MOVWF usb_send_d_0001E_arg_send_count, 1
	BCF usb_send_d_0001E_arg_first,0, 1
	CALL usb_send_d_0001E
label101
	MOVLB 0x00
	CLRF main_1_left_count, 1
	CLRF main_1_check_count, 1
label102
	BTFSS gbl_isJiggling,0, 1
	BRA	label103
label103
	BTFSS gbl_portb,0
	BRA	label99
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	BTFSS gbl_portb,0
	BRA	label99
	BTFSS gbl_isJiggling,0, 1
	BRA	label104
	BSF gbl_isJiggling,0, 1
	BSF gbl_portb,1
	BRA	label99
label104
	BCF gbl_isJiggling,0, 1
	BCF gbl_portb,1
	BRA	label99
; } main function end

	ORG 0x00001332
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
	ORG 0x000015AE
interrupt
; { interrupt ; function begin
	MOVFF FSR0H,  Int1Context
	MOVFF FSR0L,  Int1Context+D'1'
	MOVFF PRODH,  Int1Context+D'2'
	MOVFF PRODL,  Int1Context+D'3'
	CALL usb_handle_0001D
	BTFSS gbl_intcon,2
	BRA	label106
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
label106
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
