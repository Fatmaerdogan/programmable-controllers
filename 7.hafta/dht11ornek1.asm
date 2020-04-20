
; PICBASIC PRO(TM) Compiler 2.60, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\16F877.INC"


; Define statements.
; C:\PBP\16F877.BAS        	00018	DEFINE  CODE_SIZE 8
#define		CODE_SIZE		 8
; C:\PBP\DHT11O~1.PBP      	00002	DEFINE LCD_DREG PORTD           'LCD data portunun baglandigi pic portu 
#define		LCD_DREG		 PORTD           
; C:\PBP\DHT11O~1.PBP      	00003	DEFINE LCD_DBIT 0                        '4-bit bus için data bit(0yada4) baslangiç
#define		LCD_DBIT		 0                        
; C:\PBP\DHT11O~1.PBP      	00004	DEFINE LCD_RSREG PORTE          'LCD RS in baglandigi pic portu 
#define		LCD_RSREG		 PORTE          
; C:\PBP\DHT11O~1.PBP      	00005	DEFINE LCD_RSBIT 0                      'RS in baglandigi pic portE nin bit numarasi
#define		LCD_RSBIT		 0                      
; C:\PBP\DHT11O~1.PBP      	00006	DEFINE LCD_EREG PORTE            'LCD E nin baglandigi pic portu 
#define		LCD_EREG		 PORTE            
; C:\PBP\DHT11O~1.PBP      	00007	DEFINE LCD_EBIT 2                        'LCD E nin baglandigi pic portE nin bit numarasi
#define		LCD_EBIT		 2                        
; C:\PBP\DHT11O~1.PBP      	00008	DEFINE LCD_BITS 8                             'PortD nin 8 biti veri transferi için kullanildi
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
; C:\PBP\DHT11O~1.PBP      	00024	A00038	i var byte
_i               		EQU	RAM_START + 018h
; C:\PBP\DHT11O~1.PBP      	00020	A00039	kontrol var byte
_kontrol         		EQU	RAM_START + 019h
; C:\PBP\DHT11O~1.PBP      	00016	A0003A	nem var byte
_nem             		EQU	RAM_START + 01Ah
; C:\PBP\DHT11O~1.PBP      	00017	A0003B	nemondalik var byte
_nemondalik      		EQU	RAM_START + 01Bh
; C:\PBP\DHT11O~1.PBP      	00018	A0003C	sicaklik var byte
_sicaklik        		EQU	RAM_START + 01Ch
; C:\PBP\DHT11O~1.PBP      	00019	A0003D	sicaklikondalik var byte
_sicaklikondalik 		EQU	RAM_START + 01Dh
; C:\PBP\16F877.BAS        	00022	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP\16F877.BAS        	00023	PORTH   VAR     PORTC
_PORTH           		EQU	 PORTC
; C:\PBP\16F877.BAS        	00024	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP\16F877.BAS        	00025	TRISH   VAR     TRISC
_TRISH           		EQU	 TRISC
#define _giris           	_PORTB??0
#define _PORTE??1        	 PORTE, 001h
#define _PORTB??0        	 PORTB, 000h
#define _TRISB??0        	 TRISB, 000h
#define _nem??0          	_nem, 000h
#define _nemondalik??0   	_nemondalik, 000h
#define _sicaklik??0     	_sicaklik, 000h
#define _sicaklikondalik??0	_sicaklikondalik, 000h
#define _kontrol??0      	_kontrol, 000h
	INCLUDE	"DHT11O~1.MAC"
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
; C:\PBP\DHT11O~1.PBP      	00002	DEFINE LCD_DREG PORTD           'LCD data portunun baglandigi pic portu 
; C:\PBP\DHT11O~1.PBP      	00003	DEFINE LCD_DBIT 0                        '4-bit bus için data bit(0yada4) baslangiç
; C:\PBP\DHT11O~1.PBP      	00004	DEFINE LCD_RSREG PORTE          'LCD RS in baglandigi pic portu 
; C:\PBP\DHT11O~1.PBP      	00005	DEFINE LCD_RSBIT 0                      'RS in baglandigi pic portE nin bit numarasi
; C:\PBP\DHT11O~1.PBP      	00006	DEFINE LCD_EREG PORTE            'LCD E nin baglandigi pic portu 
; C:\PBP\DHT11O~1.PBP      	00007	DEFINE LCD_EBIT 2                        'LCD E nin baglandigi pic portE nin bit numarasi
; C:\PBP\DHT11O~1.PBP      	00008	DEFINE LCD_BITS 8                             'PortD nin 8 biti veri transferi için kullanildi

; C:\PBP\DHT11O~1.PBP      	00009	TRISE=%000                                       'Aslinda PortE.1 direkt topraga çekilse olurdu ama 
	MOVE?CB	000h, TRISE

; C:\PBP\DHT11O~1.PBP      	00010	PortE.1=0                                             ' PortE.1=0 olarak yaptik
	MOVE?CT	000h, _PORTE??1

; C:\PBP\DHT11O~1.PBP      	00011	ADCON1=7                                         'porta ve porte yi dijitale ayarla
	MOVE?CB	007h, ADCON1

; C:\PBP\DHT11O~1.PBP      	00012	PAUSE 100
	PAUSE?C	064h

; C:\PBP\DHT11O~1.PBP      	00014	LCDOUT $fe,$40,7,5,7,0,0,0,0
	LCDOUT?C	0FEh
	LCDOUT?C	040h
	LCDOUT?C	007h
	LCDOUT?C	005h
	LCDOUT?C	007h
	LCDOUT?C	000h
	LCDOUT?C	000h
	LCDOUT?C	000h
	LCDOUT?C	000h
; C:\PBP\DHT11O~1.PBP      	00022	symbol giris=portb.0

; C:\PBP\DHT11O~1.PBP      	00027	label:

	LABEL?L	_label	

; C:\PBP\DHT11O~1.PBP      	00028	    TrisB.0=0  'pin çýkýþ olarak tanýmlandý
	MOVE?CT	000h, _TRISB??0

; C:\PBP\DHT11O~1.PBP      	00029	    giris=0    'bu iþlem sensörü uyandýrýr
	MOVE?CT	000h, _giris

; C:\PBP\DHT11O~1.PBP      	00030	    pause 18
	PAUSE?C	012h

; C:\PBP\DHT11O~1.PBP      	00031	    giris=1
	MOVE?CT	001h, _giris

; C:\PBP\DHT11O~1.PBP      	00032	    pauseus 40'mikrosaniye olduðu için
	PAUSEUS?C	028h

; C:\PBP\DHT11O~1.PBP      	00033	    TrisB.0=1   'pin giriþ olarak tanýmlandý
	MOVE?CT	001h, _TRISB??0

; C:\PBP\DHT11O~1.PBP      	00034	    while giris=0'sensörden 1 gelene kadar
	LABEL?L	L00001	
	CMPNE?TCL	_giris, 000h, L00002

; C:\PBP\DHT11O~1.PBP      	00035	    wend
	GOTO?L	L00001
	LABEL?L	L00002	

; C:\PBP\DHT11O~1.PBP      	00036	    pauseus 85'sensör 80 ms bekle dedi
	PAUSEUS?C	055h

; C:\PBP\DHT11O~1.PBP      	00038	    nem=0   'nem degiskeninin 8 bitine 0 verildi
	MOVE?CB	000h, _nem

; C:\PBP\DHT11O~1.PBP      	00039	        for i=7 to 0 step -1     'msb bitleri önce gelecegi için döngü tersten yazildi.yani sensörden gelen ilk bit msb nem[7] ye yazilacak
	MOVE?CB	007h, _i
	LABEL?L	L00003	
	CMPLT?BCL	_i, 000h, L00004

; C:\PBP\DHT11O~1.PBP      	00040	            while giris=0        'transmit basladi.lojik seviye 0 dan çikinca ilk veri lojik1 olacak. 
	LABEL?L	L00005	
	CMPNE?TCL	_giris, 000h, L00006

; C:\PBP\DHT11O~1.PBP      	00041	            wend                 'sonrasindaki lojik 1'in uzunlugu bize verinin 0 ya da 1 mi olacagini belirliyor. 
	GOTO?L	L00005
	LABEL?L	L00006	

; C:\PBP\DHT11O~1.PBP      	00042	            pauseus 40           'Lojik 1'in uzunlugu 26-28microsn arasindaysa data yi lojik 0 olarak alacagiz.garanti olsun diye 40microsn aldik 
	PAUSEUS?C	028h

; C:\PBP\DHT11O~1.PBP      	00044	            if giris=1 then nem.0[i]=1 'burada nem degiskeninin for daki kaçinci biti 1 ise ona 1 verilir. diger bitleri zaten 0 di. sonuçta örnegin nem=%01001110 gibi deger olur.
	CMPNE?TCL	_giris, 001h, L00007
	AIN?CTB	001h, _nem??0, _i
	LABEL?L	L00007	

; C:\PBP\DHT11O~1.PBP      	00045	            while giris=1        'veriden çikmasini bekler, tekrar 0 olunca for a geri gider.
	LABEL?L	L00009	
	CMPNE?TCL	_giris, 001h, L00010

; C:\PBP\DHT11O~1.PBP      	00046	            wend
	GOTO?L	L00009
	LABEL?L	L00010	

; C:\PBP\DHT11O~1.PBP      	00047	        next i 
	NEXTM?BCL	_i, 001h, L00003
	LABEL?L	L00004	

; C:\PBP\DHT11O~1.PBP      	00050	    nemondalik=0
	MOVE?CB	000h, _nemondalik

; C:\PBP\DHT11O~1.PBP      	00051	        for i=7 to 0 step -1     'msb bitleri önce gelecegi için döngü tersten yazildi.yani sensörden gelen ilk bit msb nem[7] ye yazilacak
	MOVE?CB	007h, _i
	LABEL?L	L00011	
	CMPLT?BCL	_i, 000h, L00012

; C:\PBP\DHT11O~1.PBP      	00052	            while giris=0        'transmit basladi.lojik seviye 0 dan çikinca ilk veri lojik1 olacak. 
	LABEL?L	L00013	
	CMPNE?TCL	_giris, 000h, L00014

; C:\PBP\DHT11O~1.PBP      	00053	            wend                 'sonrasindaki lojik 1'in uzunlugu bize verinin 0 ya da 1 mi olacagini belirliyor. 
	GOTO?L	L00013
	LABEL?L	L00014	

; C:\PBP\DHT11O~1.PBP      	00054	            pauseus 40           'Lojik 1'in uzunlugu 26-28microsn arasindaysa data yi lojik 0 olarak alacagiz.garanti olsun diye 40microsn aldik 
	PAUSEUS?C	028h

; C:\PBP\DHT11O~1.PBP      	00056	            if giris=1 then nemondalik.0[i]=1 'burada nem ondalýk degiskeninin for daki kaçinci biti 1 ise ona 1 verilir. diger bitleri zaten 0 di. sonuçta örnegin nem=%01001110 gibi deger olur.
	CMPNE?TCL	_giris, 001h, L00015
	AIN?CTB	001h, _nemondalik??0, _i
	LABEL?L	L00015	

; C:\PBP\DHT11O~1.PBP      	00057	            while giris=1        'veriden çikmasini bekler, tekrar 0 olunca for a geri gider.
	LABEL?L	L00017	
	CMPNE?TCL	_giris, 001h, L00018

; C:\PBP\DHT11O~1.PBP      	00058	            wend
	GOTO?L	L00017
	LABEL?L	L00018	

; C:\PBP\DHT11O~1.PBP      	00059	        next i
	NEXTM?BCL	_i, 001h, L00011
	LABEL?L	L00012	

; C:\PBP\DHT11O~1.PBP      	00061	    sicaklik=0
	MOVE?CB	000h, _sicaklik

; C:\PBP\DHT11O~1.PBP      	00062	        for i=7 to 0 step -1     'msb bitleri önce gelecegi için döngü tersten yazildi.yani sensörden gelen ilk bit msb nem[7] ye yazilacak
	MOVE?CB	007h, _i
	LABEL?L	L00019	
	CMPLT?BCL	_i, 000h, L00020

; C:\PBP\DHT11O~1.PBP      	00063	            while giris=0        'transmit basladi.lojik seviye 0 dan çikinca ilk veri lojik1 olacak. 
	LABEL?L	L00021	
	CMPNE?TCL	_giris, 000h, L00022

; C:\PBP\DHT11O~1.PBP      	00064	            wend                 'sonrasindaki lojik 1'in uzunlugu bize verinin 0 ya da 1 mi olacagini belirliyor. 
	GOTO?L	L00021
	LABEL?L	L00022	

; C:\PBP\DHT11O~1.PBP      	00065	            pauseus 40           'Lojik 1'in uzunlugu 26-28microsn arasindaysa data yi lojik 0 olarak alacagiz.garanti olsun diye 40microsn aldik 
	PAUSEUS?C	028h

; C:\PBP\DHT11O~1.PBP      	00067	            if giris=1 then sicaklik.0[i]=1 'burada sýcaklýk degiskeninin for daki kaçinci biti 1 ise ona 1 verilir. diger bitleri zaten 0 di. sonuçta örnegin nem=%01001110 gibi deger olur.
	CMPNE?TCL	_giris, 001h, L00023
	AIN?CTB	001h, _sicaklik??0, _i
	LABEL?L	L00023	

; C:\PBP\DHT11O~1.PBP      	00068	            while giris=1        'veriden çikmasini bekler, tekrar 0 olunca for a geri gider.
	LABEL?L	L00025	
	CMPNE?TCL	_giris, 001h, L00026

; C:\PBP\DHT11O~1.PBP      	00069	            wend
	GOTO?L	L00025
	LABEL?L	L00026	

; C:\PBP\DHT11O~1.PBP      	00070	        next i
	NEXTM?BCL	_i, 001h, L00019
	LABEL?L	L00020	

; C:\PBP\DHT11O~1.PBP      	00072	    sicaklikondalik=0
	MOVE?CB	000h, _sicaklikondalik

; C:\PBP\DHT11O~1.PBP      	00073	        for i=7 to 0 step -1     'msb bitleri önce gelecegi için döngü tersten yazildi.yani sensörden gelen ilk bit msb nem[7] ye yazilacak
	MOVE?CB	007h, _i
	LABEL?L	L00027	
	CMPLT?BCL	_i, 000h, L00028

; C:\PBP\DHT11O~1.PBP      	00074	            while giris=0        'transmit basladi.lojik seviye 0 dan çikinca ilk veri lojik1 olacak. 
	LABEL?L	L00029	
	CMPNE?TCL	_giris, 000h, L00030

; C:\PBP\DHT11O~1.PBP      	00075	            wend                 'sonrasindaki lojik 1'in uzunlugu bize verinin 0 ya da 1 mi olacagini belirliyor. 
	GOTO?L	L00029
	LABEL?L	L00030	

; C:\PBP\DHT11O~1.PBP      	00076	            pauseus 40           'Lojik 1'in uzunlugu 26-28microsn arasindaysa data yi lojik 0 olarak alacagiz.garanti olsun diye 40microsn aldik 
	PAUSEUS?C	028h

; C:\PBP\DHT11O~1.PBP      	00078	            if giris=1 then sicaklikondalik.0[i]=1 'burada sýcaklýk ondalýk degiskeninin for daki kaçinci biti 1 ise ona 1 verilir. diger bitleri zaten 0 di. sonuçta örnegin nem=%01001110 gibi deger olur.
	CMPNE?TCL	_giris, 001h, L00031
	AIN?CTB	001h, _sicaklikondalik??0, _i
	LABEL?L	L00031	

; C:\PBP\DHT11O~1.PBP      	00079	            while giris=1        'veriden çikmasini bekler, tekrar 0 olunca for a geri gider.
	LABEL?L	L00033	
	CMPNE?TCL	_giris, 001h, L00034

; C:\PBP\DHT11O~1.PBP      	00080	            wend
	GOTO?L	L00033
	LABEL?L	L00034	

; C:\PBP\DHT11O~1.PBP      	00081	        next i
	NEXTM?BCL	_i, 001h, L00027
	LABEL?L	L00028	

; C:\PBP\DHT11O~1.PBP      	00083	    kontrol=0
	MOVE?CB	000h, _kontrol

; C:\PBP\DHT11O~1.PBP      	00084	        for i=7 to 0 step -1     'msb bitleri önce gelecegi için döngü tersten yazildi.yani sensörden gelen ilk bit msb nem[7] ye yazilacak
	MOVE?CB	007h, _i
	LABEL?L	L00035	
	CMPLT?BCL	_i, 000h, L00036

; C:\PBP\DHT11O~1.PBP      	00085	            while giris=0        'transmit basladi.lojik seviye 0 dan çikinca ilk veri lojik1 olacak. 
	LABEL?L	L00037	
	CMPNE?TCL	_giris, 000h, L00038

; C:\PBP\DHT11O~1.PBP      	00086	            wend                 'sonrasindaki lojik 1'in uzunlugu bize verinin 0 ya da 1 mi olacagini belirliyor. 
	GOTO?L	L00037
	LABEL?L	L00038	

; C:\PBP\DHT11O~1.PBP      	00087	            pauseus 40           'Lojik 1'in uzunlugu 26-28microsn arasindaysa data yi lojik 0 olarak alacagiz.garanti olsun diye 40microsn aldik 
	PAUSEUS?C	028h

; C:\PBP\DHT11O~1.PBP      	00089	            if giris=1 then kontrol.0[i]=1 'burada kontrol degiskeninin for daki kaçinci biti 1 ise ona 1 verilir. diger bitleri zaten 0 di. sonuçta örnegin nem=%01001110 gibi deger olur.
	CMPNE?TCL	_giris, 001h, L00039
	AIN?CTB	001h, _kontrol??0, _i
	LABEL?L	L00039	

; C:\PBP\DHT11O~1.PBP      	00090	            while giris=1        'veriden çikmasini bekler, tekrar 0 olunca for a geri gider.
	LABEL?L	L00041	
	CMPNE?TCL	_giris, 001h, L00042

; C:\PBP\DHT11O~1.PBP      	00091	            wend
	GOTO?L	L00041
	LABEL?L	L00042	

; C:\PBP\DHT11O~1.PBP      	00092	        next i
	NEXTM?BCL	_i, 001h, L00035
	LABEL?L	L00036	

; C:\PBP\DHT11O~1.PBP      	00094	    LcdOut $fe,1,"nem=",#nem,".",#nemondalik,"%"
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	06Eh
	LCDOUT?C	065h
	LCDOUT?C	06Dh
	LCDOUT?C	03Dh
	LCDOUTD?B	_nem
	LCDOUT?C	02Eh
	LCDOUTD?B	_nemondalik
	LCDOUT?C	025h

; C:\PBP\DHT11O~1.PBP      	00095	    pause 500
	PAUSE?C	001F4h

; C:\PBP\DHT11O~1.PBP      	00096	    lcdout $fe,$C0,"sicaklik=",#sicaklik,".",#sicaklikondalik,0,"C"
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	073h
	LCDOUT?C	069h
	LCDOUT?C	063h
	LCDOUT?C	061h
	LCDOUT?C	06Bh
	LCDOUT?C	06Ch
	LCDOUT?C	069h
	LCDOUT?C	06Bh
	LCDOUT?C	03Dh
	LCDOUTD?B	_sicaklik
	LCDOUT?C	02Eh
	LCDOUTD?B	_sicaklikondalik
	LCDOUT?C	000h
	LCDOUT?C	043h

; C:\PBP\DHT11O~1.PBP      	00097	    pause 500
	PAUSE?C	001F4h

; C:\PBP\DHT11O~1.PBP      	00098	    lcdout $fe,$94,"kontrol=",#kontrol
	LCDOUT?C	0FEh
	LCDOUT?C	094h
	LCDOUT?C	06Bh
	LCDOUT?C	06Fh
	LCDOUT?C	06Eh
	LCDOUT?C	074h
	LCDOUT?C	072h
	LCDOUT?C	06Fh
	LCDOUT?C	06Ch
	LCDOUT?C	03Dh
	LCDOUTD?B	_kontrol

; C:\PBP\DHT11O~1.PBP      	00099	    pause 500
	PAUSE?C	001F4h

; C:\PBP\DHT11O~1.PBP      	00100	goto label
	GOTO?L	_label

	END
