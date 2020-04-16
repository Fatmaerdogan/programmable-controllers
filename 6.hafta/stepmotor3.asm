
; PICBASIC PRO(TM) Compiler 2.60, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\16F877.INC"


; Define statements.
; C:\PBP\16F877.BAS        	00018	DEFINE  CODE_SIZE 8
#define		CODE_SIZE		 8
; C:\PBP\STEPMO~4.PBP      	00002	define HSER_RCSTA 90h
#define		HSER_RCSTA		 90h
; C:\PBP\STEPMO~4.PBP      	00003	DEFINE HSER_TXSTA 24h
#define		HSER_TXSTA		 24h
; C:\PBP\STEPMO~4.PBP      	00004	DEFINE HSER_BAUD 9600    'terminaldeki haberleþme hýzý
#define		HSER_BAUD		 9600    
; C:\PBP\STEPMO~4.PBP      	00005	DEFINE HSER_CLROERR 1
#define		HSER_CLROERR		 1
; C:\PBP\STEPMO~4.PBP      	00007	DEFINE LOADER_USED 1 
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
; C:\PBP\STEPMO~4.PBP      	00012	A00038	k var byte[4]
_k               		EQU	RAM_START + 018h
; C:\PBP\STEPMO~4.PBP      	00001	A0003C	'stepmotor3. örnek
T1              		EQU	RAM_START + 01Ch
; C:\PBP\STEPMO~4.PBP      	00001	A0003E	'stepmotor3. örnek
T2              		EQU	RAM_START + 01Eh
; C:\PBP\STEPMO~4.PBP      	00013	A00040	i var byte
_i               		EQU	RAM_START + 020h
; C:\PBP\STEPMO~4.PBP      	00014	A00041	j var byte
_j               		EQU	RAM_START + 021h
; C:\PBP\STEPMO~4.PBP      	00015	A00042	x var byte
_x               		EQU	RAM_START + 022h
; C:\PBP\STEPMO~4.PBP      	00016	A00043	y var byte
_y               		EQU	RAM_START + 023h
; C:\PBP\16F877.BAS        	00022	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP\16F877.BAS        	00023	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PBP\16F877.BAS        	00024	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP\16F877.BAS        	00025	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
#define _PORTA??1        	 PORTA, 001h
#define _PORTA??0        	 PORTA, 000h

; Constants.
_bekle           		EQU	00064h
	INCLUDE	"STEPMO~4.MAC"
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
; C:\PBP\STEPMO~4.PBP      	00002	define HSER_RCSTA 90h
; C:\PBP\STEPMO~4.PBP      	00003	DEFINE HSER_TXSTA 24h
; C:\PBP\STEPMO~4.PBP      	00004	DEFINE HSER_BAUD 9600    'terminaldeki haberleþme hýzý
; C:\PBP\STEPMO~4.PBP      	00005	DEFINE HSER_CLROERR 1
; C:\PBP\STEPMO~4.PBP      	00007	DEFINE LOADER_USED 1 

; C:\PBP\STEPMO~4.PBP      	00008	ADCON1 = 7
	MOVE?CB	007h, ADCON1

; C:\PBP\STEPMO~4.PBP      	00009	TrisA = 011000 
	MOVE?CB	02AF8h, TRISA

; C:\PBP\STEPMO~4.PBP      	00010	TrisB = 0 
	MOVE?CB	000h, TRISB
; C:\PBP\STEPMO~4.PBP      	00017	bekle CON 100

; C:\PBP\STEPMO~4.PBP      	00019	k[0] = %00000001
	MOVE?CB	001h, _k

; C:\PBP\STEPMO~4.PBP      	00020	k[1] = %00000010
	MOVE?CB	002h, _k + 00001h

; C:\PBP\STEPMO~4.PBP      	00021	k[2] = %00000100
	MOVE?CB	004h, _k + 00002h

; C:\PBP\STEPMO~4.PBP      	00022	k[3] = %00001000
	MOVE?CB	008h, _k + 00003h

; C:\PBP\STEPMO~4.PBP      	00024	portA.1=0
	MOVE?CT	000h, _PORTA??1

; C:\PBP\STEPMO~4.PBP      	00025	portA.0=0
	MOVE?CT	000h, _PORTA??0

; C:\PBP\STEPMO~4.PBP      	00026	label:

	LABEL?L	_label	

; C:\PBP\STEPMO~4.PBP      	00027	    hserin 100,devam,[x]
	HSERINTIME?C	064h
	HSERIN?BL	_x, _devam

; C:\PBP\STEPMO~4.PBP      	00028	    hserout [x,13,10]
	HSEROUT?B	_x
	HSEROUT?C	00Dh
	HSEROUT?C	00Ah

; C:\PBP\STEPMO~4.PBP      	00029	    devam:

	LABEL?L	_devam	

; C:\PBP\STEPMO~4.PBP      	00030	    select case x

; C:\PBP\STEPMO~4.PBP      	00031	        case "a"
	CMPNE?BCL	_x, 061h, L00003

; C:\PBP\STEPMO~4.PBP      	00032	            if j>=0 And j<=3 then
	CMPGE?BCB	_j, 000h, T1
	CMPLE?BCB	_j, 003h, T2
	LAND?BBW	T1, T2, T2
	CMPF?WL	T2, L00004

; C:\PBP\STEPMO~4.PBP      	00033	            portb=k[j]
	AOUT?BBB	_k, _j, PORTB

; C:\PBP\STEPMO~4.PBP      	00034	            Pause bekle
	PAUSE?C	_bekle

; C:\PBP\STEPMO~4.PBP      	00035	            j=j-1
	SUB?BCB	_j, 001h, _j

; C:\PBP\STEPMO~4.PBP      	00036	            else
	GOTO?L	L00005
	LABEL?L	L00004	

; C:\PBP\STEPMO~4.PBP      	00037	            j=3
	MOVE?CB	003h, _j

; C:\PBP\STEPMO~4.PBP      	00038	            endif
	LABEL?L	L00005	

; C:\PBP\STEPMO~4.PBP      	00039	        case "d"
	GOTO?L	L00002
	LABEL?L	L00003	
	CMPNE?BCL	_x, 064h, L00006

; C:\PBP\STEPMO~4.PBP      	00040	            if j<=3 then
	CMPGT?BCL	_j, 003h, L00007

; C:\PBP\STEPMO~4.PBP      	00041	            portb=k[j]
	AOUT?BBB	_k, _j, PORTB

; C:\PBP\STEPMO~4.PBP      	00042	            Pause bekle
	PAUSE?C	_bekle

; C:\PBP\STEPMO~4.PBP      	00043	            j=j+1
	ADD?BCB	_j, 001h, _j

; C:\PBP\STEPMO~4.PBP      	00044	            else
	GOTO?L	L00008
	LABEL?L	L00007	

; C:\PBP\STEPMO~4.PBP      	00045	            j=0
	MOVE?CB	000h, _j

; C:\PBP\STEPMO~4.PBP      	00046	            endif
	LABEL?L	L00008	

; C:\PBP\STEPMO~4.PBP      	00047	        case "w"
	GOTO?L	L00002
	LABEL?L	L00006	
	CMPNE?BCL	_x, 077h, L00009

; C:\PBP\STEPMO~4.PBP      	00048	            GoSub ileri
	GOSUB?L	_ileri

; C:\PBP\STEPMO~4.PBP      	00049	        case "s"
	GOTO?L	L00002
	LABEL?L	L00009	
	CMPNE?BCL	_x, 073h, L00010

; C:\PBP\STEPMO~4.PBP      	00050	            gosub geri
	GOSUB?L	_geri

; C:\PBP\STEPMO~4.PBP      	00051	        end select
	LABEL?L	L00010	
	LABEL?L	L00002	

; C:\PBP\STEPMO~4.PBP      	00052	goto label
	GOTO?L	_label

; C:\PBP\STEPMO~4.PBP      	00053	ileri:

	LABEL?L	_ileri	

; C:\PBP\STEPMO~4.PBP      	00054	for x=0 to 9
	MOVE?CB	000h, _x
	LABEL?L	L00011	
	CMPGT?BCL	_x, 009h, L00012

; C:\PBP\STEPMO~4.PBP      	00055	    for y=0 to 4
	MOVE?CB	000h, _y
	LABEL?L	L00013	
	CMPGT?BCL	_y, 004h, L00014

; C:\PBP\STEPMO~4.PBP      	00056	    portb=k[y]
	AOUT?BBB	_k, _y, PORTB

; C:\PBP\STEPMO~4.PBP      	00057	    pause bekle
	PAUSE?C	_bekle

; C:\PBP\STEPMO~4.PBP      	00058	    next y
	NEXT?BCL	_y, 001h, L00013
	LABEL?L	L00014	

; C:\PBP\STEPMO~4.PBP      	00059	next x
	NEXT?BCL	_x, 001h, L00011
	LABEL?L	L00012	

; C:\PBP\STEPMO~4.PBP      	00060	return
	RETURN?	

; C:\PBP\STEPMO~4.PBP      	00062	geri:

	LABEL?L	_geri	

; C:\PBP\STEPMO~4.PBP      	00063	for x=0 to 9 
	MOVE?CB	000h, _x
	LABEL?L	L00015	
	CMPGT?BCL	_x, 009h, L00016

; C:\PBP\STEPMO~4.PBP      	00064	    for y=4 to 0 step -1
	MOVE?CB	004h, _y
	LABEL?L	L00017	
	CMPLT?BCL	_y, 000h, L00018

; C:\PBP\STEPMO~4.PBP      	00065	    portb=k[y-1]
	SUB?BCW	_y, 001h, T1
	AOUT?BWB	_k, T1, PORTB

; C:\PBP\STEPMO~4.PBP      	00066	    pause bekle
	PAUSE?C	_bekle

; C:\PBP\STEPMO~4.PBP      	00067	    next y
	NEXTM?BCL	_y, 001h, L00017
	LABEL?L	L00018	

; C:\PBP\STEPMO~4.PBP      	00068	next x
	NEXT?BCL	_x, 001h, L00015
	LABEL?L	L00016	

; C:\PBP\STEPMO~4.PBP      	00069	return
	RETURN?	

	END
