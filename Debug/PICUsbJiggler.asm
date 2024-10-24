;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 8.01
;// License Type  : Pro License
;// Limitations   : PIC18 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P18F2550.inc"
__HEAPSTART                      EQU	0x00000418 ; Start address of heap 
__HEAPEND                        EQU	0x000007FF ; End address of heap 
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
gbl_isJiggling                   EQU	0x000000E7 ; bit:0
gbl_isMoving                     EQU	0x000000E7 ; bit:1
gbl_buttonState                  EQU	0x000000E8 ; bytes:1
gbl_bres                         EQU	0x000000CB ; bytes:2
gbl_iSec                         EQU	0x000000E9 ; bytes:1
gbl_iMin                         EQU	0x000000EA ; bytes:1
gbl_cTask                        EQU	0x000000EB ; bytes:1
gbl_bd0statoe                    EQU	0x00000400 ; bytes:1
gbl_bd0cntoe                     EQU	0x00000401 ; bytes:1
gbl_bd0adrloe                    EQU	0x00000402 ; bytes:1
gbl_bd0adrhoe                    EQU	0x00000403 ; bytes:1
gbl_bd0statie                    EQU	0x00000404 ; bytes:1
gbl_bd0cntie                     EQU	0x00000405 ; bytes:1
gbl_bd0adrlie                    EQU	0x00000406 ; bytes:1
gbl_bd0adrhie                    EQU	0x00000407 ; bytes:1
gbl_bd1statoe                    EQU	0x00000408 ; bytes:1
gbl_bd1cntoe                     EQU	0x00000409 ; bytes:1
gbl_bd1adrloe                    EQU	0x0000040A ; bytes:1
gbl_bd1adrhoe                    EQU	0x0000040B ; bytes:1
gbl_bd1statie                    EQU	0x0000040C ; bytes:1
gbl_bd1cntie                     EQU	0x0000040D ; bytes:1
gbl_bd1adrlie                    EQU	0x0000040E ; bytes:1
gbl_bd1adrhie                    EQU	0x0000040F ; bytes:1
gbl_bd2statoe                    EQU	0x00000410 ; bytes:1
gbl_bd2cntoe                     EQU	0x00000411 ; bytes:1
gbl_bd2adrloe                    EQU	0x00000412 ; bytes:1
gbl_bd2adrhoe                    EQU	0x00000413 ; bytes:1
gbl_bd2statie                    EQU	0x00000414 ; bytes:1
gbl_bd2cntie                     EQU	0x00000415 ; bytes:1
gbl_bd2adrlie                    EQU	0x00000416 ; bytes:1
gbl_bd2adrhie                    EQU	0x00000417 ; bytes:1
gbl_USB_IsIdle                   EQU	0x000000EC ; bytes:1
gbl_USB_status_device            EQU	0x000000ED ; bytes:1
gbl_USB_Curr_Config              EQU	0x000000EE ; bytes:1
gbl_USB_address_pending          EQU	0x000000EF ; bytes:1
gbl_USB_dev_req                  EQU	0x000000F0 ; bytes:1
gbl_USB_Interface                EQU	0x0000005D ; bytes:3
gbl_USB_USTAT                    EQU	0x000000F1 ; bytes:1
gbl_ACTIVE_BUF                   EQU	0x000000F2 ; bytes:1
gbl_USB_protocol                 EQU	0x000000F3 ; bytes:1
gbl_USWSTAT                      EQU	0x000000F4 ; bytes:1
gbl_USB_PID_ERR                  EQU	0x000000CD ; bytes:2
gbl_USB_CRC5_ERR                 EQU	0x000000CF ; bytes:2
gbl_USB_CRC16_ERR                EQU	0x000000D1 ; bytes:2
gbl_USB_DFN8_ERR                 EQU	0x000000D3 ; bytes:2
gbl_USB_BTO_ERR                  EQU	0x000000D5 ; bytes:2
gbl_USB_WRT_ERR                  EQU	0x000000D7 ; bytes:2
gbl_USB_OWN_ERR                  EQU	0x000000D9 ; bytes:2
gbl_USB_BTS_ERR                  EQU	0x000000DB ; bytes:2
gbl_EP0_start                    EQU	0x000000DD ; bytes:2
gbl_EP0_end                      EQU	0x000000DF ; bytes:2
gbl_EP0_maxLength                EQU	0x000000F5 ; bytes:1
gbl_BDT                          EQU	0x000000E1 ; bytes:2
gbl_Buffer                       EQU	0x000000E3 ; bytes:2
gbl_BufferCopy                   EQU	0x000000BF ; bytes:8
gbl_BDTCopy                      EQU	0x00000059 ; bytes:4
gbl_String0                      EQU	0x000000C7 ; bytes:4
gbl_String1                      EQU	0x00000090 ; bytes:20
gbl_String2                      EQU	0x00000060 ; bytes:48
gbl_ReportDescriptor1            EQU	0x00000005 ; bytes:50
gbl_DeviceDescriptor             EQU	0x000000A4 ; bytes:18
gbl_ConfigDescriptor             EQU	0x00000037 ; bytes:34
gbl_ReportDescrSize              EQU	0x000000E5 ; bytes:2
gbl_HIDDescriptor                EQU	0x000000B6 ; bytes:9
PutEP1_00000_arg_bytes           EQU	0x000000FC ; bytes:1
PutEP1_00000_arg_buffer          EQU	0x000000FD ; bytes:2
CompTempVarRet569                EQU	0x0000011B ; bytes:1
PutEP1_00000_1_tobuffer          EQU	0x00000118 ; bytes:2
PutEP1_00000_1_i                 EQU	0x000000FF ; bytes:1
CompTempVar570                   EQU	0x0000011A ; bytes:1
CompTempVar573                   EQU	0x0000011B ; bytes:2
CompTempVar574                   EQU	0x0000011D ; bytes:1
CompTempVar578                   EQU	0x0000011B ; bytes:1
CompTempVar579                   EQU	0x0000011C ; bytes:1
CopyDescri_0000B_1_USBbuffer     EQU	0x00000128 ; bytes:2
CopyDescri_0000B_1_bufindex      EQU	0x0000012A ; bytes:1
CompTempVar582                   EQU	0x0000012B ; bytes:2
CompTempVar583                   EQU	0x0000012D ; bytes:1
CompTempVar586                   EQU	0x0000012B ; bytes:1
InitUSB_00000_1_USB_Interface    EQU	0x000000FC ; bytes:3
Process_Re_0000D_1_OutBuffer     EQU	0x000000FC ; bytes:2
Process_Re_0000D_1_UEPArray      EQU	0x000000FE ; bytes:2
Process_Re_0000D_1_Descrip_0000E EQU	0x00000118 ; bytes:1
Process_Re_0000D_1_Endpoint      EQU	0x00000119 ; bytes:1
Process_Re_0000D_1_Interface     EQU	0x0000011A ; bytes:1
Process_Re_0000D_1_DescriptorID  EQU	0x0000011B ; bytes:1
Process_Re_0000D_1_StringID      EQU	0x0000011C ; bytes:1
CompTempVar587                   EQU	0x0000011D ; bytes:1
CompTempVar588                   EQU	0x0000011E ; bytes:1
CompTempVar589                   EQU	0x0000011F ; bytes:1
CompTempVar593                   EQU	0x00000120 ; bytes:1
CompTempVar596                   EQU	0x00000121 ; bytes:1
CompTempVar597                   EQU	0x00000120 ; bytes:1
CompTempVar598                   EQU	0x00000120 ; bytes:1
CompTempVar599                   EQU	0x00000120 ; bytes:1
CompTempVar600                   EQU	0x00000120 ; bytes:1
CompTempVar601                   EQU	0x00000121 ; bytes:1
CompTempVar605                   EQU	0x00000122 ; bytes:2
CompTempVar606                   EQU	0x00000124 ; bytes:1
CompTempVar610                   EQU	0x00000122 ; bytes:1
CompTempVar612                   EQU	0x00000122 ; bytes:1
CompTempVar614                   EQU	0x00000122 ; bytes:1
CompTempVar615                   EQU	0x00000122 ; bytes:1
CompTempVar617                   EQU	0x00000122 ; bytes:1
CompTempVar621                   EQU	0x00000122 ; bytes:2
CompTempVar622                   EQU	0x00000124 ; bytes:1
CompTempVar625                   EQU	0x00000122 ; bytes:1
CompTempVar627                   EQU	0x00000122 ; bytes:1
CompTempVar628                   EQU	0x00000123 ; bytes:1
CompTempVar631                   EQU	0x00000124 ; bytes:1
CompTempVar634                   EQU	0x00000124 ; bytes:1
CompTempVar635                   EQU	0x00000125 ; bytes:1
CompTempVar636                   EQU	0x00000122 ; bytes:1
CompTempVar637                   EQU	0x00000123 ; bytes:1
CompTempVar640                   EQU	0x00000124 ; bytes:1
CompTempVar643                   EQU	0x00000124 ; bytes:1
CompTempVar644                   EQU	0x00000125 ; bytes:1
CompTempVar645                   EQU	0x00000122 ; bytes:1
CompTempVar646                   EQU	0x00000123 ; bytes:1
CompTempVar647                   EQU	0x00000124 ; bytes:1
CompTempVar648                   EQU	0x00000125 ; bytes:1
CompTempVar649                   EQU	0x00000126 ; bytes:1
CompTempVar650                   EQU	0x00000127 ; bytes:1
CompTempVar654                   EQU	0x00000128 ; bytes:1
CompTempVar657                   EQU	0x00000128 ; bytes:1
CompTempVar658                   EQU	0x00000129 ; bytes:1
CompTempVar662                   EQU	0x00000128 ; bytes:1
CompTempVar665                   EQU	0x00000128 ; bytes:1
CompTempVar666                   EQU	0x00000129 ; bytes:1
CompTempVar670                   EQU	0x00000128 ; bytes:1
CompTempVar673                   EQU	0x00000128 ; bytes:1
CompTempVar674                   EQU	0x00000129 ; bytes:1
CompTempVar677                   EQU	0x00000122 ; bytes:1
CompTempVar681                   EQU	0x00000122 ; bytes:1
CompTempVar683                   EQU	0x00000123 ; bytes:1
CompTempVar684                   EQU	0x00000124 ; bytes:1
CompTempVar688                   EQU	0x00000122 ; bytes:1
CompTempVar690                   EQU	0x00000123 ; bytes:1
CompTempVar691                   EQU	0x00000124 ; bytes:1
CompTempVar693                   EQU	0x00000122 ; bytes:1
CompTempVar695                   EQU	0x00000123 ; bytes:1
CompTempVar696                   EQU	0x00000124 ; bytes:1
CompTempVar700                   EQU	0x00000122 ; bytes:1
CompTempVar701                   EQU	0x00000123 ; bytes:1
CompTempVar705                   EQU	0x00000122 ; bytes:1
CompTempVar706                   EQU	0x00000123 ; bytes:1
CompTempVar707                   EQU	0x00000122 ; bytes:1
CompTempVar708                   EQU	0x00000122 ; bytes:1
CompTempVar709                   EQU	0x00000123 ; bytes:1
CompTempVar710                   EQU	0x00000124 ; bytes:2
CompTempVar711                   EQU	0x00000126 ; bytes:1
CompTempVar715                   EQU	0x00000122 ; bytes:1
CompTempVar719                   EQU	0x00000123 ; bytes:1
CompTempVar720                   EQU	0x00000122 ; bytes:1
CompTempVar721                   EQU	0x00000123 ; bytes:1
CompTempVar722                   EQU	0x00000124 ; bytes:2
CompTempVar723                   EQU	0x00000126 ; bytes:1
CompTempVar726                   EQU	0x00000122 ; bytes:1
timer1Set_00000_arg_isOn         EQU	0x000000FC ; bit:0
CompTempVarRet727                EQU	0x000000FD ; bytes:1
CompTempVar728                   EQU	0x000000FC ; bytes:1
main_1_i                         EQU	0x000000F6 ; bytes:1
main_1_j                         EQU	0x000000F7 ; bytes:2
main_1_buffer                    EQU	0x000000F9 ; bytes:3
main_1_tablex                    EQU	0x00000100 ; bytes:12
main_1_tabley                    EQU	0x0000010C ; bytes:12
CompTempVar734                   EQU	0x000000FC ; bytes:1
delay_ms_00000_arg_del           EQU	0x000000FC ; bytes:1
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
USBReset_00000
; { USBReset ; function begin
	MOVLB 0x00
	CLRF gbl_USB_Curr_Config, 1
	CLRF gbl_USB_IsIdle, 1
	BCF gbl_uir,3
	BCF gbl_uir,3
	BCF gbl_uir,3
	BCF gbl_uir,3
	MOVLW 0x08
	MOVLB 0x04
	MOVWF gbl_bd0cntoe, 1
	MOVLW 0x88
	MOVWF gbl_bd0statoe, 1
	MOVLW 0x08
	MOVWF gbl_bd0statie, 1
	CLRF gbl_uaddr
	CLRF gbl_uir
	MOVLW 0x05
	MOVWF gbl_uie
	MOVLW 0x16
	MOVWF gbl_uep0
	MOVLW 0x01
	MOVLB 0x00
	MOVWF gbl_USWSTAT, 1
	MOVWF gbl_USB_status_device, 1
	RETURN
; } USBReset function end

	ORG 0x000000A6
USBActivit_0000A
; { USBActivity ; function begin
	BCF gbl_uir,2
	BCF gbl_uie,2
	BCF gbl_ucon,1
	MOVLB 0x00
	CLRF gbl_USB_IsIdle, 1
	RETURN
; } USBActivity function end

	ORG 0x000000B2
CopyDescri_0000B
; { CopyDescriptorToEP0 ; function begin
	MOVLB 0x04
	MOVF gbl_bd0adrlie, W, 1
	MOVLB 0x01
	MOVWF CopyDescri_0000B_1_USBbuffer, 1
	CLRF CompTempVar582+D'1', 1
	CLRF CompTempVar583, 1
	MOVLB 0x04
	MOVF gbl_bd0adrhie, W, 1
	MOVLB 0x01
	MOVWF CopyDescri_0000B_1_USBbuffer+D'1', 1
	MOVF CompTempVar583, W, 1
	ADDWF CopyDescri_0000B_1_USBbuffer, F, 1
	MOVF CompTempVar582+D'1', W, 1
	ADDWFC CopyDescri_0000B_1_USBbuffer+D'1', F, 1
	CLRF CopyDescri_0000B_1_bufindex, 1
label3
	MOVLB 0x00
	MOVF gbl_EP0_maxLength, W, 1
	MOVLB 0x01
	CPFSLT CopyDescri_0000B_1_bufindex, 1
	BRA	label5
	MOVLB 0x00
	MOVF gbl_EP0_end+D'1', W, 1
	SUBWF gbl_EP0_start+D'1', W, 1
	BNZ	label4
	MOVF gbl_EP0_end, W, 1
	SUBWF gbl_EP0_start, W, 1
label4
	BC	label5
	MOVF gbl_EP0_start+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_EP0_start, W, 1
	MOVWF FSR0L
	MOVF INDF0, W
	MOVLB 0x01
	MOVWF CompTempVar586, 1
	MOVF CopyDescri_0000B_1_USBbuffer+D'1', W, 1
	MOVWF FSR0H
	MOVF CopyDescri_0000B_1_USBbuffer, W, 1
	ADDWF CopyDescri_0000B_1_bufindex, W, 1
	MOVWF FSR0L
	MOVF CompTempVar586, W, 1
	MOVWF INDF0
	MOVLB 0x00
	INFSNZ gbl_EP0_start, F, 1
	INCF gbl_EP0_start+D'1', F, 1
	MOVLB 0x01
	INCF CopyDescri_0000B_1_bufindex, F, 1
	BRA	label3
label5
	MOVLB 0x00
	MOVF gbl_EP0_maxLength, W, 1
	MOVLB 0x01
	CPFSLT CopyDescri_0000B_1_bufindex, 1
	BRA	label6
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
label6
	MOVLB 0x01
	MOVF CopyDescri_0000B_1_bufindex, W, 1
	MOVLB 0x04
	MOVWF gbl_bd0cntie, 1
	MOVLW 0x40
	ANDWF gbl_bd0statie, F, 1
	MOVLW 0x40
	XORWF gbl_bd0statie, F, 1
	MOVLW 0x88
	IORWF gbl_bd0statie, F, 1
	RETURN
; } CopyDescriptorToEP0 function end

	ORG 0x00000134
USBStall_00000
; { USBStall ; function begin
	BCF gbl_uir,5
	RETURN
; } USBStall function end

	ORG 0x00000138
USBSleep_00000
; { USBSleep ; function begin
	BSF gbl_uie,2
	BCF gbl_uie,4
	BSF gbl_ucon,1
	MOVLW 0x01
	MOVLB 0x00
	MOVWF gbl_USB_IsIdle, 1
	RETURN
; } USBSleep function end

	ORG 0x00000146
Process_Re_0000D
; { Process_Req ; function begin
	MOVF gbl_ustat, W
	MOVLB 0x00
	MOVWF gbl_USB_USTAT, 1
	RRCF gbl_USB_USTAT, W, 1
	MOVWF gbl_ACTIVE_BUF, 1
	RRCF gbl_ACTIVE_BUF, F, 1
	RRCF gbl_ACTIVE_BUF, F, 1
	MOVLW 0x1F
	ANDWF gbl_ACTIVE_BUF, F, 1
	BCF STATUS,C
	RLCF gbl_ACTIVE_BUF, F, 1
	MOVLW 0x04
	ANDWF gbl_USB_USTAT, W, 1
	MOVLB 0x01
	MOVWF CompTempVar593, 1
	CLRF CompTempVar596, 1
	MOVF CompTempVar593, W, 1
	MOVLB 0x00
	ADDWF gbl_ACTIVE_BUF, F, 1
	BNC	label7
	MOVLB 0x01
	INCF CompTempVar596, F, 1
label7
	MOVLB 0x01
	RRCF CompTempVar596, F, 1
	MOVLB 0x00
	RRCF gbl_ACTIVE_BUF, F, 1
	MOVLB 0x01
	RRCF CompTempVar596, F, 1
	MOVLB 0x00
	RRCF gbl_ACTIVE_BUF, F, 1
	MOVF gbl_BDT+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_BDT, W, 1
	MOVWF FSR0L
	MOVF gbl_ACTIVE_BUF, W, 1
	MOVLB 0x01
	MOVWF CompTempVar597, 1
	RLCF CompTempVar597, F, 1
	RLCF CompTempVar597, F, 1
	MOVLW 0xFC
	ANDWF CompTempVar597, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF gbl_BDTCopy
	MOVLB 0x00
	MOVF gbl_BDT, W, 1
	MOVWF FSR0L
	MOVF gbl_ACTIVE_BUF, W, 1
	MOVLB 0x01
	MOVWF CompTempVar598, 1
	RLCF CompTempVar598, F, 1
	RLCF CompTempVar598, F, 1
	MOVLW 0xFC
	ANDWF CompTempVar598, W, 1
	ADDWF FSR0L, F
	MOVF PREINC0, W
	MOVWF gbl_BDTCopy+D'1'
	MOVLB 0x00
	MOVF gbl_BDT, W, 1
	MOVWF FSR0L
	MOVF gbl_ACTIVE_BUF, W, 1
	MOVLB 0x01
	MOVWF CompTempVar599, 1
	RLCF CompTempVar599, F, 1
	RLCF CompTempVar599, F, 1
	MOVLW 0xFC
	ANDWF CompTempVar599, W, 1
	ADDWF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF gbl_BDTCopy+D'2'
	MOVF INDF0, W
	MOVWF gbl_BDTCopy+D'3'
	BCF gbl_uir,3
	MOVLW 0x3C
	ANDWF gbl_BDTCopy, W
	MOVWF CompTempVar587, 1
	MOVLW 0x24
	CPFSEQ CompTempVar587, 1
	BRA	label9
	MOVLW 0x04
	MOVLB 0x00
	CPFSEQ gbl_USB_USTAT, 1
	BRA	label8
	MOVLW 0x06
	CPFSEQ gbl_USB_dev_req, 1
	RETURN
	CALL CopyDescri_0000B
	RETURN
label8
	MOVLW 0x0C
	CPFSEQ gbl_USB_USTAT, 1
	RETURN
	RETURN
label9
	MOVLW 0x3C
	ANDWF gbl_BDTCopy, W
	MOVWF CompTempVar588, 1
	MOVLW 0x04
	CPFSEQ CompTempVar588, 1
	BRA	label10
	MOVLB 0x00
	MOVF gbl_USB_USTAT, F, 1
	BTFSC STATUS,Z
	RETURN
	MOVLW 0x08
	CPFSEQ gbl_USB_USTAT, 1
	RETURN
	RETURN
label10
	MOVLW 0x3C
	ANDWF gbl_BDTCopy, W
	MOVWF CompTempVar589, 1
	MOVLW 0x34
	CPFSEQ CompTempVar589, 1
	RETURN
	MOVLB 0x04
	MOVF gbl_bd0adrloe, W, 1
	MOVLB 0x00
	MOVWF gbl_Buffer, 1
	MOVLB 0x01
	CLRF CompTempVar605+D'1', 1
	CLRF CompTempVar606, 1
	MOVLB 0x04
	MOVF gbl_bd0adrhoe, W, 1
	MOVLB 0x00
	MOVWF gbl_Buffer+D'1', 1
	MOVLB 0x01
	MOVF CompTempVar606, W, 1
	MOVLB 0x00
	ADDWF gbl_Buffer, F, 1
	MOVLB 0x01
	MOVF CompTempVar605+D'1', W, 1
	MOVLB 0x00
	ADDWFC gbl_Buffer+D'1', F, 1
	MOVF gbl_Buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_Buffer, W, 1
	MOVWF FSR0L
	MOVF INDF0, W
	MOVWF gbl_BufferCopy, 1
	MOVF PREINC0, W
	MOVWF gbl_BufferCopy+D'1', 1
	DECF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF gbl_BufferCopy+D'2', 1
	MOVF INDF0, W
	MOVWF gbl_BufferCopy+D'3', 1
	MOVF gbl_Buffer, W, 1
	MOVWF FSR0L
	MOVLW 0x04
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF gbl_BufferCopy+D'4', 1
	MOVF INDF0, W
	MOVWF gbl_BufferCopy+D'5', 1
	MOVF gbl_Buffer, W, 1
	MOVWF FSR0L
	MOVLW 0x06
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF gbl_BufferCopy+D'6', 1
	MOVF INDF0, W
	MOVWF gbl_BufferCopy+D'7', 1
	BCF gbl_ueir,0
	MOVLW 0x08
	MOVLB 0x04
	MOVWF gbl_bd0cntoe, 1
	MOVLW 0x21
	MOVLB 0x00
	CPFSEQ gbl_BufferCopy, 1
	BRA	label11
	MOVLW 0xC8
	MOVLB 0x04
	MOVWF gbl_bd0statoe, 1
	BRA	label12
label11
	MOVLW 0x88
	MOVLB 0x04
	MOVWF gbl_bd0statoe, 1
label12
	MOVLW 0x08
	MOVWF gbl_bd0statie, 1
	BCF gbl_ucon,4
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
	MOVF gbl_BufferCopy, F, 1
	BZ	label16
	DECF gbl_BufferCopy, W, 1
	BTFSC STATUS,Z
	BRA	label30
	MOVLW 0x02
	CPFSEQ gbl_BufferCopy, 1
	BRA	label13
	BRA	label35
label13
	MOVLW 0x80
	CPFSEQ gbl_BufferCopy, 1
	BRA	label14
	BRA	label45
label14
	MOVLW 0x81
	CPFSEQ gbl_BufferCopy, 1
	BRA	label15
	BRA	label68
label15
	MOVLW 0x82
	CPFSEQ gbl_BufferCopy, 1
	GOTO	label83
	BRA	label81
label16
	DECF gbl_BufferCopy+D'1', W, 1
	BZ	label19
	MOVLW 0x03
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label17
	BRA	label21
label17
	MOVLW 0x05
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label18
	BRA	label23
label18
	MOVLW 0x09
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label29
	BRA	label25
label19
	MOVLW 0x01
	CPFSEQ gbl_BufferCopy+D'2', 1
	BRA	label20
	MOVF gbl_BufferCopy+D'3', W, 1
	BNZ	label20
	BCF gbl_USB_status_device,1, 1
	MOVLB 0x04
	CLRF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
	RETURN
label20
	BSF gbl_uep0,0
	RETURN
label21
	MOVF gbl_BufferCopy+D'2', W, 1
	MOVLB 0x01
	MOVWF CompTempVar600, 1
	CLRF CompTempVar601, 1
	MOVLW 0x01
	CPFSEQ CompTempVar600, 1
	BRA	label22
	MOVF CompTempVar601, W, 1
	BNZ	label22
	MOVLB 0x00
	BSF gbl_USB_status_device,1, 1
	MOVLB 0x04
	CLRF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
	RETURN
label22
	BSF gbl_uep0,0
	RETURN
label23
	MOVF gbl_BufferCopy+D'2', W, 1
	MOVWF gbl_USB_address_pending, 1
	MOVLW 0x80
	CPFSLT gbl_USB_address_pending, 1
	BRA	label24
	MOVLB 0x04
	CLRF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
	MOVLW 0x05
	MOVWF gbl_USB_dev_req, 1
	MOVLW 0x09
	MOVWF gbl_uie
	RETURN
label24
	BSF gbl_uep0,0
	RETURN
label25
	MOVLW 0x01
	CPFSGT gbl_BufferCopy+D'2', 1
	TSTFSZ gbl_BufferCopy+D'3', 1
	BRA	label26
	MOVF gbl_BufferCopy+D'2', W, 1
	MOVWF gbl_USB_Curr_Config, 1
label26
	MOVF gbl_BufferCopy+D'2', F, 1
	BNZ	label27
	MOVF gbl_BufferCopy+D'3', F, 1
	BNZ	label27
	MOVLW 0x02
	MOVWF gbl_USWSTAT, 1
	BRA	label28
label27
	MOVLW 0x03
	MOVWF gbl_USWSTAT, 1
label28
	MOVLB 0x04
	CLRF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
	MOVLW 0x48
	MOVLB 0x04
	MOVWF gbl_bd1statie, 1
	MOVLW 0x1E
	MOVWF gbl_uep1
	RETURN
label29
	BSF gbl_uep0,0
	RETURN
label30
	MOVLW 0x0B
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label31
	BRA	label32
label31
	DECF gbl_BufferCopy+D'1', W, 1
	BZ	label34
	MOVLW 0x03
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label34
	BRA	label34
label32
	MOVLW 0x03
	CPFSEQ gbl_USWSTAT, 1
	BRA	label33
	MOVF gbl_BufferCopy+D'4', W, 1
	MOVLB 0x01
	MOVWF Process_Re_0000D_1_Interface, 1
	LFSR 0x00,  gbl_USB_Interface
	MOVF FSR0L, W
	MOVF Process_Re_0000D_1_Interface, W, 1
	ADDWF FSR0L, F
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'2', W, 1
	MOVWF INDF0
	MOVLB 0x04
	CLRF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
	RETURN
label33
	BSF gbl_uep0,0
	RETURN
label34
	BSF gbl_uep0,0
	RETURN
label35
	DECF gbl_BufferCopy+D'1', W, 1
	BZ	label36
	MOVLW 0x03
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label44
	BRA	label40
label36
	MOVLW HIGH(gbl_uep0+D'0')
	MOVWF Process_Re_0000D_1_UEPArray+D'1', 1
	MOVLW LOW(gbl_uep0+D'0')
	MOVWF Process_Re_0000D_1_UEPArray, 1
	MOVLW 0x0F
	ANDWF gbl_BufferCopy+D'4', W, 1
	MOVLB 0x01
	MOVWF Process_Re_0000D_1_Endpoint, 1
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'2', F, 1
	BNZ	label39
	MOVF gbl_BufferCopy+D'3', F, 1
	BNZ	label39
	MOVLW 0x03
	ANDWF gbl_USWSTAT, W, 1
	MOVLB 0x01
	MOVWF CompTempVar610, 1
	MOVLW 0x02
	CPFSEQ CompTempVar610, 1
	BRA	label37
	MOVF Process_Re_0000D_1_Endpoint, F, 1
	BNZ	label37
	MOVLB 0x00
	MOVF Process_Re_0000D_1_UEPArray+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_UEPArray, W, 1
	MOVLB 0x01
	ADDWF Process_Re_0000D_1_Endpoint, W, 1
	MOVWF FSR0L
	BCF INDF0,0
	MOVLB 0x04
	CLRF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
	RETURN
label37
	MOVLW 0x03
	MOVLB 0x00
	ANDWF gbl_USWSTAT, W, 1
	MOVLB 0x01
	MOVWF CompTempVar612, 1
	MOVLW 0x03
	CPFSEQ CompTempVar612, 1
	BRA	label38
	MOVLW 0x03
	CPFSLT Process_Re_0000D_1_Endpoint, 1
	BRA	label38
	MOVLB 0x00
	MOVF Process_Re_0000D_1_UEPArray+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_UEPArray, W, 1
	MOVLB 0x01
	ADDWF Process_Re_0000D_1_Endpoint, W, 1
	MOVWF FSR0L
	BCF INDF0,0
	MOVLB 0x04
	CLRF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
	RETURN
label38
	BSF gbl_uep0,0
	RETURN
label39
	BSF gbl_uep0,0
	RETURN
label40
	MOVLW HIGH(gbl_uep0+D'0')
	MOVLB 0x01
	MOVWF CompTempVar614, 1
	MOVLW LOW(gbl_uep0+D'0')
	MOVLB 0x00
	MOVWF Process_Re_0000D_1_UEPArray, 1
	MOVLB 0x01
	MOVF CompTempVar614, W, 1
	MOVLB 0x00
	MOVWF Process_Re_0000D_1_UEPArray+D'1', 1
	MOVLW 0x0F
	ANDWF gbl_BufferCopy+D'4', W, 1
	MOVLB 0x01
	MOVWF Process_Re_0000D_1_Endpoint, 1
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'2', F, 1
	BNZ	label43
	MOVF gbl_BufferCopy+D'3', F, 1
	BNZ	label43
	MOVLW 0x03
	ANDWF gbl_USWSTAT, W, 1
	MOVLB 0x01
	MOVWF CompTempVar615, 1
	MOVLW 0x02
	CPFSEQ CompTempVar615, 1
	BRA	label41
	MOVF Process_Re_0000D_1_Endpoint, F, 1
	BNZ	label41
	MOVLB 0x00
	MOVF Process_Re_0000D_1_UEPArray+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_UEPArray, W, 1
	MOVLB 0x01
	ADDWF Process_Re_0000D_1_Endpoint, W, 1
	MOVWF FSR0L
	BSF INDF0,0
	MOVLB 0x04
	CLRF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
	RETURN
label41
	MOVLW 0x03
	MOVLB 0x00
	ANDWF gbl_USWSTAT, W, 1
	MOVLB 0x01
	MOVWF CompTempVar617, 1
	MOVLW 0x03
	CPFSEQ CompTempVar617, 1
	BRA	label42
	MOVLW 0x03
	CPFSLT Process_Re_0000D_1_Endpoint, 1
	BRA	label42
	MOVLB 0x00
	MOVF Process_Re_0000D_1_UEPArray+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_UEPArray, W, 1
	MOVLB 0x01
	ADDWF Process_Re_0000D_1_Endpoint, W, 1
	MOVWF FSR0L
	BSF INDF0,0
	MOVLB 0x04
	CLRF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
	RETURN
label42
	BSF gbl_uep0,0
	RETURN
label43
	BSF gbl_uep0,0
	RETURN
label44
	BSF gbl_uep0,0
	RETURN
label45
	MOVLW 0x08
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label46
	BRA	label48
label46
	MOVLW 0x06
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label47
	BRA	label49
label47
	MOVF gbl_BufferCopy+D'1', F, 1
	BTFSC STATUS,Z
	BRA	label67
	RETURN
label48
	MOVLB 0x04
	MOVF gbl_bd0adrlie, W, 1
	MOVLB 0x00
	MOVWF Process_Re_0000D_1_OutBuffer, 1
	MOVLB 0x01
	CLRF CompTempVar621+D'1', 1
	CLRF CompTempVar622, 1
	MOVLB 0x04
	MOVF gbl_bd0adrhie, W, 1
	MOVLB 0x00
	MOVWF Process_Re_0000D_1_OutBuffer+D'1', 1
	MOVLB 0x01
	MOVF CompTempVar622, W, 1
	MOVLB 0x00
	ADDWF Process_Re_0000D_1_OutBuffer, F, 1
	MOVLB 0x01
	MOVF CompTempVar621+D'1', W, 1
	MOVLB 0x00
	ADDWFC Process_Re_0000D_1_OutBuffer+D'1', F, 1
	MOVF Process_Re_0000D_1_OutBuffer+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_OutBuffer, W, 1
	MOVWF FSR0L
	MOVLB 0x01
	CLRF CompTempVar625, 1
	MOVF CompTempVar625, W, 1
	ADDWF FSR0L, F
	MOVLB 0x00
	MOVF gbl_USB_Curr_Config, W, 1
	MOVWF INDF0
	MOVLW 0x01
	MOVLB 0x04
	MOVWF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	RETURN
label49
	MOVF gbl_BufferCopy+D'3', W, 1
	MOVLB 0x01
	MOVWF Process_Re_0000D_1_DescriptorID, 1
	DECF Process_Re_0000D_1_DescriptorID, W, 1
	BNZ	label52
	MOVLW 0x06
	MOVLB 0x00
	MOVWF gbl_USB_dev_req, 1
	MOVLW HIGH(gbl_DeviceDescriptor+D'0')
	MOVWF gbl_EP0_start+D'1', 1
	MOVLW LOW(gbl_DeviceDescriptor+D'0')
	MOVWF gbl_EP0_start, 1
	MOVLW HIGH(gbl_DeviceDescriptor+D'0')
	MOVLB 0x01
	MOVWF CompTempVar631, 1
	MOVLW LOW(gbl_DeviceDescriptor+D'0')
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	CLRF gbl_EP0_end+D'1', 1
	MOVLW 0x12
	ADDWF gbl_EP0_end, F, 1
	MOVLB 0x01
	MOVF CompTempVar631, W, 1
	MOVLB 0x00
	ADDWFC gbl_EP0_end+D'1', F, 1
	MOVF gbl_EP0_start, W, 1
	SUBWF gbl_EP0_end, W, 1
	MOVLB 0x01
	MOVWF CompTempVar627, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	SUBWFB gbl_EP0_end+D'1', W, 1
	MOVLB 0x01
	MOVWF CompTempVar628, 1
	MOVF CompTempVar628, W, 1
	MOVLB 0x00
	SUBWF gbl_BufferCopy+D'7', W, 1
	BNZ	label50
	MOVLB 0x01
	MOVF CompTempVar627, W, 1
	MOVLB 0x00
	SUBWF gbl_BufferCopy+D'6', W, 1
label50
	BC	label51
	MOVF gbl_BufferCopy+D'6', W, 1
	ADDWF gbl_EP0_start, W, 1
	MOVLB 0x01
	MOVWF CompTempVar634, 1
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'7', W, 1
	MOVLB 0x01
	MOVWF CompTempVar635, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	MOVLB 0x01
	ADDWFC CompTempVar635, F, 1
	MOVF CompTempVar634, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	MOVLB 0x01
	MOVF CompTempVar635, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end+D'1', 1
label51
	MOVLW 0x08
	MOVWF gbl_EP0_maxLength, 1
	CALL CopyDescri_0000B
	RETURN
label52
	MOVLW 0x02
	CPFSEQ Process_Re_0000D_1_DescriptorID, 1
	BRA	label55
	MOVLW 0x06
	MOVLB 0x00
	MOVWF gbl_USB_dev_req, 1
	MOVLW HIGH(gbl_ConfigDescriptor+D'0')
	MOVWF gbl_EP0_start+D'1', 1
	MOVLW LOW(gbl_ConfigDescriptor+D'0')
	MOVWF gbl_EP0_start, 1
	MOVLW HIGH(gbl_ConfigDescriptor+D'0')
	MOVLB 0x01
	MOVWF CompTempVar640, 1
	MOVLW LOW(gbl_ConfigDescriptor+D'0')
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	CLRF gbl_EP0_end+D'1', 1
	MOVLW 0x22
	ADDWF gbl_EP0_end, F, 1
	MOVLB 0x01
	MOVF CompTempVar640, W, 1
	MOVLB 0x00
	ADDWFC gbl_EP0_end+D'1', F, 1
	MOVF gbl_EP0_start, W, 1
	SUBWF gbl_EP0_end, W, 1
	MOVLB 0x01
	MOVWF CompTempVar636, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	SUBWFB gbl_EP0_end+D'1', W, 1
	MOVLB 0x01
	MOVWF CompTempVar637, 1
	MOVF CompTempVar637, W, 1
	MOVLB 0x00
	SUBWF gbl_BufferCopy+D'7', W, 1
	BNZ	label53
	MOVLB 0x01
	MOVF CompTempVar636, W, 1
	MOVLB 0x00
	SUBWF gbl_BufferCopy+D'6', W, 1
label53
	BC	label54
	MOVF gbl_BufferCopy+D'6', W, 1
	ADDWF gbl_EP0_start, W, 1
	MOVLB 0x01
	MOVWF CompTempVar643, 1
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'7', W, 1
	MOVLB 0x01
	MOVWF CompTempVar644, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	MOVLB 0x01
	ADDWFC CompTempVar644, F, 1
	MOVF CompTempVar643, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	MOVLB 0x01
	MOVF CompTempVar644, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end+D'1', 1
label54
	MOVLW 0x08
	MOVWF gbl_EP0_maxLength, 1
	CALL CopyDescri_0000B
	RETURN
label55
	MOVLW 0x03
	CPFSEQ Process_Re_0000D_1_DescriptorID, 1
	BRA	label66
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'2', W, 1
	MOVLB 0x01
	MOVWF Process_Re_0000D_1_StringID, 1
	MOVLW 0x06
	MOVLB 0x00
	MOVWF gbl_USB_dev_req, 1
	MOVLW 0x08
	MOVWF gbl_EP0_maxLength, 1
	MOVLB 0x01
	MOVF Process_Re_0000D_1_StringID, F, 1
	BZ	label56
	DECF Process_Re_0000D_1_StringID, W, 1
	BZ	label59
	MOVLW 0x02
	CPFSEQ Process_Re_0000D_1_StringID, 1
	BRA	label65
	BRA	label62
label56
	MOVLW HIGH(gbl_String0+D'0')
	MOVLB 0x00
	MOVWF gbl_EP0_start+D'1', 1
	MOVLW LOW(gbl_String0+D'0')
	MOVWF gbl_EP0_start, 1
	MOVLW HIGH(gbl_String0+D'0')
	MOVLB 0x01
	MOVWF CompTempVar654, 1
	MOVLW LOW(gbl_String0+D'0')
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	CLRF gbl_EP0_end+D'1', 1
	MOVF gbl_String0, W, 1
	ADDWF gbl_EP0_end, F, 1
	MOVLB 0x01
	MOVF CompTempVar654, W, 1
	MOVLB 0x00
	ADDWFC gbl_EP0_end+D'1', F, 1
	MOVF gbl_EP0_start, W, 1
	SUBWF gbl_EP0_end, W, 1
	MOVLB 0x01
	MOVWF CompTempVar645, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	SUBWFB gbl_EP0_end+D'1', W, 1
	MOVLB 0x01
	MOVWF CompTempVar646, 1
	MOVF CompTempVar646, W, 1
	MOVLB 0x00
	SUBWF gbl_BufferCopy+D'7', W, 1
	BNZ	label57
	MOVLB 0x01
	MOVF CompTempVar645, W, 1
	MOVLB 0x00
	SUBWF gbl_BufferCopy+D'6', W, 1
label57
	BC	label58
	MOVF gbl_BufferCopy+D'6', W, 1
	ADDWF gbl_EP0_start, W, 1
	MOVLB 0x01
	MOVWF CompTempVar657, 1
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'7', W, 1
	MOVLB 0x01
	MOVWF CompTempVar658, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	MOVLB 0x01
	ADDWFC CompTempVar658, F, 1
	MOVF CompTempVar657, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	MOVLB 0x01
	MOVF CompTempVar658, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end+D'1', 1
label58
	CALL CopyDescri_0000B
	RETURN
label59
	MOVLW HIGH(gbl_String1+D'0')
	MOVLB 0x00
	MOVWF gbl_EP0_start+D'1', 1
	MOVLW LOW(gbl_String1+D'0')
	MOVWF gbl_EP0_start, 1
	MOVLW HIGH(gbl_String1+D'0')
	MOVLB 0x01
	MOVWF CompTempVar662, 1
	MOVLW LOW(gbl_String1+D'0')
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	CLRF gbl_EP0_end+D'1', 1
	MOVF gbl_String1, W, 1
	ADDWF gbl_EP0_end, F, 1
	MOVLB 0x01
	MOVF CompTempVar662, W, 1
	MOVLB 0x00
	ADDWFC gbl_EP0_end+D'1', F, 1
	MOVF gbl_EP0_start, W, 1
	SUBWF gbl_EP0_end, W, 1
	MOVLB 0x01
	MOVWF CompTempVar647, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	SUBWFB gbl_EP0_end+D'1', W, 1
	MOVLB 0x01
	MOVWF CompTempVar648, 1
	MOVF CompTempVar648, W, 1
	MOVLB 0x00
	SUBWF gbl_BufferCopy+D'7', W, 1
	BNZ	label60
	MOVLB 0x01
	MOVF CompTempVar647, W, 1
	MOVLB 0x00
	SUBWF gbl_BufferCopy+D'6', W, 1
label60
	BC	label61
	MOVF gbl_BufferCopy+D'6', W, 1
	ADDWF gbl_EP0_start, W, 1
	MOVLB 0x01
	MOVWF CompTempVar665, 1
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'7', W, 1
	MOVLB 0x01
	MOVWF CompTempVar666, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	MOVLB 0x01
	ADDWFC CompTempVar666, F, 1
	MOVF CompTempVar665, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	MOVLB 0x01
	MOVF CompTempVar666, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end+D'1', 1
label61
	CALL CopyDescri_0000B
	RETURN
label62
	MOVLW HIGH(gbl_String2+D'0')
	MOVLB 0x00
	MOVWF gbl_EP0_start+D'1', 1
	MOVLW LOW(gbl_String2+D'0')
	MOVWF gbl_EP0_start, 1
	MOVLW HIGH(gbl_String2+D'0')
	MOVLB 0x01
	MOVWF CompTempVar670, 1
	MOVLW LOW(gbl_String2+D'0')
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	CLRF gbl_EP0_end+D'1', 1
	MOVF gbl_String2, W, 1
	ADDWF gbl_EP0_end, F, 1
	MOVLB 0x01
	MOVF CompTempVar670, W, 1
	MOVLB 0x00
	ADDWFC gbl_EP0_end+D'1', F, 1
	MOVF gbl_EP0_start, W, 1
	SUBWF gbl_EP0_end, W, 1
	MOVLB 0x01
	MOVWF CompTempVar649, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	SUBWFB gbl_EP0_end+D'1', W, 1
	MOVLB 0x01
	MOVWF CompTempVar650, 1
	MOVF CompTempVar650, W, 1
	MOVLB 0x00
	SUBWF gbl_BufferCopy+D'7', W, 1
	BNZ	label63
	MOVLB 0x01
	MOVF CompTempVar649, W, 1
	MOVLB 0x00
	SUBWF gbl_BufferCopy+D'6', W, 1
label63
	BC	label64
	MOVF gbl_BufferCopy+D'6', W, 1
	ADDWF gbl_EP0_start, W, 1
	MOVLB 0x01
	MOVWF CompTempVar673, 1
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'7', W, 1
	MOVLB 0x01
	MOVWF CompTempVar674, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	MOVLB 0x01
	ADDWFC CompTempVar674, F, 1
	MOVF CompTempVar673, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	MOVLB 0x01
	MOVF CompTempVar674, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end+D'1', 1
label64
	CALL CopyDescri_0000B
	RETURN
label65
	MOVLW 0xCC
	MOVLB 0x04
	MOVWF gbl_bd0statie, 1
	RETURN
label66
	MOVLW 0xCC
	MOVLB 0x04
	MOVWF gbl_bd0statie, 1
	RETURN
label67
	MOVF gbl_BDT+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_BDT, W, 1
	MOVWF FSR0L
	MOVLW 0x04
	ADDWF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF Process_Re_0000D_1_OutBuffer, 1
	MOVF INDF0, W
	MOVWF Process_Re_0000D_1_OutBuffer+D'1', 1
	MOVF Process_Re_0000D_1_OutBuffer+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_OutBuffer, W, 1
	MOVWF FSR0L
	MOVLB 0x01
	CLRF CompTempVar677, 1
	MOVF CompTempVar677, W, 1
	ADDWF FSR0L, F
	MOVLB 0x00
	MOVF gbl_USB_status_device, W, 1
	MOVWF INDF0
	MOVF Process_Re_0000D_1_OutBuffer, W, 1
	MOVWF FSR0L
	MOVLW 0x01
	ADDWF FSR0L, F
	MOVLW 0x00
	MOVWF INDF0
	MOVLW 0x02
	MOVLB 0x04
	MOVWF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	RETURN
label68
	MOVLW 0x0A
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label69
	BRA	label70
label69
	MOVF gbl_BufferCopy+D'1', F, 1
	BZ	label72
	MOVLW 0x06
	CPFSEQ gbl_BufferCopy+D'1', 1
	RETURN
	BRA	label75
label70
	MOVF gbl_BufferCopy+D'4', W, 1
	MOVLB 0x01
	MOVWF Process_Re_0000D_1_Interface, 1
	MOVLW 0x03
	MOVLB 0x00
	CPFSEQ gbl_USWSTAT, 1
	BRA	label71
	MOVLW 0x01
	MOVLB 0x01
	CPFSLT Process_Re_0000D_1_Interface, 1
	BRA	label71
	MOVLB 0x00
	MOVF gbl_BDT+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_BDT, W, 1
	MOVWF FSR0L
	MOVLW 0x04
	ADDWF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF Process_Re_0000D_1_OutBuffer, 1
	MOVF INDF0, W
	MOVWF Process_Re_0000D_1_OutBuffer+D'1', 1
	LFSR 0x00,  gbl_USB_Interface
	MOVF FSR0L, W
	MOVLB 0x01
	MOVF Process_Re_0000D_1_Interface, W, 1
	MOVWF CompTempVar683, 1
	MOVF CompTempVar683, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar684, 1
	MOVLB 0x00
	MOVF Process_Re_0000D_1_OutBuffer+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_OutBuffer, W, 1
	MOVWF FSR0L
	MOVLB 0x01
	CLRF CompTempVar681, 1
	MOVF CompTempVar681, W, 1
	ADDWF FSR0L, F
	MOVF CompTempVar684, W, 1
	MOVWF INDF0
	MOVLW 0x01
	MOVLB 0x04
	MOVWF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	RETURN
label71
	BSF gbl_uep0,0
	RETURN
label72
	MOVF gbl_BDT+D'1', W, 1
	MOVWF FSR0H
	MOVF gbl_BDT, W, 1
	MOVWF FSR0L
	MOVLW 0x04
	ADDWF FSR0L, F
	MOVLW 0x02
	ADDWF FSR0L, F
	MOVF POSTINC0, W
	MOVWF Process_Re_0000D_1_OutBuffer, 1
	MOVF INDF0, W
	MOVWF Process_Re_0000D_1_OutBuffer+D'1', 1
	MOVF Process_Re_0000D_1_OutBuffer+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_OutBuffer, W, 1
	MOVWF FSR0L
	MOVLW 0x01
	ADDWF FSR0L, F
	MOVLW 0x00
	MOVWF INDF0
	MOVLW 0x02
	MOVLB 0x04
	MOVWF gbl_bd0cntie, 1
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'4', W, 1
	MOVLB 0x01
	MOVWF Process_Re_0000D_1_Interface, 1
	MOVLW 0x02
	MOVLB 0x00
	CPFSEQ gbl_USWSTAT, 1
	BRA	label73
	MOVLB 0x01
	MOVF Process_Re_0000D_1_Interface, F, 1
	BNZ	label73
	LFSR 0x00,  gbl_USB_Interface
	MOVF FSR0L, W
	MOVF Process_Re_0000D_1_Interface, W, 1
	MOVWF CompTempVar690, 1
	MOVF CompTempVar690, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar691, 1
	MOVLB 0x00
	MOVF Process_Re_0000D_1_OutBuffer+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_OutBuffer, W, 1
	MOVWF FSR0L
	MOVLB 0x01
	CLRF CompTempVar688, 1
	MOVF CompTempVar688, W, 1
	ADDWF FSR0L, F
	MOVF CompTempVar691, W, 1
	MOVWF INDF0
	MOVLW 0xC8
	MOVLB 0x04
	MOVWF gbl_bd0statie, 1
	RETURN
label73
	MOVLW 0x03
	MOVLB 0x00
	CPFSEQ gbl_USWSTAT, 1
	BRA	label74
	MOVLW 0x01
	MOVLB 0x01
	CPFSLT Process_Re_0000D_1_Interface, 1
	BRA	label74
	LFSR 0x00,  gbl_USB_Interface
	MOVF FSR0L, W
	MOVF Process_Re_0000D_1_Interface, W, 1
	MOVWF CompTempVar695, 1
	MOVF CompTempVar695, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar696, 1
	MOVLB 0x00
	MOVF Process_Re_0000D_1_OutBuffer+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_OutBuffer, W, 1
	MOVWF FSR0L
	MOVLB 0x01
	CLRF CompTempVar693, 1
	MOVF CompTempVar693, W, 1
	ADDWF FSR0L, F
	MOVF CompTempVar696, W, 1
	MOVWF INDF0
	MOVLW 0xC8
	MOVLB 0x04
	MOVWF gbl_bd0statie, 1
	RETURN
label74
	BSF gbl_uep0,0
	RETURN
label75
	MOVF gbl_BufferCopy+D'3', W, 1
	MOVLB 0x01
	MOVWF Process_Re_0000D_1_Descrip_0000E, 1
	MOVLW 0x22
	CPFSEQ Process_Re_0000D_1_Descrip_0000E, 1
	BRA	label77
	MOVLW 0x06
	MOVLB 0x00
	MOVWF gbl_USB_dev_req, 1
	MOVF gbl_BufferCopy+D'4', F, 1
	BTFSC STATUS,Z
	MOVF gbl_BufferCopy+D'5', F, 1
	MOVLW HIGH(gbl_ReportDescriptor1+D'0')
	MOVWF gbl_EP0_start+D'1', 1
	MOVLW LOW(gbl_ReportDescriptor1+D'0')
	MOVWF gbl_EP0_start, 1
	CLRF gbl_EP0_end+D'1', 1
	MOVLW 0x32
	ADDWF gbl_EP0_start, W, 1
	MOVWF gbl_EP0_end, 1
	MOVF gbl_EP0_start+D'1', W, 1
	ADDWFC gbl_EP0_end+D'1', F, 1
	MOVLW 0x08
	MOVWF gbl_EP0_maxLength, 1
	MOVLW 0x32
	SUBWF gbl_BufferCopy+D'6', W, 1
	BC	label76
	TSTFSZ gbl_BufferCopy+D'7', 1
	BRA	label76
	MOVF gbl_BufferCopy+D'6', W, 1
	ADDWF gbl_EP0_start, W, 1
	MOVLB 0x01
	MOVWF CompTempVar700, 1
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'7', W, 1
	MOVLB 0x01
	MOVWF CompTempVar701, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	MOVLB 0x01
	ADDWFC CompTempVar701, F, 1
	MOVF CompTempVar700, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	MOVLB 0x01
	MOVF CompTempVar701, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end+D'1', 1
label76
	CALL CopyDescri_0000B
	MOVLW 0x01
	MOVLB 0x00
	CPFSEQ gbl_BufferCopy+D'4', 1
	RETURN
	MOVF gbl_BufferCopy+D'5', W, 1
	RETURN
label77
	MOVLW 0x21
	CPFSEQ Process_Re_0000D_1_Descrip_0000E, 1
	BRA	label80
	MOVLW 0x06
	MOVLB 0x00
	MOVWF gbl_USB_dev_req, 1
	MOVF gbl_BufferCopy+D'4', F, 1
	BNZ	label79
	MOVF gbl_BufferCopy+D'5', F, 1
	BNZ	label79
	MOVLW HIGH(gbl_HIDDescriptor+D'0')
	MOVWF gbl_EP0_start+D'1', 1
	MOVLW LOW(gbl_HIDDescriptor+D'0')
	MOVWF gbl_EP0_start, 1
	CLRF gbl_EP0_end+D'1', 1
	MOVLW 0x09
	ADDWF gbl_EP0_start, W, 1
	MOVWF gbl_EP0_end, 1
	MOVF gbl_EP0_start+D'1', W, 1
	ADDWFC gbl_EP0_end+D'1', F, 1
	MOVLW 0x08
	MOVWF gbl_EP0_maxLength, 1
	MOVLW 0x09
	SUBWF gbl_BufferCopy+D'6', W, 1
	BC	label78
	TSTFSZ gbl_BufferCopy+D'7', 1
	BRA	label78
	MOVF gbl_BufferCopy+D'6', W, 1
	ADDWF gbl_EP0_start, W, 1
	MOVLB 0x01
	MOVWF CompTempVar705, 1
	MOVLB 0x00
	MOVF gbl_BufferCopy+D'7', W, 1
	MOVLB 0x01
	MOVWF CompTempVar706, 1
	MOVLB 0x00
	MOVF gbl_EP0_start+D'1', W, 1
	MOVLB 0x01
	ADDWFC CompTempVar706, F, 1
	MOVF CompTempVar705, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end, 1
	MOVLB 0x01
	MOVF CompTempVar706, W, 1
	MOVLB 0x00
	MOVWF gbl_EP0_end+D'1', 1
label78
	CALL CopyDescri_0000B
label79
	MOVLW 0x01
	MOVLB 0x00
	CPFSEQ gbl_BufferCopy+D'4', 1
	RETURN
	MOVF gbl_BufferCopy+D'5', W, 1
	RETURN
label80
	BSF gbl_uep0,0
	RETURN
label81
	MOVF gbl_BufferCopy+D'1', F, 1
	BTFSS STATUS,Z
	RETURN
	MOVLW HIGH(gbl_uep0+D'0')
	MOVLB 0x01
	MOVWF CompTempVar707, 1
	MOVLW LOW(gbl_uep0+D'0')
	MOVLB 0x00
	MOVWF Process_Re_0000D_1_UEPArray, 1
	MOVLB 0x01
	MOVF CompTempVar707, W, 1
	MOVLB 0x00
	MOVWF Process_Re_0000D_1_UEPArray+D'1', 1
	MOVLW 0x0F
	ANDWF gbl_BufferCopy+D'4', W, 1
	MOVLB 0x01
	MOVWF Process_Re_0000D_1_Endpoint, 1
	MOVLB 0x04
	MOVF gbl_bd0adrlie, W, 1
	MOVLB 0x01
	MOVWF CompTempVar708, 1
	CLRF CompTempVar710+D'1', 1
	CLRF CompTempVar711, 1
	MOVLB 0x04
	MOVF gbl_bd0adrhie, W, 1
	MOVLB 0x01
	MOVWF CompTempVar709, 1
	MOVF CompTempVar711, W, 1
	ADDWF CompTempVar708, F, 1
	MOVF CompTempVar710+D'1', W, 1
	ADDWFC CompTempVar709, F, 1
	MOVF CompTempVar708, W, 1
	MOVLB 0x00
	MOVWF Process_Re_0000D_1_OutBuffer, 1
	MOVLB 0x01
	MOVF CompTempVar709, W, 1
	MOVLB 0x00
	MOVWF Process_Re_0000D_1_OutBuffer+D'1', 1
	MOVF Process_Re_0000D_1_OutBuffer+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_OutBuffer, W, 1
	MOVWF FSR0L
	MOVLW 0x01
	ADDWF FSR0L, F
	MOVLW 0x00
	MOVWF INDF0
	MOVLW 0x02
	MOVLB 0x04
	MOVWF gbl_bd0cntie, 1
	MOVLW 0x03
	MOVLB 0x01
	CPFSLT Process_Re_0000D_1_Endpoint, 1
	BRA	label82
	MOVLB 0x00
	MOVF Process_Re_0000D_1_UEPArray+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_UEPArray, W, 1
	MOVLB 0x01
	ADDWF Process_Re_0000D_1_Endpoint, W, 1
	MOVWF FSR0L
	MOVLW 0x01
	ANDWF INDF0, W
	MOVWF CompTempVar719, 1
	MOVLB 0x00
	MOVF Process_Re_0000D_1_OutBuffer+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_OutBuffer, W, 1
	MOVWF FSR0L
	MOVLB 0x01
	CLRF CompTempVar715, 1
	MOVF CompTempVar715, W, 1
	ADDWF FSR0L, F
	MOVF CompTempVar719, W, 1
	MOVWF INDF0
	MOVLW 0xC8
	MOVLB 0x04
	MOVWF gbl_bd0statie, 1
	RETURN
label82
	BSF gbl_uep0,0
	RETURN
label83
	BTFSS gbl_BufferCopy,5, 1
	RETURN
	MOVLB 0x04
	MOVF gbl_bd0adrlie, W, 1
	MOVLB 0x01
	MOVWF CompTempVar720, 1
	CLRF CompTempVar722+D'1', 1
	CLRF CompTempVar723, 1
	MOVLB 0x04
	MOVF gbl_bd0adrhie, W, 1
	MOVLB 0x01
	MOVWF CompTempVar721, 1
	MOVF CompTempVar723, W, 1
	ADDWF CompTempVar720, F, 1
	MOVF CompTempVar722+D'1', W, 1
	ADDWFC CompTempVar721, F, 1
	MOVF CompTempVar720, W, 1
	MOVLB 0x00
	MOVWF Process_Re_0000D_1_OutBuffer, 1
	MOVLB 0x01
	MOVF CompTempVar721, W, 1
	MOVLB 0x00
	MOVWF Process_Re_0000D_1_OutBuffer+D'1', 1
	MOVLW 0x21
	CPFSEQ gbl_BufferCopy, 1
	BRA	label84
	BRA	label89
label84
	MOVLW 0xA1
	CPFSEQ gbl_BufferCopy, 1
	BRA	label85
	BRA	label95
label85
	MOVLW 0x22
	CPFSEQ gbl_BufferCopy, 1
	BRA	label86
	BRA	label100
label86
	MOVLW 0x23
	CPFSEQ gbl_BufferCopy, 1
	BRA	label87
	BRA	label101
label87
	MOVLW 0xA2
	CPFSEQ gbl_BufferCopy, 1
	BRA	label88
	BRA	label102
label88
	MOVLW 0xA3
	CPFSEQ gbl_BufferCopy, 1
	BRA	label104
	BRA	label103
label89
	MOVLW 0x0B
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label90
	BRA	label92
label90
	MOVLW 0x09
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label91
	RETURN
label91
	MOVLW 0x0A
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label94
	BRA	label93
label92
	MOVF gbl_BufferCopy+D'2', W, 1
	MOVWF gbl_USB_protocol, 1
	MOVLB 0x04
	CLRF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	MOVLB 0x00
	CLRF gbl_USB_dev_req, 1
	RETURN
label93
	BSF gbl_uep0,0
	RETURN
label94
	BSF gbl_uep0,0
	RETURN
label95
	MOVLW 0x03
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label96
	BRA	label97
label96
	DECF gbl_BufferCopy+D'1', W, 1
	BTFSC STATUS,Z
	RETURN
	MOVLW 0x02
	CPFSEQ gbl_BufferCopy+D'1', 1
	BRA	label99
	BRA	label98
label97
	MOVF Process_Re_0000D_1_OutBuffer+D'1', W, 1
	MOVWF FSR0H
	MOVF Process_Re_0000D_1_OutBuffer, W, 1
	MOVWF FSR0L
	MOVLB 0x01
	CLRF CompTempVar726, 1
	MOVF CompTempVar726, W, 1
	ADDWF FSR0L, F
	MOVLB 0x00
	MOVF gbl_USB_protocol, W, 1
	MOVWF INDF0
	MOVLW 0x01
	MOVLB 0x04
	MOVWF gbl_bd0cntie, 1
	MOVLW 0xC8
	MOVWF gbl_bd0statie, 1
	RETURN
label98
	BSF gbl_uep0,0
	RETURN
label99
	BSF gbl_uep0,0
	RETURN
label100
	BSF gbl_uep0,0
	RETURN
label101
	BSF gbl_uep0,0
	RETURN
label102
	BSF gbl_uep0,0
	RETURN
label103
	BSF gbl_uep0,0
	RETURN
label104
	BSF gbl_uep0,0
	RETURN
; } Process_Req function end

	ORG 0x00000BF0
Count_Erro_0000C
; { Count_Error ; function begin
	BTFSS gbl_ueir,0
	BRA	label105
	BTFSS gbl_ueie,0
	BRA	label105
	MOVLB 0x00
	INFSNZ gbl_USB_PID_ERR, F, 1
	INCF gbl_USB_PID_ERR+D'1', F, 1
label105
	BTFSS gbl_ueir,1
	BRA	label106
	BTFSS gbl_ueie,1
	BRA	label106
	MOVLB 0x00
	INFSNZ gbl_USB_CRC5_ERR, F, 1
	INCF gbl_USB_CRC5_ERR+D'1', F, 1
label106
	BTFSS gbl_ueir,2
	BRA	label107
	BTFSS gbl_ueie,2
	BRA	label107
	MOVLB 0x00
	INFSNZ gbl_USB_CRC16_ERR, F, 1
	INCF gbl_USB_CRC16_ERR+D'1', F, 1
label107
	BTFSS gbl_ueir,3
	BRA	label108
	BTFSS gbl_ueie,3
	BRA	label108
	MOVLB 0x00
	INFSNZ gbl_USB_DFN8_ERR, F, 1
	INCF gbl_USB_DFN8_ERR+D'1', F, 1
label108
	BTFSS gbl_ueir,4
	BRA	label109
	BTFSS gbl_ueie,4
	BRA	label109
	MOVLB 0x00
	INFSNZ gbl_USB_BTO_ERR, F, 1
	INCF gbl_USB_BTO_ERR+D'1', F, 1
label109
	BTFSS gbl_ueir,7
	BRA	label110
	BTFSS gbl_ueie,7
	BRA	label110
	MOVLB 0x00
	INFSNZ gbl_USB_BTS_ERR, F, 1
	INCF gbl_USB_BTS_ERR+D'1', F, 1
label110
	CLRF gbl_ueir
	BCF gbl_uir,1
	RETURN
; } Count_Error function end

	ORG 0x00000C4A
timer1Set_00000
; { timer1Set ; function begin
	CLRF gbl_iSec, 1
	CLRF gbl_iMin, 1
	CLRF gbl_bres, 1
	CLRF gbl_bres+D'1', 1
	BTFSC timer1Set_00000_arg_isOn,0, 1
	BSF gbl_t1con,0
	BTFSS timer1Set_00000_arg_isOn,0, 1
	BCF gbl_t1con,0
	RETURN
; } timer1Set function end

	ORG 0x00000C5C
testButton_00000
; { testButton ; function begin
	BCF STATUS,C
	MOVLB 0x00
	RLCF gbl_buttonState, F, 1
	BTFSS gbl_portb,2
	BSF gbl_buttonState,0, 1
	MOVLW 0xC7
	ANDWF gbl_buttonState, W, 1
	MOVWF CompTempVar728, 1
	MOVLW 0x07
	CPFSEQ CompTempVar728, 1
	BRA	label111
	SETF gbl_buttonState, 1
	MOVLW 0x01
	MOVWF CompTempVarRet727, 1
	RETURN
label111
	CLRF CompTempVarRet727, 1
	RETURN
; } testButton function end

	ORG 0x00000C7E
ServiceUSB_00000
; { ServiceUSB ; function begin
	BTFSC gbl_uir,3
	CALL Process_Re_0000D
	BTFSC gbl_uir,5
	CALL USBStall_00000
	BTFSC gbl_uir,1
	CALL Count_Erro_0000C
	BTFSC gbl_uie,4
	CALL USBSleep_00000
	RETURN
; } ServiceUSB function end

	ORG 0x00000C98
PutEP1_00000
; { PutEP1 ; function begin
	MOVLW 0x80
	MOVLB 0x04
	ANDWF gbl_bd1statie, W, 1
	MOVLB 0x01
	MOVWF CompTempVar570, 1
	MOVF CompTempVar570, F, 1
	BNZ	label114
	MOVLB 0x00
	MOVF PutEP1_00000_arg_bytes, W, 1
	MOVLB 0x04
	MOVWF gbl_bd1cntie, 1
	MOVF gbl_bd1adrlie, W, 1
	MOVLB 0x01
	MOVWF PutEP1_00000_1_tobuffer, 1
	CLRF CompTempVar573+D'1', 1
	CLRF CompTempVar574, 1
	MOVLB 0x04
	MOVF gbl_bd1adrhie, W, 1
	MOVLB 0x01
	MOVWF PutEP1_00000_1_tobuffer+D'1', 1
	MOVF CompTempVar574, W, 1
	ADDWF PutEP1_00000_1_tobuffer, F, 1
	MOVF CompTempVar573+D'1', W, 1
	ADDWFC PutEP1_00000_1_tobuffer+D'1', F, 1
	MOVLB 0x00
	CLRF PutEP1_00000_1_i, 1
label112
	MOVF PutEP1_00000_arg_bytes, W, 1
	CPFSLT PutEP1_00000_1_i, 1
	BRA	label113
	MOVF PutEP1_00000_arg_buffer+D'1', W, 1
	MOVWF FSR0H
	MOVF PutEP1_00000_arg_buffer, W, 1
	MOVWF FSR0L
	MOVF PutEP1_00000_1_i, W, 1
	MOVLB 0x01
	MOVWF CompTempVar578, 1
	MOVF CompTempVar578, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar579, 1
	MOVF PutEP1_00000_1_tobuffer+D'1', W, 1
	MOVWF FSR0H
	MOVF PutEP1_00000_1_tobuffer, W, 1
	MOVLB 0x00
	ADDWF PutEP1_00000_1_i, W, 1
	MOVWF FSR0L
	MOVLB 0x01
	MOVF CompTempVar579, W, 1
	MOVWF INDF0
	MOVLB 0x00
	INCF PutEP1_00000_1_i, F, 1
	BRA	label112
label113
	MOVLW 0x40
	MOVLB 0x04
	ANDWF gbl_bd1statie, F, 1
	MOVLW 0x40
	XORWF gbl_bd1statie, F, 1
	MOVLW 0x88
	XORWF gbl_bd1statie, F, 1
	MOVLW 0x01
	MOVLB 0x01
	MOVWF CompTempVarRet569, 1
	RETURN
label114
	CLRF CompTempVarRet569, 1
	RETURN
; } PutEP1 function end

	ORG 0x00000D1A
InitUSB_00000
; { InitUSB ; function begin
	BSF gbl_ucfg,2
	BSF gbl_ucfg,4
	BSF gbl_uie,0
	BSF gbl_pie2,5
	BSF gbl_ucon,6
	BCF gbl_ucon,6
	BSF gbl_ucon,3
	MOVLB 0x00
	CLRF gbl_USB_Curr_Config, 1
	MOVLW 0x01
	MOVWF gbl_USB_status_device, 1
	CLRF InitUSB_00000_1_USB_Interface, 1
	CLRF InitUSB_00000_1_USB_Interface+D'1', 1
	CLRF InitUSB_00000_1_USB_Interface+D'2', 1
	CLRF gbl_USB_dev_req, 1
	CLRF gbl_USB_PID_ERR, 1
	CLRF gbl_USB_PID_ERR+D'1', 1
	CLRF gbl_USB_CRC5_ERR, 1
	CLRF gbl_USB_CRC5_ERR+D'1', 1
	CLRF gbl_USB_CRC16_ERR, 1
	CLRF gbl_USB_CRC16_ERR+D'1', 1
	CLRF gbl_USB_DFN8_ERR, 1
	CLRF gbl_USB_DFN8_ERR+D'1', 1
	CLRF gbl_USB_BTO_ERR, 1
	CLRF gbl_USB_BTO_ERR+D'1', 1
	CLRF gbl_USB_BTS_ERR, 1
	CLRF gbl_USB_BTS_ERR+D'1', 1
	RETURN
; } InitUSB function end

	ORG 0x00000D52
main
; { main ; function begin
	CLRF gbl_trisa
	CLRF gbl_porta
	MOVLW 0x05
	MOVWF gbl_trisb
	CLRF gbl_portb
	CLRF gbl_trisc
	CLRF gbl_portc
	CLRF gbl_adcon0
	MOVLB 0x01
	SETF main_1_tablex, 1
	SETF main_1_tablex+D'1', 1
	SETF main_1_tablex+D'2', 1
	MOVLW 0x01
	MOVWF main_1_tablex+D'3', 1
	MOVWF main_1_tablex+D'4', 1
	MOVWF main_1_tablex+D'5', 1
	MOVWF main_1_tablex+D'6', 1
	MOVWF main_1_tablex+D'7', 1
	MOVWF main_1_tablex+D'8', 1
	SETF main_1_tablex+D'9', 1
	SETF main_1_tablex+D'10', 1
	SETF main_1_tablex+D'11', 1
	SETF main_1_tabley, 1
	CLRF main_1_tabley+D'1', 1
	MOVLW 0x01
	MOVWF main_1_tabley+D'2', 1
	MOVWF main_1_tabley+D'3', 1
	CLRF main_1_tabley+D'4', 1
	SETF main_1_tabley+D'5', 1
	SETF main_1_tabley+D'6', 1
	CLRF main_1_tabley+D'7', 1
	MOVLW 0x01
	MOVWF main_1_tabley+D'8', 1
	MOVWF main_1_tabley+D'9', 1
	CLRF main_1_tabley+D'10', 1
	SETF main_1_tabley+D'11', 1
	MOVLW 0x0E
	MOVLB 0x00
	MOVWF delay_ms_00000_arg_del, 1
	CALL delay_ms_00000
	CALL InitUSB_00000
	CLRF main_1_buffer, 1
	MOVLW 0x0A
	MOVWF main_1_i, 1
	CLRF main_1_j, 1
	CLRF main_1_j+D'1', 1
	BCF gbl_t0con,5
	BCF gbl_t0con,3
	BSF gbl_intcon,5
	BSF gbl_t1con,5
	BCF gbl_t1con,4
	BSF gbl_pie1,0
	BSF gbl_intcon,7
	BSF gbl_intcon,6
label115
	MOVLB 0x00
	BTFSS gbl_cTask,1, 1
	BRA	label120
	CALL testButton_00000
	MOVF CompTempVarRet727, F, 1
	BZ	label117
	BTFSC gbl_isJiggling,0, 1
	BRA	label116
	BSF timer1Set_00000_arg_isOn,0, 1
	CALL timer1Set_00000
	BSF gbl_isJiggling,0, 1
	BSF gbl_isMoving,1, 1
	BSF gbl_portb,1
	BRA	label117
label116
	BCF timer1Set_00000_arg_isOn,0, 1
	CALL timer1Set_00000
	BCF gbl_isJiggling,0, 1
	BCF gbl_isMoving,1, 1
	BCF gbl_portb,1
label117
	CALL ServiceUSB_00000
	MOVLB 0x00
	BTFSS gbl_isJiggling,0, 1
	BRA	label119
	BTFSS gbl_isMoving,1, 1
	BRA	label119
	MOVLW 0x09
	CPFSGT main_1_i, 1
	BRA	label118
	CLRF main_1_i, 1
	INFSNZ main_1_j, F, 1
	INCF main_1_j+D'1', F, 1
	MOVLW 0x0C
	CPFSEQ main_1_j, 1
	BRA	label118
	MOVF main_1_j+D'1', W, 1
	BNZ	label118
	CLRF main_1_j, 1
	CLRF main_1_j+D'1', 1
	BCF gbl_isMoving,1, 1
label118
	LFSR 0x00,  main_1_tablex
	MOVF FSR0L, W
	MOVF main_1_j, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF main_1_buffer+D'1', 1
	LFSR 0x00,  main_1_tabley
	MOVF FSR0L, W
	MOVF main_1_j, W, 1
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF main_1_buffer+D'2', 1
label119
	BCF gbl_cTask,1, 1
label120
	BTFSS gbl_cTask,2, 1
	BRA	label124
	MOVLW 0x78
	CPFSLT gbl_iMin, 1
	BRA	label121
	BRA	label122
label121
	BCF timer1Set_00000_arg_isOn,0, 1
	CALL timer1Set_00000
	BTFSS gbl_isJiggling,0, 1
	BRA	label123
	BCF gbl_isJiggling,0, 1
	BCF gbl_isMoving,1, 1
	BCF gbl_portb,1
	BRA	label123
label122
	BSF gbl_isMoving,1, 1
label123
	BCF gbl_cTask,2, 1
label124
	MOVLW 0x03
	ANDWF gbl_USWSTAT, W, 1
	MOVWF CompTempVar734, 1
	MOVLW 0x03
	CPFSEQ CompTempVar734, 1
	BRA	label115
	BTFSS gbl_isJiggling,0, 1
	BRA	label115
	BTFSS gbl_isMoving,1, 1
	BRA	label115
	MOVLW 0x03
	MOVWF PutEP1_00000_arg_bytes, 1
	MOVLW HIGH(main_1_buffer+D'0')
	MOVWF PutEP1_00000_arg_buffer+D'1', 1
	MOVLW LOW(main_1_buffer+D'0')
	MOVWF PutEP1_00000_arg_buffer, 1
	CALL PutEP1_00000
	MOVF CompTempVarRet569, F, 1
	BZ	label125
	MOVLB 0x00
	INCF main_1_i, F, 1
label125
	BRA	label115
; } main function end

	ORG 0x00000E86
_startup
	MOVLB 0x00
	BCF gbl_isJiggling,0, 1
	BCF gbl_isMoving,1, 1
	CLRF gbl_buttonState, 1
	CLRF gbl_bres, 1
	CLRF gbl_bres+D'1', 1
	CLRF gbl_iSec, 1
	CLRF gbl_iMin, 1
	MOVLW 0x08
	MOVLB 0x04
	MOVWF gbl_bd0cntoe, 1
	CLRF gbl_bd0adrloe, 1
	MOVLW 0x05
	MOVWF gbl_bd0adrhoe, 1
	MOVLW 0x08
	MOVWF gbl_bd0cntie, 1
	MOVLW 0x80
	MOVWF gbl_bd0adrlie, 1
	MOVLW 0x05
	MOVWF gbl_bd0adrhie, 1
	MOVLW 0x08
	MOVWF gbl_bd1cntoe, 1
	CLRF gbl_bd1adrloe, 1
	MOVLW 0x06
	MOVWF gbl_bd1adrhoe, 1
	MOVLW 0x08
	MOVWF gbl_bd1cntie, 1
	MOVLW 0x80
	MOVWF gbl_bd1adrlie, 1
	MOVLW 0x06
	MOVWF gbl_bd1adrhie, 1
	MOVLW 0x08
	MOVWF gbl_bd2cntoe, 1
	CLRF gbl_bd2adrloe, 1
	MOVLW 0x07
	MOVWF gbl_bd2adrhoe, 1
	MOVLW 0x08
	MOVWF gbl_bd2cntie, 1
	MOVLW 0x80
	MOVWF gbl_bd2adrlie, 1
	MOVLW 0x07
	MOVWF gbl_bd2adrhie, 1
	MOVLB 0x00
	CLRF gbl_USB_PID_ERR, 1
	CLRF gbl_USB_PID_ERR+D'1', 1
	CLRF gbl_USB_CRC5_ERR, 1
	CLRF gbl_USB_CRC5_ERR+D'1', 1
	CLRF gbl_USB_CRC16_ERR, 1
	CLRF gbl_USB_CRC16_ERR+D'1', 1
	CLRF gbl_USB_DFN8_ERR, 1
	CLRF gbl_USB_DFN8_ERR+D'1', 1
	CLRF gbl_USB_BTO_ERR, 1
	CLRF gbl_USB_BTO_ERR+D'1', 1
	CLRF gbl_USB_WRT_ERR, 1
	CLRF gbl_USB_WRT_ERR+D'1', 1
	CLRF gbl_USB_OWN_ERR, 1
	CLRF gbl_USB_OWN_ERR+D'1', 1
	CLRF gbl_USB_BTS_ERR, 1
	CLRF gbl_USB_BTS_ERR+D'1', 1
	CLRF gbl_BDT, 1
	MOVLW 0x04
	MOVWF gbl_BDT+D'1', 1
	MOVLW 0x04
	MOVWF gbl_String0, 1
	MOVLW 0x03
	MOVWF gbl_String0+D'1', 1
	MOVLW 0x09
	MOVWF gbl_String0+D'2', 1
	MOVLW 0x04
	MOVWF gbl_String0+D'3', 1
	MOVLW 0x14
	MOVWF gbl_String1, 1
	MOVLW 0x03
	MOVWF gbl_String1+D'1', 1
	MOVLW 0x4D
	MOVWF gbl_String1+D'2', 1
	CLRF gbl_String1+D'3', 1
	MOVLW 0x69
	MOVWF gbl_String1+D'4', 1
	CLRF gbl_String1+D'5', 1
	MOVLW 0x63
	MOVWF gbl_String1+D'6', 1
	CLRF gbl_String1+D'7', 1
	MOVLW 0x72
	MOVWF gbl_String1+D'8', 1
	CLRF gbl_String1+D'9', 1
	MOVLW 0x6F
	MOVWF gbl_String1+D'10', 1
	CLRF gbl_String1+D'11', 1
	MOVLW 0x63
	MOVWF gbl_String1+D'12', 1
	CLRF gbl_String1+D'13', 1
	MOVLW 0x68
	MOVWF gbl_String1+D'14', 1
	CLRF gbl_String1+D'15', 1
	MOVLW 0x69
	MOVWF gbl_String1+D'16', 1
	CLRF gbl_String1+D'17', 1
	MOVLW 0x70
	MOVWF gbl_String1+D'18', 1
	CLRF gbl_String1+D'19', 1
	MOVLW 0x30
	MOVWF gbl_String2, 1
	MOVLW 0x03
	MOVWF gbl_String2+D'1', 1
	MOVLW 0x50
	MOVWF gbl_String2+D'2', 1
	CLRF gbl_String2+D'3', 1
	MOVLW 0x49
	MOVWF gbl_String2+D'4', 1
	CLRF gbl_String2+D'5', 1
	MOVLW 0x43
	MOVWF gbl_String2+D'6', 1
	CLRF gbl_String2+D'7', 1
	MOVLW 0x31
	MOVWF gbl_String2+D'8', 1
	CLRF gbl_String2+D'9', 1
	MOVLW 0x38
	MOVWF gbl_String2+D'10', 1
	CLRF gbl_String2+D'11', 1
	MOVLW 0x46
	MOVWF gbl_String2+D'12', 1
	CLRF gbl_String2+D'13', 1
	MOVLW 0x32
	MOVWF gbl_String2+D'14', 1
	CLRF gbl_String2+D'15', 1
	MOVLW 0x35
	MOVWF gbl_String2+D'16', 1
	CLRF gbl_String2+D'17', 1
	MOVLW 0x35
	MOVWF gbl_String2+D'18', 1
	CLRF gbl_String2+D'19', 1
	MOVLW 0x30
	MOVWF gbl_String2+D'20', 1
	CLRF gbl_String2+D'21', 1
	MOVLW 0x20
	MOVWF gbl_String2+D'22', 1
	CLRF gbl_String2+D'23', 1
	MOVLW 0x4A
	MOVWF gbl_String2+D'24', 1
	CLRF gbl_String2+D'25', 1
	MOVLW 0x69
	MOVWF gbl_String2+D'26', 1
	CLRF gbl_String2+D'27', 1
	MOVLW 0x67
	MOVWF gbl_String2+D'28', 1
	CLRF gbl_String2+D'29', 1
	MOVLW 0x67
	MOVWF gbl_String2+D'30', 1
	CLRF gbl_String2+D'31', 1
	MOVLW 0x6C
	MOVWF gbl_String2+D'32', 1
	CLRF gbl_String2+D'33', 1
	MOVLW 0x65
	MOVWF gbl_String2+D'34', 1
	CLRF gbl_String2+D'35', 1
	MOVLW 0x20
	MOVWF gbl_String2+D'36', 1
	CLRF gbl_String2+D'37', 1
	MOVLW 0x4D
	MOVWF gbl_String2+D'38', 1
	CLRF gbl_String2+D'39', 1
	MOVLW 0x6F
	MOVWF gbl_String2+D'40', 1
	CLRF gbl_String2+D'41', 1
	MOVLW 0x75
	MOVWF gbl_String2+D'42', 1
	CLRF gbl_String2+D'43', 1
	MOVLW 0x73
	MOVWF gbl_String2+D'44', 1
	CLRF gbl_String2+D'45', 1
	MOVLW 0x65
	MOVWF gbl_String2+D'46', 1
	CLRF gbl_String2+D'47', 1
	MOVLW 0x05
	MOVWF gbl_ReportDescriptor1
	MOVLW 0x01
	MOVWF gbl_ReportDescriptor1+D'1'
	MOVLW 0x09
	MOVWF gbl_ReportDescriptor1+D'2'
	MOVLW 0x02
	MOVWF gbl_ReportDescriptor1+D'3'
	MOVLW 0xA1
	MOVWF gbl_ReportDescriptor1+D'4'
	MOVLW 0x01
	MOVWF gbl_ReportDescriptor1+D'5'
	MOVLW 0x09
	MOVWF gbl_ReportDescriptor1+D'6'
	MOVLW 0x01
	MOVWF gbl_ReportDescriptor1+D'7'
	MOVLW 0xA1
	MOVWF gbl_ReportDescriptor1+D'8'
	CLRF gbl_ReportDescriptor1+D'9'
	MOVLW 0x05
	MOVWF gbl_ReportDescriptor1+D'10'
	MOVLW 0x09
	MOVWF gbl_ReportDescriptor1+D'11'
	MOVLW 0x19
	MOVWF gbl_ReportDescriptor1+D'12'
	MOVLW 0x01
	MOVWF gbl_ReportDescriptor1+D'13'
	MOVLW 0x29
	MOVWF gbl_ReportDescriptor1+D'14'
	MOVLW 0x03
	MOVWF gbl_ReportDescriptor1+D'15'
	MOVLW 0x15
	MOVWF gbl_ReportDescriptor1+D'16'
	CLRF gbl_ReportDescriptor1+D'17'
	MOVLW 0x25
	MOVWF gbl_ReportDescriptor1+D'18'
	MOVLW 0x01
	MOVWF gbl_ReportDescriptor1+D'19'
	MOVLW 0x95
	MOVWF gbl_ReportDescriptor1+D'20'
	MOVLW 0x03
	MOVWF gbl_ReportDescriptor1+D'21'
	MOVLW 0x75
	MOVWF gbl_ReportDescriptor1+D'22'
	MOVLW 0x01
	MOVWF gbl_ReportDescriptor1+D'23'
	MOVLW 0x81
	MOVWF gbl_ReportDescriptor1+D'24'
	MOVLW 0x02
	MOVWF gbl_ReportDescriptor1+D'25'
	MOVLW 0x95
	MOVWF gbl_ReportDescriptor1+D'26'
	MOVLW 0x01
	MOVWF gbl_ReportDescriptor1+D'27'
	MOVLW 0x75
	MOVWF gbl_ReportDescriptor1+D'28'
	MOVLW 0x05
	MOVWF gbl_ReportDescriptor1+D'29'
	MOVLW 0x81
	MOVWF gbl_ReportDescriptor1+D'30'
	MOVLW 0x01
	MOVWF gbl_ReportDescriptor1+D'31'
	MOVLW 0x05
	MOVWF gbl_ReportDescriptor1+D'32'
	MOVLW 0x01
	MOVWF gbl_ReportDescriptor1+D'33'
	MOVLW 0x09
	MOVWF gbl_ReportDescriptor1+D'34'
	MOVLW 0x30
	MOVWF gbl_ReportDescriptor1+D'35'
	MOVLW 0x09
	MOVWF gbl_ReportDescriptor1+D'36'
	MOVLW 0x31
	MOVWF gbl_ReportDescriptor1+D'37'
	MOVLW 0x15
	MOVWF gbl_ReportDescriptor1+D'38'
	MOVLW 0x81
	MOVWF gbl_ReportDescriptor1+D'39'
	MOVLW 0x25
	MOVWF gbl_ReportDescriptor1+D'40'
	MOVLW 0x7F
	MOVWF gbl_ReportDescriptor1+D'41'
	MOVLW 0x75
	MOVWF gbl_ReportDescriptor1+D'42'
	MOVLW 0x08
	MOVWF gbl_ReportDescriptor1+D'43'
	MOVLW 0x95
	MOVWF gbl_ReportDescriptor1+D'44'
	MOVLW 0x02
	MOVWF gbl_ReportDescriptor1+D'45'
	MOVLW 0x81
	MOVWF gbl_ReportDescriptor1+D'46'
	MOVLW 0x06
	MOVWF gbl_ReportDescriptor1+D'47'
	MOVLW 0xC0
	MOVWF gbl_ReportDescriptor1+D'48'
	MOVLW 0xC0
	MOVWF gbl_ReportDescriptor1+D'49'
	MOVLW 0x12
	MOVWF gbl_DeviceDescriptor, 1
	MOVLW 0x01
	MOVWF gbl_DeviceDescriptor+D'1', 1
	MOVLW 0x10
	MOVWF gbl_DeviceDescriptor+D'2', 1
	MOVLW 0x01
	MOVWF gbl_DeviceDescriptor+D'3', 1
	CLRF gbl_DeviceDescriptor+D'4', 1
	CLRF gbl_DeviceDescriptor+D'5', 1
	CLRF gbl_DeviceDescriptor+D'6', 1
	MOVLW 0x08
	MOVWF gbl_DeviceDescriptor+D'7', 1
	MOVLW 0xD8
	MOVWF gbl_DeviceDescriptor+D'8', 1
	MOVLW 0x04
	MOVWF gbl_DeviceDescriptor+D'9', 1
	MOVLW 0x09
	MOVWF gbl_DeviceDescriptor+D'10', 1
	CLRF gbl_DeviceDescriptor+D'11', 1
	CLRF gbl_DeviceDescriptor+D'12', 1
	MOVLW 0x02
	MOVWF gbl_DeviceDescriptor+D'13', 1
	MOVLW 0x01
	MOVWF gbl_DeviceDescriptor+D'14', 1
	MOVLW 0x02
	MOVWF gbl_DeviceDescriptor+D'15', 1
	CLRF gbl_DeviceDescriptor+D'16', 1
	MOVLW 0x01
	MOVWF gbl_DeviceDescriptor+D'17', 1
	MOVLW 0x09
	MOVWF gbl_ConfigDescriptor
	MOVLW 0x02
	MOVWF gbl_ConfigDescriptor+D'1'
	MOVLW 0x22
	MOVWF gbl_ConfigDescriptor+D'2'
	CLRF gbl_ConfigDescriptor+D'3'
	MOVLW 0x01
	MOVWF gbl_ConfigDescriptor+D'4'
	MOVLW 0x01
	MOVWF gbl_ConfigDescriptor+D'5'
	CLRF gbl_ConfigDescriptor+D'6'
	MOVLW 0xA0
	MOVWF gbl_ConfigDescriptor+D'7'
	MOVLW 0x32
	MOVWF gbl_ConfigDescriptor+D'8'
	MOVLW 0x09
	MOVWF gbl_ConfigDescriptor+D'9'
	MOVLW 0x04
	MOVWF gbl_ConfigDescriptor+D'10'
	CLRF gbl_ConfigDescriptor+D'11'
	CLRF gbl_ConfigDescriptor+D'12'
	MOVLW 0x01
	MOVWF gbl_ConfigDescriptor+D'13'
	MOVLW 0x03
	MOVWF gbl_ConfigDescriptor+D'14'
	MOVLW 0x01
	MOVWF gbl_ConfigDescriptor+D'15'
	MOVLW 0x02
	MOVWF gbl_ConfigDescriptor+D'16'
	CLRF gbl_ConfigDescriptor+D'17'
	MOVLW 0x09
	MOVWF gbl_ConfigDescriptor+D'18'
	MOVLW 0x21
	MOVWF gbl_ConfigDescriptor+D'19'
	MOVLW 0x10
	MOVWF gbl_ConfigDescriptor+D'20'
	MOVLW 0x01
	MOVWF gbl_ConfigDescriptor+D'21'
	CLRF gbl_ConfigDescriptor+D'22'
	MOVLW 0x01
	MOVWF gbl_ConfigDescriptor+D'23'
	MOVLW 0x22
	MOVWF gbl_ConfigDescriptor+D'24'
	MOVLW 0x32
	MOVWF gbl_ConfigDescriptor+D'25'
	CLRF gbl_ConfigDescriptor+D'26'
	MOVLW 0x07
	MOVWF gbl_ConfigDescriptor+D'27'
	MOVLW 0x05
	MOVWF gbl_ConfigDescriptor+D'28'
	MOVLW 0x81
	MOVWF gbl_ConfigDescriptor+D'29'
	MOVLW 0x03
	MOVWF gbl_ConfigDescriptor+D'30'
	MOVLW 0x03
	MOVWF gbl_ConfigDescriptor+D'31'
	CLRF gbl_ConfigDescriptor+D'32'
	MOVLW 0x0A
	MOVWF gbl_ConfigDescriptor+D'33'
	MOVLW 0x32
	MOVWF gbl_ReportDescrSize, 1
	CLRF gbl_ReportDescrSize+D'1', 1
	MOVLW 0x09
	MOVWF gbl_HIDDescriptor, 1
	MOVLW 0x21
	MOVWF gbl_HIDDescriptor+D'1', 1
	MOVLW 0x10
	MOVWF gbl_HIDDescriptor+D'2', 1
	MOVLW 0x01
	MOVWF gbl_HIDDescriptor+D'3', 1
	CLRF gbl_HIDDescriptor+D'4', 1
	MOVLW 0x01
	MOVWF gbl_HIDDescriptor+D'5', 1
	MOVLW 0x22
	MOVWF gbl_HIDDescriptor+D'6', 1
	MOVLW 0x32
	MOVWF gbl_HIDDescriptor+D'7', 1
	CLRF gbl_HIDDescriptor+D'8', 1
	GOTO	main
	ORG 0x00001184
interrupt
; { interrupt ; function begin
	MOVFF FSR0H,  Int1Context
	MOVFF FSR0L,  Int1Context+D'1'
	MOVFF PRODH,  Int1Context+D'2'
	MOVFF PRODL,  Int1Context+D'3'
	BTFSS gbl_pir2,5
	BRA	label132
	BTFSS gbl_uir,2
	BRA	label127
	BTFSC gbl_uie,2
	CALL USBActivit_0000A
label127
	BTFSS gbl_uir,0
	BRA	label128
	BTFSS gbl_uie,0
	BRA	label128
	CALL USBReset_00000
label128
	BTFSS gbl_uir,3
	BRA	label131
	BTFSS gbl_uie,3
	BRA	label131
	MOVLW 0x05
	MOVLB 0x00
	CPFSEQ gbl_USB_dev_req, 1
	BRA	label130
	CLRF gbl_USB_dev_req, 1
	CLRF gbl_USB_Curr_Config, 1
	MOVF gbl_USB_address_pending, W, 1
	MOVWF gbl_uaddr
	MOVLW 0x01
	MOVWF gbl_uie
	MOVLW 0x00
	CPFSGT gbl_USB_address_pending, 1
	BRA	label129
	MOVLW 0x02
	MOVWF gbl_USWSTAT, 1
	BRA	label130
label129
	MOVLW 0x01
	MOVWF gbl_USWSTAT, 1
label130
	BCF gbl_uir,3
label131
	BCF gbl_pir2,5
label132
	BTFSS gbl_intcon,2
	BRA	label133
	MOVLB 0x00
	BSF gbl_cTask,1, 1
	BCF gbl_intcon,2
label133
	BTFSS gbl_pir1,0
	BRA	label136
	MOVLW 0xAB
	MOVLB 0x00
	ADDWF gbl_bres, F, 1
	MOVLW 0x0A
	ADDWFC gbl_bres+D'1', F, 1
	MOVLW 0xF4
	SUBWF gbl_bres+D'1', W, 1
	BNZ	label134
	MOVLW 0x24
	CPFSLT gbl_bres, 1
	BRA	label134
	BRA	label135
label134
	BNC	label135
	MOVLW 0x24
	SUBWF gbl_bres, F, 1
	MOVLW 0xF4
	SUBWFB gbl_bres+D'1', F, 1
	INCF gbl_iSec, F, 1
	MOVLW 0x3C
	CPFSEQ gbl_iSec, 1
	BRA	label135
	INCF gbl_iMin, F, 1
	CLRF gbl_iSec, 1
	BSF gbl_cTask,2, 1
label135
	BCF gbl_pir1,0
label136
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
