
; PICBASIC PRO(TM) Compiler 2.60, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\16F877.INC"


; Define statements.
; C:\PBP\16F877.BAS        	00018	DEFINE  CODE_SIZE 8
#define		CODE_SIZE		 8
; C:\PBP\ASD.PBP           	00001	DEFINE LOADER_USED 1 
#define		LOADER_USED		 1 

RAM_START       		EQU	00020h
RAM_END         		EQU	001EFh
RAM_BANKS       		EQU	00004h
BANK0_START     		EQU	00020h
BANK0_END       		EQU	0007Fh
BANK1_START     		EQU	000A0h
BANK1_END       		EQU	000EFh
BANK2_START     		EQU	00110h
BANK2_END       		EQU	0016Fh
BANK3_START     		EQU	00190h
BANK3_END       		EQU	001EFh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	021FFh

; C:\PBP\PBPPIC14.RAM      	00012	A00020	R0      VAR     WORD BANK0 SYSTEM       ' System Register
R0              		EQU	RAM_START + 000h
; C:\PBP\PBPPIC14.RAM      	00013	A00022	R1      VAR     WORD BANK0 SYSTEM       ' System Register
R1              		EQU	RAM_START + 002h
; C:\PBP\PBPPIC14.RAM      	00014	A00024	R2      VAR     WORD BANK0 SYSTEM       ' System Register
R2              		EQU	RAM_START + 004h
; C:\PBP\PBPPIC14.RAM      	00015	A00026	R3      VAR     WORD BANK0 SYSTEM       ' System Register
R3              		EQU	RAM_START + 006h
; C:\PBP\PBPPIC14.RAM      	00016	A00028	R4      VAR     WORD BANK0 SYSTEM       ' System Register
R4              		EQU	RAM_START + 008h
; C:\PBP\PBPPIC14.RAM      	00017	A0002A	R5      VAR     WORD BANK0 SYSTEM       ' System Register
R5              		EQU	RAM_START + 00Ah
; C:\PBP\PBPPIC14.RAM      	00018	A0002C	R6      VAR     WORD BANK0 SYSTEM       ' System Register
R6              		EQU	RAM_START + 00Ch
; C:\PBP\PBPPIC14.RAM      	00019	A0002E	R7      VAR     WORD BANK0 SYSTEM       ' System Register
R7              		EQU	RAM_START + 00Eh
; C:\PBP\PBPPIC14.RAM      	00020	A00030	R8      VAR     WORD BANK0 SYSTEM       ' System Register
R8              		EQU	RAM_START + 010h
; C:\PBP\PBPPIC14.RAM      	00026	A00032	FLAGS   VAR     BYTE BANK0 SYSTEM       ' Static flags
FLAGS           		EQU	RAM_START + 012h
; C:\PBP\PBPPIC14.RAM      	00025	A00033	GOP     VAR     BYTE BANK0 SYSTEM       ' Gen Op Parameter
GOP             		EQU	RAM_START + 013h
; C:\PBP\PBPPIC14.RAM      	00022	A00034	RM1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 014h
; C:\PBP\PBPPIC14.RAM      	00024	A00035	RM2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 015h
; C:\PBP\PBPPIC14.RAM      	00021	A00036	RR1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 016h
; C:\PBP\PBPPIC14.RAM      	00023	A00037	RR2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 017h
; C:\PBP\ASD.PBP           	00012	A00038	k var byte[10]
_k               		EQU	RAM_START + 018h
; C:\PBP\ASD.PBP           	00001	A00042	DEFINE LOADER_USED 1 
T1              		EQU	RAM_START + 022h
; C:\PBP\ASD.PBP           	00008	A00044	i var byte 
_i               		EQU	RAM_START + 024h
; C:\PBP\ASD.PBP           	00010	A00045	x var byte 
_x               		EQU	RAM_START + 025h
; C:\PBP\ASD.PBP           	00011	A00046	y var byte 
_y               		EQU	RAM_START + 026h
; C:\PBP\ASD.PBP           	00013	A00047	z var byte
_z               		EQU	RAM_START + 027h
; C:\PBP\16F877.BAS        	00022	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP\16F877.BAS        	00023	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PBP\16F877.BAS        	00024	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP\16F877.BAS        	00025	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
#define _PORTA??0        	 PORTA, 000h
#define _PORTA??1        	 PORTA, 001h

; Constants.
_bekle           		EQU	00005h
	INCLUDE	"ASD.MAC"
	INCLUDE	"C:\PBP\PBPPIC14.LIB"


; C:\PBP\16F877.BAS        	00012	BANK0   $0020, $007F
; C:\PBP\16F877.BAS        	00013	BANK1   $00A0, $00EF
; C:\PBP\16F877.BAS        	00014	BANK2   $0110, $016F
; C:\PBP\16F877.BAS        	00015	BANK3   $0190, $01EF
; C:\PBP\16F877.BAS        	00016	EEPROM  $2100, $21FF
; C:\PBP\16F877.BAS        	00017	LIBRARY "PBPPIC14"
; C:\PBP\16F877.BAS        	00018	DEFINE  CODE_SIZE 8

; C:\PBP\16F877.BAS        	00020	        include "PIC14EXT.BAS"

; C:\PBP\16F877.BAS        	00027	        include "PBPPIC14.RAM"
; C:\PBP\ASD.PBP           	00001	DEFINE LOADER_USED 1 

; C:\PBP\ASD.PBP           	00002	ADCON1 = 7
	MOVE?CB	007h, ADCON1

; C:\PBP\ASD.PBP           	00003	TrisA = 0 
	MOVE?CB	000h, TRISA

; C:\PBP\ASD.PBP           	00004	TrisB = 0 
	MOVE?CB	000h, TRISB

; C:\PBP\ASD.PBP           	00005	portA = 0
	MOVE?CB	000h, PORTA

; C:\PBP\ASD.PBP           	00006	portB = 0
	MOVE?CB	000h, PORTB
; C:\PBP\ASD.PBP           	00014	bekle CON 5          

; C:\PBP\ASD.PBP           	00016	k[0] = %00111111
	MOVE?CB	03Fh, _k

; C:\PBP\ASD.PBP           	00017	k[1] = %00000110
	MOVE?CB	006h, _k + 00001h

; C:\PBP\ASD.PBP           	00018	k[2] = %01011011
	MOVE?CB	05Bh, _k + 00002h

; C:\PBP\ASD.PBP           	00019	k[3] = %01001111
	MOVE?CB	04Fh, _k + 00003h

; C:\PBP\ASD.PBP           	00020	k[4] = %01100110
	MOVE?CB	066h, _k + 00004h

; C:\PBP\ASD.PBP           	00021	k[5] = %01101101
	MOVE?CB	06Dh, _k + 00005h

; C:\PBP\ASD.PBP           	00022	k[6] = %01111101
	MOVE?CB	07Dh, _k + 00006h

; C:\PBP\ASD.PBP           	00023	k[7] = %00000111
	MOVE?CB	007h, _k + 00007h

; C:\PBP\ASD.PBP           	00024	k[8] = %01111111
	MOVE?CB	07Fh, _k + 00008h

; C:\PBP\ASD.PBP           	00025	k[9] = %01101111
	MOVE?CB	06Fh, _k + 00009h

; C:\PBP\ASD.PBP           	00029	portA.0 = 1
	MOVE?CT	001h, _PORTA??0

; C:\PBP\ASD.PBP           	00040	label:

	LABEL?L	_label	

; C:\PBP\ASD.PBP           	00042	    For i = 0 TO 99  ' 0'dan 99'a kadar sayar
	MOVE?CB	000h, _i
	LABEL?L	L00001	
	CMPGT?BCL	_i, 063h, L00002

; C:\PBP\ASD.PBP           	00043	    x = i DIG 0
	DIG?BCB	_i, 000h, _x

; C:\PBP\ASD.PBP           	00044	    y = i DIG 1
	DIG?BCB	_i, 001h, _y

; C:\PBP\ASD.PBP           	00045	        for z = 0 to 49 'Ekranda gösterme kalýbý + 10ms    
	MOVE?CB	000h, _z
	LABEL?L	L00003	
	CMPGT?BCL	_z, 031h, L00004

; C:\PBP\ASD.PBP           	00046	            portA.0 = 1  : portA.1 = 0
	MOVE?CT	001h, _PORTA??0

; C:\PBP\ASD.PBP           	00046	            portA.0 = 1  : portA.1 = 0
	MOVE?CT	000h, _PORTA??1

; C:\PBP\ASD.PBP           	00047	            portB = k[x]
	AOUT?BBB	_k, _x, PORTB

; C:\PBP\ASD.PBP           	00048	            PAUSE bekle
	PAUSE?C	_bekle

; C:\PBP\ASD.PBP           	00050	            portA.0 = 0  : portA.1 = 1
	MOVE?CT	000h, _PORTA??0

; C:\PBP\ASD.PBP           	00050	            portA.0 = 0  : portA.1 = 1
	MOVE?CT	001h, _PORTA??1

; C:\PBP\ASD.PBP           	00051	            portB = k[y]
	AOUT?BBB	_k, _y, PORTB

; C:\PBP\ASD.PBP           	00052	            PAuse bekle 
	PAUSE?C	_bekle

; C:\PBP\ASD.PBP           	00053	        next z 
	NEXT?BCL	_z, 001h, L00003
	LABEL?L	L00004	

; C:\PBP\ASD.PBP           	00054	    Next i 
	NEXT?BCL	_i, 001h, L00001
	LABEL?L	L00002	

; C:\PBP\ASD.PBP           	00055	GOTO label
	GOTO?L	_label

	END
