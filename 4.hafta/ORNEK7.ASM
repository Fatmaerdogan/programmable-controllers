
; PICBASIC PRO(TM) Compiler 2.60, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\16F877.INC"


; Define statements.
; C:\PBP\16F877.BAS        	00018	DEFINE  CODE_SIZE 8
#define		CODE_SIZE		 8
; C:\PBP\ORNEK7.PBP        	00002	DEFINE LOADER_USED 1 
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
; C:\PBP\ORNEK7.PBP        	00014	A00038	k var byte[10]
_k               		EQU	RAM_START + 018h
; C:\PBP\ORNEK7.PBP        	00001	A00042	'Hesap MAkinesi
T1              		EQU	RAM_START + 022h
; C:\PBP\ORNEK7.PBP        	00010	A00044	i var byte 
_i               		EQU	RAM_START + 024h
; C:\PBP\ORNEK7.PBP        	00017	A00045	m var byte
_m               		EQU	RAM_START + 025h
; C:\PBP\ORNEK7.PBP        	00016	A00046	t var byte
_t               		EQU	RAM_START + 026h
; C:\PBP\ORNEK7.PBP        	00012	A00047	x var byte 
_x               		EQU	RAM_START + 027h
; C:\PBP\ORNEK7.PBP        	00013	A00048	y var byte 
_y               		EQU	RAM_START + 028h
; C:\PBP\ORNEK7.PBP        	00015	A00049	z var byte
_z               		EQU	RAM_START + 029h
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
#define _PORTB??4        	 PORTB, 004h
#define _PORTB??5        	 PORTB, 005h
#define _PORTB??6        	 PORTB, 006h
#define _PORTB??7        	 PORTB, 007h
#define _PORTB??2        	 PORTB, 002h
#define _PORTB??3        	 PORTB, 003h
#define _PORTB??1        	 PORTB, 001h
#define _PORTB??0        	 PORTB, 000h

; Constants.
_bekle           		EQU	00005h
	INCLUDE	"ORNEK7.MAC"
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
; C:\PBP\ORNEK7.PBP        	00002	DEFINE LOADER_USED 1 

; C:\PBP\ORNEK7.PBP        	00003	ADCON1 = 7
	MOVE?CB	007h, ADCON1

; C:\PBP\ORNEK7.PBP        	00005	TrisA = %00000000 
	MOVE?CB	000h, TRISA

; C:\PBP\ORNEK7.PBP        	00006	TrisB = %00000000 
	MOVE?CB	000h, TRISB

; C:\PBP\ORNEK7.PBP        	00007	portA = %00000000
	MOVE?CB	000h, PORTA

; C:\PBP\ORNEK7.PBP        	00008	portB = %00000000
	MOVE?CB	000h, PORTB
; C:\PBP\ORNEK7.PBP        	00019	bekle con 5

; C:\PBP\ORNEK7.PBP        	00021	k[0] = %00111111
	MOVE?CB	03Fh, _k

; C:\PBP\ORNEK7.PBP        	00022	k[1] = %00000110
	MOVE?CB	006h, _k + 00001h

; C:\PBP\ORNEK7.PBP        	00023	k[2] = %01011011
	MOVE?CB	05Bh, _k + 00002h

; C:\PBP\ORNEK7.PBP        	00024	k[3] = %01001111
	MOVE?CB	04Fh, _k + 00003h

; C:\PBP\ORNEK7.PBP        	00025	k[4] = %01100110
	MOVE?CB	066h, _k + 00004h

; C:\PBP\ORNEK7.PBP        	00026	k[5] = %01101101
	MOVE?CB	06Dh, _k + 00005h

; C:\PBP\ORNEK7.PBP        	00027	k[6] = %01111101
	MOVE?CB	07Dh, _k + 00006h

; C:\PBP\ORNEK7.PBP        	00028	k[7] = %00000111
	MOVE?CB	007h, _k + 00007h

; C:\PBP\ORNEK7.PBP        	00029	k[8] = %01111111
	MOVE?CB	07Fh, _k + 00008h

; C:\PBP\ORNEK7.PBP        	00030	k[9] = %01101111
	MOVE?CB	06Fh, _k + 00009h

; C:\PBP\ORNEK7.PBP        	00032	i=0
	MOVE?CB	000h, _i

; C:\PBP\ORNEK7.PBP        	00034	label:

	LABEL?L	_label	

; C:\PBP\ORNEK7.PBP        	00036	    gosub tus
	GOSUB?L	_tus

; C:\PBP\ORNEK7.PBP        	00037	    x = i DIG 0
	DIG?BCB	_i, 000h, _x

; C:\PBP\ORNEK7.PBP        	00038	    y = i DIG 1
	DIG?BCB	_i, 001h, _y

; C:\PBP\ORNEK7.PBP        	00039	    Gosub goster_label
	GOSUB?L	_goster_label

; C:\PBP\ORNEK7.PBP        	00041	GOTO label
	GOTO?L	_label

; C:\PBP\ORNEK7.PBP        	00043	goster_label:

	LABEL?L	_goster_label	

; C:\PBP\ORNEK7.PBP        	00044	    trisb = 0
	MOVE?CB	000h, TRISB

; C:\PBP\ORNEK7.PBP        	00045	        portA.0 = 1  : portA.1 = 0
	MOVE?CT	001h, _PORTA??0

; C:\PBP\ORNEK7.PBP        	00045	        portA.0 = 1  : portA.1 = 0
	MOVE?CT	000h, _PORTA??1

; C:\PBP\ORNEK7.PBP        	00046	            portB = k[x]
	AOUT?BBB	_k, _x, PORTB

; C:\PBP\ORNEK7.PBP        	00047	            PAUSE bekle
	PAUSE?C	_bekle

; C:\PBP\ORNEK7.PBP        	00049	            portA.0 = 0  : portA.1 = 1
	MOVE?CT	000h, _PORTA??0

; C:\PBP\ORNEK7.PBP        	00049	            portA.0 = 0  : portA.1 = 1
	MOVE?CT	001h, _PORTA??1

; C:\PBP\ORNEK7.PBP        	00050	            portB = k[y]
	AOUT?BBB	_k, _y, PORTB

; C:\PBP\ORNEK7.PBP        	00051	            PAuse bekle 
	PAUSE?C	_bekle

; C:\PBP\ORNEK7.PBP        	00052	return 
	RETURN?	

; C:\PBP\ORNEK7.PBP        	00054	hesapla:

	LABEL?L	_hesapla	

; C:\PBP\ORNEK7.PBP        	00055	    select  Case t

; C:\PBP\ORNEK7.PBP        	00056	       case "/"
	CMPNE?BCL	_t, 02Fh, L00003

; C:\PBP\ORNEK7.PBP        	00057	           m=z/i
	DIV?BBB	_z, _i, _m

; C:\PBP\ORNEK7.PBP        	00058	       case "*"
	GOTO?L	L00002
	LABEL?L	L00003	
	CMPNE?BCL	_t, 02Ah, L00004

; C:\PBP\ORNEK7.PBP        	00059	           m=z*i
	MUL?BBB	_z, _i, _m

; C:\PBP\ORNEK7.PBP        	00060	       case "+"
	GOTO?L	L00002
	LABEL?L	L00004	
	CMPNE?BCL	_t, 02Bh, L00005

; C:\PBP\ORNEK7.PBP        	00061	           m=z+i
	ADD?BBB	_z, _i, _m

; C:\PBP\ORNEK7.PBP        	00062	       case "-"
	GOTO?L	L00002
	LABEL?L	L00005	
	CMPNE?BCL	_t, 02Dh, L00006

; C:\PBP\ORNEK7.PBP        	00064	           if z>i then
	CMPLE?BBL	_z, _i, L00007

; C:\PBP\ORNEK7.PBP        	00065	              m=i-z
	SUB?BBB	_i, _z, _m

; C:\PBP\ORNEK7.PBP        	00066	           else
	GOTO?L	L00008
	LABEL?L	L00007	

; C:\PBP\ORNEK7.PBP        	00067	               m=z-i
	SUB?BBB	_z, _i, _m

; C:\PBP\ORNEK7.PBP        	00068	           Endif
	LABEL?L	L00008	

; C:\PBP\ORNEK7.PBP        	00069	    End select
	LABEL?L	L00006	
	LABEL?L	L00002	

; C:\PBP\ORNEK7.PBP        	00070	    trisb = 0
	MOVE?CB	000h, TRISB

; C:\PBP\ORNEK7.PBP        	00071	    x = m DIG 0
	DIG?BCB	_m, 000h, _x

; C:\PBP\ORNEK7.PBP        	00072	    y = m DIG 1
	DIG?BCB	_m, 001h, _y

; C:\PBP\ORNEK7.PBP        	00073	        portA.0 = 1  : portA.1 = 0
	MOVE?CT	001h, _PORTA??0

; C:\PBP\ORNEK7.PBP        	00073	        portA.0 = 1  : portA.1 = 0
	MOVE?CT	000h, _PORTA??1

; C:\PBP\ORNEK7.PBP        	00074	            portB = k[x]
	AOUT?BBB	_k, _x, PORTB

; C:\PBP\ORNEK7.PBP        	00075	            PAUSE bekle
	PAUSE?C	_bekle

; C:\PBP\ORNEK7.PBP        	00077	            portA.0 = 0  : portA.1 = 1
	MOVE?CT	000h, _PORTA??0

; C:\PBP\ORNEK7.PBP        	00077	            portA.0 = 0  : portA.1 = 1
	MOVE?CT	001h, _PORTA??1

; C:\PBP\ORNEK7.PBP        	00078	            portB = k[y]
	AOUT?BBB	_k, _y, PORTB

; C:\PBP\ORNEK7.PBP        	00079	            PAuse bekle
	PAUSE?C	_bekle

; C:\PBP\ORNEK7.PBP        	00081	     porta = 0 
	MOVE?CB	000h, PORTA

; C:\PBP\ORNEK7.PBP        	00082	    trisb = %00001111
	MOVE?CB	00Fh, TRISB

; C:\PBP\ORNEK7.PBP        	00083	    portb.4 = 0 : portb.5 = 0 : portb.6 = 0 : portb.7 = 1
	MOVE?CT	000h, _PORTB??4

; C:\PBP\ORNEK7.PBP        	00083	    portb.4 = 0 : portb.5 = 0 : portb.6 = 0 : portb.7 = 1
	MOVE?CT	000h, _PORTB??5

; C:\PBP\ORNEK7.PBP        	00083	    portb.4 = 0 : portb.5 = 0 : portb.6 = 0 : portb.7 = 1
	MOVE?CT	000h, _PORTB??6

; C:\PBP\ORNEK7.PBP        	00083	    portb.4 = 0 : portb.5 = 0 : portb.6 = 0 : portb.7 = 1
	MOVE?CT	001h, _PORTB??7

; C:\PBP\ORNEK7.PBP        	00084	    if portb.2 = 1 then i = 0 : m = 0 : z = 0 : t = 0 : goto label
	CMPNE?TCL	_PORTB??2, 001h, L00009
	MOVE?CB	000h, _i
	MOVE?CB	000h, _m
	MOVE?CB	000h, _z
	MOVE?CB	000h, _t
	GOTO?L	_label
	LABEL?L	L00009	

; C:\PBP\ORNEK7.PBP        	00086	Goto hesapla 
	GOTO?L	_hesapla

; C:\PBP\ORNEK7.PBP        	00088	tus:

	LABEL?L	_tus	

; C:\PBP\ORNEK7.PBP        	00089	    porta = 0 
	MOVE?CB	000h, PORTA

; C:\PBP\ORNEK7.PBP        	00090	    trisb = %00001111
	MOVE?CB	00Fh, TRISB

; C:\PBP\ORNEK7.PBP        	00091	    portb.4 = 1 : portb.5 = 0 : portb.6 = 0 : portb.7 = 0
	MOVE?CT	001h, _PORTB??4

; C:\PBP\ORNEK7.PBP        	00091	    portb.4 = 1 : portb.5 = 0 : portb.6 = 0 : portb.7 = 0
	MOVE?CT	000h, _PORTB??5

; C:\PBP\ORNEK7.PBP        	00091	    portb.4 = 1 : portb.5 = 0 : portb.6 = 0 : portb.7 = 0
	MOVE?CT	000h, _PORTB??6

; C:\PBP\ORNEK7.PBP        	00091	    portb.4 = 1 : portb.5 = 0 : portb.6 = 0 : portb.7 = 0
	MOVE?CT	000h, _PORTB??7

; C:\PBP\ORNEK7.PBP        	00092	    if portb.3 = 1 then i = 1       
	CMPNE?TCL	_PORTB??3, 001h, L00011
	MOVE?CB	001h, _i
	LABEL?L	L00011	

; C:\PBP\ORNEK7.PBP        	00093	    if portb.2 = 1 then i = 2
	CMPNE?TCL	_PORTB??2, 001h, L00013
	MOVE?CB	002h, _i
	LABEL?L	L00013	

; C:\PBP\ORNEK7.PBP        	00094	    if portb.1 = 1 then i = 3
	CMPNE?TCL	_PORTB??1, 001h, L00015
	MOVE?CB	003h, _i
	LABEL?L	L00015	

; C:\PBP\ORNEK7.PBP        	00095	    if portb.0 = 1 then t = "+" : z = i 
	CMPNE?TCL	_PORTB??0, 001h, L00017
	MOVE?CB	02Bh, _t
	MOVE?BB	_i, _z
	LABEL?L	L00017	

; C:\PBP\ORNEK7.PBP        	00097	    portb.4 = 0 : portb.5 = 1 : portb.6 = 0 : portb.7 = 0
	MOVE?CT	000h, _PORTB??4

; C:\PBP\ORNEK7.PBP        	00097	    portb.4 = 0 : portb.5 = 1 : portb.6 = 0 : portb.7 = 0
	MOVE?CT	001h, _PORTB??5

; C:\PBP\ORNEK7.PBP        	00097	    portb.4 = 0 : portb.5 = 1 : portb.6 = 0 : portb.7 = 0
	MOVE?CT	000h, _PORTB??6

; C:\PBP\ORNEK7.PBP        	00097	    portb.4 = 0 : portb.5 = 1 : portb.6 = 0 : portb.7 = 0
	MOVE?CT	000h, _PORTB??7

; C:\PBP\ORNEK7.PBP        	00098	    if portb.3 = 1 then i = 4       
	CMPNE?TCL	_PORTB??3, 001h, L00019
	MOVE?CB	004h, _i
	LABEL?L	L00019	

; C:\PBP\ORNEK7.PBP        	00099	    if portb.2 = 1 then i = 5
	CMPNE?TCL	_PORTB??2, 001h, L00021
	MOVE?CB	005h, _i
	LABEL?L	L00021	

; C:\PBP\ORNEK7.PBP        	00100	    if portb.1 = 1 then i = 6
	CMPNE?TCL	_PORTB??1, 001h, L00023
	MOVE?CB	006h, _i
	LABEL?L	L00023	

; C:\PBP\ORNEK7.PBP        	00101	    if portb.0 = 1 then t = "-" : z = i 
	CMPNE?TCL	_PORTB??0, 001h, L00025
	MOVE?CB	02Dh, _t
	MOVE?BB	_i, _z
	LABEL?L	L00025	

; C:\PBP\ORNEK7.PBP        	00103	    portb.4 = 0 : portb.5 = 0 : portb.6 = 1 : portb.7 = 0
	MOVE?CT	000h, _PORTB??4

; C:\PBP\ORNEK7.PBP        	00103	    portb.4 = 0 : portb.5 = 0 : portb.6 = 1 : portb.7 = 0
	MOVE?CT	000h, _PORTB??5

; C:\PBP\ORNEK7.PBP        	00103	    portb.4 = 0 : portb.5 = 0 : portb.6 = 1 : portb.7 = 0
	MOVE?CT	001h, _PORTB??6

; C:\PBP\ORNEK7.PBP        	00103	    portb.4 = 0 : portb.5 = 0 : portb.6 = 1 : portb.7 = 0
	MOVE?CT	000h, _PORTB??7

; C:\PBP\ORNEK7.PBP        	00104	    if portb.3 = 1 then i = 7       
	CMPNE?TCL	_PORTB??3, 001h, L00027
	MOVE?CB	007h, _i
	LABEL?L	L00027	

; C:\PBP\ORNEK7.PBP        	00105	    if portb.2 = 1 then i = 8
	CMPNE?TCL	_PORTB??2, 001h, L00029
	MOVE?CB	008h, _i
	LABEL?L	L00029	

; C:\PBP\ORNEK7.PBP        	00106	    if portb.1 = 1 then i = 9
	CMPNE?TCL	_PORTB??1, 001h, L00031
	MOVE?CB	009h, _i
	LABEL?L	L00031	

; C:\PBP\ORNEK7.PBP        	00107	    if portb.0 = 1 then t = "*" : z = i 
	CMPNE?TCL	_PORTB??0, 001h, L00033
	MOVE?CB	02Ah, _t
	MOVE?BB	_i, _z
	LABEL?L	L00033	

; C:\PBP\ORNEK7.PBP        	00109	    portb.4 = 0 : portb.5 = 0 : portb.6 = 0 : portb.7 = 1
	MOVE?CT	000h, _PORTB??4

; C:\PBP\ORNEK7.PBP        	00109	    portb.4 = 0 : portb.5 = 0 : portb.6 = 0 : portb.7 = 1
	MOVE?CT	000h, _PORTB??5

; C:\PBP\ORNEK7.PBP        	00109	    portb.4 = 0 : portb.5 = 0 : portb.6 = 0 : portb.7 = 1
	MOVE?CT	000h, _PORTB??6

; C:\PBP\ORNEK7.PBP        	00109	    portb.4 = 0 : portb.5 = 0 : portb.6 = 0 : portb.7 = 1
	MOVE?CT	001h, _PORTB??7

; C:\PBP\ORNEK7.PBP        	00110	    if portb.3 = 1 then i = 0
	CMPNE?TCL	_PORTB??3, 001h, L00035
	MOVE?CB	000h, _i
	LABEL?L	L00035	

; C:\PBP\ORNEK7.PBP        	00112	    if portb.1 = 1 then  GOTO hesapla 
	CMPNE?TCL	_PORTB??1, 001h, L00037
	GOTO?L	_hesapla
	LABEL?L	L00037	

; C:\PBP\ORNEK7.PBP        	00113	    if portb.0 = 1 then t = "/" : z = i        
	CMPNE?TCL	_PORTB??0, 001h, L00039
	MOVE?CB	02Fh, _t
	MOVE?BB	_i, _z
	LABEL?L	L00039	

; C:\PBP\ORNEK7.PBP        	00115	return 
	RETURN?	

	END
