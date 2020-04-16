
; PICBASIC PRO(TM) Compiler 2.60, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\16F877.INC"


; Define statements.
; C:\PBP\16F877.BAS        	00018	DEFINE  CODE_SIZE 8
#define		CODE_SIZE		 8
; C:\PBP\ASANSOR.PBP       	00002	DEFINE LOADER_USED 1 
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
; C:\PBP\ASANSOR.PBP       	00001	A00038	'asansör
T1              		EQU	RAM_START + 018h
; C:\PBP\ASANSOR.PBP       	00012	A0003A	x var byte 'Bulunduðu Kat
_x               		EQU	RAM_START + 01Ah
; C:\PBP\ASANSOR.PBP       	00013	A0003B	y var byte  'Çaðýrýldýðý Kat
_y               		EQU	RAM_START + 01Bh
; C:\PBP\16F877.BAS        	00022	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP\16F877.BAS        	00023	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PBP\16F877.BAS        	00024	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP\16F877.BAS        	00025	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
#define _PORTA??4        	 PORTA, 004h
#define _PORTA??5        	 PORTA, 005h
#define _PORTA??0        	 PORTA, 000h
#define _PORTA??1        	 PORTA, 001h
#define _PORTA??2        	 PORTA, 002h
#define _PORTA??3        	 PORTA, 003h
	INCLUDE	"ASANSOR.MAC"
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
; C:\PBP\ASANSOR.PBP       	00002	DEFINE LOADER_USED 1 

; C:\PBP\ASANSOR.PBP       	00003	ADCON1 = 7
	MOVE?CB	007h, ADCON1

; C:\PBP\ASANSOR.PBP       	00005	TrisA = %001111
	MOVE?CB	00Fh, TRISA

; C:\PBP\ASANSOR.PBP       	00006	TrisB = %00000000
	MOVE?CB	000h, TRISB

; C:\PBP\ASANSOR.PBP       	00008	portA.4 = 1
	MOVE?CT	001h, _PORTA??4

; C:\PBP\ASANSOR.PBP       	00009	portA.5 = 1
	MOVE?CT	001h, _PORTA??5

; C:\PBP\ASANSOR.PBP       	00010	portB = %11111110
	MOVE?CB	0FEh, PORTB

; C:\PBP\ASANSOR.PBP       	00015	x=1 ' %00000001 
	MOVE?CB	001h, _x

; C:\PBP\ASANSOR.PBP       	00016	y=1  ' %00000001 
	MOVE?CB	001h, _y

; C:\PBP\ASANSOR.PBP       	00019	label: 

	LABEL?L	_label	

; C:\PBP\ASANSOR.PBP       	00022	    gosub buton
	GOSUB?L	_buton

; C:\PBP\ASANSOR.PBP       	00023	   while x < y  
	LABEL?L	L00001	
	CMPGE?BBL	_x, _y, L00002

; C:\PBP\ASANSOR.PBP       	00024	    gosub ust
	GOSUB?L	_ust

; C:\PBP\ASANSOR.PBP       	00025	   WEND  
	GOTO?L	L00001
	LABEL?L	L00002	

; C:\PBP\ASANSOR.PBP       	00026	   while x > y 
	LABEL?L	L00003	
	CMPLE?BBL	_x, _y, L00004

; C:\PBP\ASANSOR.PBP       	00027	    gosub alt
	GOSUB?L	_alt

; C:\PBP\ASANSOR.PBP       	00028	   WEND 
	GOTO?L	L00003
	LABEL?L	L00004	

; C:\PBP\ASANSOR.PBP       	00029	  portA.4 = 1
	MOVE?CT	001h, _PORTA??4

; C:\PBP\ASANSOR.PBP       	00030	    portA.5 = 1 
	MOVE?CT	001h, _PORTA??5

; C:\PBP\ASANSOR.PBP       	00035	goto label
	GOTO?L	_label

; C:\PBP\ASANSOR.PBP       	00038	ust: 

	LABEL?L	_ust	

; C:\PBP\ASANSOR.PBP       	00039	        portA.4 = 0
	MOVE?CT	000h, _PORTA??4

; C:\PBP\ASANSOR.PBP       	00040	        portA.5 = 1
	MOVE?CT	001h, _PORTA??5

; C:\PBP\ASANSOR.PBP       	00042	        x = x << 1
	SHIFTL?BCB	_x, 001h, _x

; C:\PBP\ASANSOR.PBP       	00043	        portb = ~x
	NOT?BB	_x, PORTB

; C:\PBP\ASANSOR.PBP       	00044	         pause 500
	PAUSE?C	001F4h

; C:\PBP\ASANSOR.PBP       	00046	return 
	RETURN?	

; C:\PBP\ASANSOR.PBP       	00048	alt: 

	LABEL?L	_alt	

; C:\PBP\ASANSOR.PBP       	00049	        portA.4 = 1
	MOVE?CT	001h, _PORTA??4

; C:\PBP\ASANSOR.PBP       	00050	        portA.5 = 0
	MOVE?CT	000h, _PORTA??5

; C:\PBP\ASANSOR.PBP       	00052	        x = x >> 1
	SHIFTR?BCB	_x, 001h, _x

; C:\PBP\ASANSOR.PBP       	00053	        portb = ~x
	NOT?BB	_x, PORTB

; C:\PBP\ASANSOR.PBP       	00054	        pause 500
	PAUSE?C	001F4h

; C:\PBP\ASANSOR.PBP       	00055	return 
	RETURN?	

; C:\PBP\ASANSOR.PBP       	00057	 buton:

	LABEL?L	_buton	

; C:\PBP\ASANSOR.PBP       	00058	    if portA.0 = 0 then y = 1 
	CMPNE?TCL	_PORTA??0, 000h, L00005
	MOVE?CB	001h, _y
	LABEL?L	L00005	

; C:\PBP\ASANSOR.PBP       	00059	    if portA.1 = 0 then y = 4
	CMPNE?TCL	_PORTA??1, 000h, L00007
	MOVE?CB	004h, _y
	LABEL?L	L00007	

; C:\PBP\ASANSOR.PBP       	00060	    if portA.2 = 0 then y = 16    
	CMPNE?TCL	_PORTA??2, 000h, L00009
	MOVE?CB	010h, _y
	LABEL?L	L00009	

; C:\PBP\ASANSOR.PBP       	00061	    if portA.3 = 0 then y = 64
	CMPNE?TCL	_PORTA??3, 000h, L00011
	MOVE?CB	040h, _y
	LABEL?L	L00011	

; C:\PBP\ASANSOR.PBP       	00062	return     
	RETURN?	

	END
