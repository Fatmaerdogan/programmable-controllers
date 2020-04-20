
; PICBASIC PRO(TM) Compiler 2.60, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\16F877.INC"


; Define statements.
; C:\PBP\16F877.BAS        	00018	DEFINE  CODE_SIZE 8
#define		CODE_SIZE		 8
; C:\PBP\LCDKOD.PBP        	00002	DEFINE LCD_DREG PORTD           'LCD data portunun baglandigi pic portu 
#define		LCD_DREG		 PORTD           
; C:\PBP\LCDKOD.PBP        	00003	DEFINE LCD_DBIT 0                        '4-bit bus için data bit(0yada4) baslangiç
#define		LCD_DBIT		 0                        
; C:\PBP\LCDKOD.PBP        	00004	DEFINE LCD_RSREG PORTE          'LCD RS in baglandigi pic portu 
#define		LCD_RSREG		 PORTE          
; C:\PBP\LCDKOD.PBP        	00005	DEFINE LCD_RSBIT 0                      'RS in baglandigi pic portE nin bit numarasi
#define		LCD_RSBIT		 0                      
; C:\PBP\LCDKOD.PBP        	00006	DEFINE LCD_EREG PORTE            'LCD E nin baglandigi pic portu 
#define		LCD_EREG		 PORTE            
; C:\PBP\LCDKOD.PBP        	00007	DEFINE LCD_EBIT 2                        'LCD E nin baglandigi pic portE nin bit numarasi
#define		LCD_EBIT		 2                        
; C:\PBP\LCDKOD.PBP        	00008	DEFINE LCD_BITS 8                             'PortD nin 8 biti veri transferi için kullanildi
#define		LCD_BITS		 8                             
; C:\PBP\KEYPAD~1.PBP      	00003	define HSER_RCSTA 90h
#define		HSER_RCSTA		 90h
; C:\PBP\KEYPAD~1.PBP      	00004	DEFINE HSER_TXSTA 24h
#define		HSER_TXSTA		 24h
; C:\PBP\KEYPAD~1.PBP      	00005	DEFINE HSER_BAUD 9600    'terminaldeki haberleþme hýzý
#define		HSER_BAUD		 9600    
; C:\PBP\KEYPAD~1.PBP      	00006	DEFINE HSER_CLROERR 1
#define		HSER_CLROERR		 1

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
; C:\PBP\KEYPAD~1.PBP      	00015	A00038	i var byte
_i               		EQU	RAM_START + 018h
; C:\PBP\KEYPAD~1.PBP      	00016	A00039	j var byte
_j               		EQU	RAM_START + 019h
; C:\PBP\KEYPAD~1.PBP      	00017	A0003A	k var byte
_k               		EQU	RAM_START + 01Ah
; C:\PBP\KEYPAD~1.PBP      	00018	A0003B	l var byte
_l               		EQU	RAM_START + 01Bh
; C:\PBP\16F877.BAS        	00022	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP\16F877.BAS        	00023	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PBP\16F877.BAS        	00024	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP\16F877.BAS        	00025	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
#define _PORTE??1        	 PORTE, 001h
#define _PORTB??0        	 PORTB, 000h
#define _PORTB??1        	 PORTB, 001h
#define _PORTB??2        	 PORTB, 002h
#define _PORTB??3        	 PORTB, 003h
#define _PORTB??4        	 PORTB, 004h
#define _PORTB??5        	 PORTB, 005h
#define _PORTB??6        	 PORTB, 006h
	INCLUDE	"KEYPAD~1.MAC"
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

; C:\PBP\KEYPAD~1.PBP      	00002	include "lcdKod.pbp"
; C:\PBP\LCDKOD.PBP        	00002	DEFINE LCD_DREG PORTD           'LCD data portunun baglandigi pic portu 
; C:\PBP\LCDKOD.PBP        	00003	DEFINE LCD_DBIT 0                        '4-bit bus için data bit(0yada4) baslangiç
; C:\PBP\LCDKOD.PBP        	00004	DEFINE LCD_RSREG PORTE          'LCD RS in baglandigi pic portu 
; C:\PBP\LCDKOD.PBP        	00005	DEFINE LCD_RSBIT 0                      'RS in baglandigi pic portE nin bit numarasi
; C:\PBP\LCDKOD.PBP        	00006	DEFINE LCD_EREG PORTE            'LCD E nin baglandigi pic portu 
; C:\PBP\LCDKOD.PBP        	00007	DEFINE LCD_EBIT 2                        'LCD E nin baglandigi pic portE nin bit numarasi
; C:\PBP\LCDKOD.PBP        	00008	DEFINE LCD_BITS 8                             'PortD nin 8 biti veri transferi için kullanildi
; C:\PBP\KEYPAD~1.PBP      	00003	define HSER_RCSTA 90h
; C:\PBP\KEYPAD~1.PBP      	00004	DEFINE HSER_TXSTA 24h
; C:\PBP\KEYPAD~1.PBP      	00005	DEFINE HSER_BAUD 9600    'terminaldeki haberleþme hýzý
; C:\PBP\KEYPAD~1.PBP      	00006	DEFINE HSER_CLROERR 1

; C:\PBP\KEYPAD~1.PBP      	00008	TRISE=%000                                       'Aslinda PortE.1 direkt topraga çekilse olurdu ama 
	MOVE?CB	000h, TRISE

; C:\PBP\KEYPAD~1.PBP      	00009	PortE.1=0                                             ' PortE.1=0 olarak yaptik
	MOVE?CT	000h, _PORTE??1

; C:\PBP\KEYPAD~1.PBP      	00010	ADCON1=7                                         'porta ve porte yi dijitale ayarla
	MOVE?CB	007h, ADCON1

; C:\PBP\KEYPAD~1.PBP      	00012	TrisB = %00000000 
	MOVE?CB	000h, TRISB

; C:\PBP\KEYPAD~1.PBP      	00013	portB = %00000000
	MOVE?CB	000h, PORTB

; C:\PBP\KEYPAD~1.PBP      	00019	label:

	LABEL?L	_label	

; C:\PBP\KEYPAD~1.PBP      	00020	l=128
	MOVE?CB	080h, _l

; C:\PBP\KEYPAD~1.PBP      	00021	lcdout $fe,1
	LCDOUT?C	0FEh
	LCDOUT?C	001h

; C:\PBP\KEYPAD~1.PBP      	00022	for j=0 to 10
	MOVE?CB	000h, _j
	LABEL?L	L00001	
	CMPGT?BCL	_j, 00Ah, L00002

; C:\PBP\KEYPAD~1.PBP      	00023	   gosub phone
	GOSUB?L	_phone

; C:\PBP\KEYPAD~1.PBP      	00024	   lcdout $fe,l,#i
	LCDOUT?C	0FEh
	LCDOUT?B	_l
	LCDOUTD?B	_i

; C:\PBP\KEYPAD~1.PBP      	00025	   l=l+1
	ADD?BCB	_l, 001h, _l

; C:\PBP\KEYPAD~1.PBP      	00026	   gosub yaz
	GOSUB?L	_yaz

; C:\PBP\KEYPAD~1.PBP      	00027	   pause 500
	PAUSE?C	001F4h

; C:\PBP\KEYPAD~1.PBP      	00028	next j
	NEXT?BCL	_j, 001h, L00001
	LABEL?L	L00002	

; C:\PBP\KEYPAD~1.PBP      	00029	gosub oku
	GOSUB?L	_oku

; C:\PBP\KEYPAD~1.PBP      	00030	goto label
	GOTO?L	_label

; C:\PBP\KEYPAD~1.PBP      	00032	yaz:

	LABEL?L	_yaz	

; C:\PBP\KEYPAD~1.PBP      	00033	     write j,i
	WRITEADDRESS?B	_j
	WRITE?B	_i

; C:\PBP\KEYPAD~1.PBP      	00034	return
	RETURN?	

; C:\PBP\KEYPAD~1.PBP      	00036	oku:

	LABEL?L	_oku	

; C:\PBP\KEYPAD~1.PBP      	00037	    for j=0 to 10
	MOVE?CB	000h, _j
	LABEL?L	L00003	
	CMPGT?BCL	_j, 00Ah, L00004

; C:\PBP\KEYPAD~1.PBP      	00038	        read j,k
	READADDRESS?B	_j
	READ?B	_k

; C:\PBP\KEYPAD~1.PBP      	00039	        hserout [dec k]
	HSEROUTCOUNT?C	000h
	HSEROUTNUM?B	_k
	HSEROUTDEC?	

; C:\PBP\KEYPAD~1.PBP      	00040	        pause 100
	PAUSE?C	064h

; C:\PBP\KEYPAD~1.PBP      	00041	    next j
	NEXT?BCL	_j, 001h, L00003
	LABEL?L	L00004	

; C:\PBP\KEYPAD~1.PBP      	00042	    hserout[13,10]
	HSEROUT?C	00Dh
	HSEROUT?C	00Ah

; C:\PBP\KEYPAD~1.PBP      	00043	return
	RETURN?	

; C:\PBP\KEYPAD~1.PBP      	00044	phone:

	LABEL?L	_phone	

; C:\PBP\KEYPAD~1.PBP      	00045	       trisb = %11111000
	MOVE?CB	0F8h, TRISB

; C:\PBP\KEYPAD~1.PBP      	00046	       portb.0=1:portb.1=0:portb.2=0
	MOVE?CT	001h, _PORTB??0

; C:\PBP\KEYPAD~1.PBP      	00046	       portb.0=1:portb.1=0:portb.2=0
	MOVE?CT	000h, _PORTB??1

; C:\PBP\KEYPAD~1.PBP      	00046	       portb.0=1:portb.1=0:portb.2=0
	MOVE?CT	000h, _PORTB??2

; C:\PBP\KEYPAD~1.PBP      	00047	       if portb.3=1 then i=1 : return
	CMPNE?TCL	_PORTB??3, 001h, L00005
	MOVE?CB	001h, _i
	RETURN?	
	LABEL?L	L00005	

; C:\PBP\KEYPAD~1.PBP      	00048	       if portb.4=1 then i=4 : return
	CMPNE?TCL	_PORTB??4, 001h, L00007
	MOVE?CB	004h, _i
	RETURN?	
	LABEL?L	L00007	

; C:\PBP\KEYPAD~1.PBP      	00049	       if portb.5=1 then i=7 : return
	CMPNE?TCL	_PORTB??5, 001h, L00009
	MOVE?CB	007h, _i
	RETURN?	
	LABEL?L	L00009	

; C:\PBP\KEYPAD~1.PBP      	00052	       portb.0=0:portb.1=1:portb.2=0
	MOVE?CT	000h, _PORTB??0

; C:\PBP\KEYPAD~1.PBP      	00052	       portb.0=0:portb.1=1:portb.2=0
	MOVE?CT	001h, _PORTB??1

; C:\PBP\KEYPAD~1.PBP      	00052	       portb.0=0:portb.1=1:portb.2=0
	MOVE?CT	000h, _PORTB??2

; C:\PBP\KEYPAD~1.PBP      	00053	       if portb.3=1 then i=2 : return
	CMPNE?TCL	_PORTB??3, 001h, L00011
	MOVE?CB	002h, _i
	RETURN?	
	LABEL?L	L00011	

; C:\PBP\KEYPAD~1.PBP      	00054	       if portb.4=1 then i=5 : return
	CMPNE?TCL	_PORTB??4, 001h, L00013
	MOVE?CB	005h, _i
	RETURN?	
	LABEL?L	L00013	

; C:\PBP\KEYPAD~1.PBP      	00055	       if portb.5=1 then i=8 : return
	CMPNE?TCL	_PORTB??5, 001h, L00015
	MOVE?CB	008h, _i
	RETURN?	
	LABEL?L	L00015	

; C:\PBP\KEYPAD~1.PBP      	00056	       if portb.6=1 then i=0 : return
	CMPNE?TCL	_PORTB??6, 001h, L00017
	MOVE?CB	000h, _i
	RETURN?	
	LABEL?L	L00017	

; C:\PBP\KEYPAD~1.PBP      	00058	       portb.0=0:portb.1=0:portb.2=1
	MOVE?CT	000h, _PORTB??0

; C:\PBP\KEYPAD~1.PBP      	00058	       portb.0=0:portb.1=0:portb.2=1
	MOVE?CT	000h, _PORTB??1

; C:\PBP\KEYPAD~1.PBP      	00058	       portb.0=0:portb.1=0:portb.2=1
	MOVE?CT	001h, _PORTB??2

; C:\PBP\KEYPAD~1.PBP      	00059	       if portb.3=1 then i=3 : return
	CMPNE?TCL	_PORTB??3, 001h, L00019
	MOVE?CB	003h, _i
	RETURN?	
	LABEL?L	L00019	

; C:\PBP\KEYPAD~1.PBP      	00060	       if portb.4=1 then i=6 : return
	CMPNE?TCL	_PORTB??4, 001h, L00021
	MOVE?CB	006h, _i
	RETURN?	
	LABEL?L	L00021	

; C:\PBP\KEYPAD~1.PBP      	00061	       if portb.5=1 then i=9 : return
	CMPNE?TCL	_PORTB??5, 001h, L00023
	MOVE?CB	009h, _i
	RETURN?	
	LABEL?L	L00023	

; C:\PBP\KEYPAD~1.PBP      	00063	goto phone
	GOTO?L	_phone

	END
