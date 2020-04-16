
; PICBASIC PRO(TM) Compiler 2.60, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\16F877.INC"


; Define statements.
; C:\PBP\16F877.BAS        	00018	DEFINE  CODE_SIZE 8
#define		CODE_SIZE		 8
; C:\PBP\LCDAND~2.PBP      	00002	DEFINE LCD_DREG PORTD           'LCD data portunun baglandigi pic portu 
#define		LCD_DREG		 PORTD           
; C:\PBP\LCDAND~2.PBP      	00003	DEFINE LCD_DBIT 0                        '4-bit bus için data bit(0yada4) baslangiç
#define		LCD_DBIT		 0                        
; C:\PBP\LCDAND~2.PBP      	00004	DEFINE LCD_RSREG PORTE          'LCD RS in baglandigi pic portu 
#define		LCD_RSREG		 PORTE          
; C:\PBP\LCDAND~2.PBP      	00005	DEFINE LCD_RSBIT 0                      'RS in baglandigi pic portE nin bit numarasi
#define		LCD_RSBIT		 0                      
; C:\PBP\LCDAND~2.PBP      	00006	DEFINE LCD_EREG PORTE            'LCD E nin baglandigi pic portu 
#define		LCD_EREG		 PORTE            
; C:\PBP\LCDAND~2.PBP      	00007	DEFINE LCD_EBIT 2                        'LCD E nin baglandigi pic portE nin bit numarasi
#define		LCD_EBIT		 2                        
; C:\PBP\LCDAND~2.PBP      	00008	DEFINE LCD_BITS 8                             'PortD nin 8 biti veri transferi için kullanildi
#define		LCD_BITS		 8                             

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
; C:\PBP\LCDAND~2.PBP      	00020	A00038	mesafe var word
_mesafe          		EQU	RAM_START + 018h
; C:\PBP\LCDAND~2.PBP      	00019	A0003A	salinim var word
_salinim         		EQU	RAM_START + 01Ah
; C:\PBP\16F877.BAS        	00022	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP\16F877.BAS        	00023	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PBP\16F877.BAS        	00024	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP\16F877.BAS        	00025	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
#define _trigger         	_PORTB??7
#define _echo            	_PORTB??6
#define _PORTE??1        	 PORTE, 001h
#define _PORTB??7        	 PORTB, 007h
#define _PORTB??6        	 PORTB, 006h

; Constants.
_sonuc_cm        		EQU	00258h
	INCLUDE	"LCDAND~2.MAC"
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
; C:\PBP\LCDAND~2.PBP      	00002	DEFINE LCD_DREG PORTD           'LCD data portunun baglandigi pic portu 
; C:\PBP\LCDAND~2.PBP      	00003	DEFINE LCD_DBIT 0                        '4-bit bus için data bit(0yada4) baslangiç
; C:\PBP\LCDAND~2.PBP      	00004	DEFINE LCD_RSREG PORTE          'LCD RS in baglandigi pic portu 
; C:\PBP\LCDAND~2.PBP      	00005	DEFINE LCD_RSBIT 0                      'RS in baglandigi pic portE nin bit numarasi
; C:\PBP\LCDAND~2.PBP      	00006	DEFINE LCD_EREG PORTE            'LCD E nin baglandigi pic portu 
; C:\PBP\LCDAND~2.PBP      	00007	DEFINE LCD_EBIT 2                        'LCD E nin baglandigi pic portE nin bit numarasi
; C:\PBP\LCDAND~2.PBP      	00008	DEFINE LCD_BITS 8                             'PortD nin 8 biti veri transferi için kullanildi

; C:\PBP\LCDAND~2.PBP      	00009	TRISE=%000                                       'Aslinda PortE.1 direkt topraga çekilse olurdu ama 
	MOVE?CB	000h, TRISE

; C:\PBP\LCDAND~2.PBP      	00010	PortE.1=0                                             ' PortE.1=0 olarak yaptik
	MOVE?CT	000h, _PORTE??1

; C:\PBP\LCDAND~2.PBP      	00011	ADCON1=7                                         'porta ve porte yi dijitale ayarla
	MOVE?CB	007h, ADCON1

; C:\PBP\LCDAND~2.PBP      	00012	PAUSE 100
	PAUSE?C	064h
; C:\PBP\LCDAND~2.PBP      	00017	symbol trigger=PortB.7
; C:\PBP\LCDAND~2.PBP      	00018	symbol echo=PortB.6
; C:\PBP\LCDAND~2.PBP      	00021	sonuc_cm con 600

; C:\PBP\LCDAND~2.PBP      	00022	trigger=0
	MOVE?CT	000h, _trigger

; C:\PBP\LCDAND~2.PBP      	00023	label:

	LABEL?L	_label	

; C:\PBP\LCDAND~2.PBP      	00024	    gosub oku
	GOSUB?L	_oku

; C:\PBP\LCDAND~2.PBP      	00025	    lcdout $fe,1
	LCDOUT?C	0FEh
	LCDOUT?C	001h

; C:\PBP\LCDAND~2.PBP      	00026	    lcdout "mesafe:",#mesafe
	LCDOUT?C	06Dh
	LCDOUT?C	065h
	LCDOUT?C	073h
	LCDOUT?C	061h
	LCDOUT?C	066h
	LCDOUT?C	065h
	LCDOUT?C	03Ah
	LCDOUTD?W	_mesafe

; C:\PBP\LCDAND~2.PBP      	00027	    pause 100
	PAUSE?C	064h

; C:\PBP\LCDAND~2.PBP      	00028	goto label
	GOTO?L	_label

; C:\PBP\LCDAND~2.PBP      	00029	oku:

	LABEL?L	_oku	

; C:\PBP\LCDAND~2.PBP      	00030	    pulsout trigger,1 '10us lik salýným gönder
	PULSOUT?TC	_trigger, 001h

; C:\PBP\LCDAND~2.PBP      	00031	    pulsin echo,1,salinim '10us deki salýnýmlarý oku
	PULSIN?TCW	_echo, 001h, _salinim

; C:\PBP\LCDAND~2.PBP      	00032	    mesafe = (salinim/sonuc_cm) 'alýnan salýným miktarýný cm olarak mesafeye çevir
	DIV?WCW	_salinim, _sonuc_cm, _mesafe

; C:\PBP\LCDAND~2.PBP      	00033	    pause 10
	PAUSE?C	00Ah

; C:\PBP\LCDAND~2.PBP      	00034	return
	RETURN?	

	END
