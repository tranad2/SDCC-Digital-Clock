;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
; This file was generated Fri May 20 17:37:47 2016
;--------------------------------------------------------
	.module assignment4
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _getDaysInMonth_PARM_2
	.globl _returnHome
	.globl __sdcc_gsinit_startup
	.globl _main
	.globl _int0_isr
	.globl _int1_isr
	.globl _getKey
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _displayOnOffControl_PARM_3
	.globl _displayOnOffControl_PARM_2
	.globl _displayOnOffControl_PARM_1
	.globl _resetScreen
	.globl _changingTime
	.globl _changingDate
	.globl _address
	.globl _tempIndex
	.globl _hour
	.globl _minute
	.globl _count
	.globl _day
	.globl _month
	.globl _year
	.globl _temp
	.globl _daysInMonth
	.globl _print
	.globl _getDaysInMonth
	.globl _getFirst
	.globl _getSecond
	.globl _getThird
	.globl _timer_delay
	.globl _entryModeSet
	.globl _displayOnOffControl
	.globl _functionSet
	.globl _clearDisplay
	.globl _setDdRamAddress
	.globl _sendChar
	.globl _sendString
	.globl _delay
	.globl _big_delay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_daysInMonth::
	.ds 12
_temp::
	.ds 6
_year::
	.ds 1
_month::
	.ds 1
_day::
	.ds 1
_count::
	.ds 1
_minute::
	.ds 1
_hour::
	.ds 1
_tempIndex::
	.ds 1
_address::
	.ds 1
_changingDate::
	.ds 1
_changingTime::
	.ds 1
_resetScreen::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_getKey_keypad_1_15:
	.ds 12
	.area	OSEG    (OVR,DATA)
_getDaysInMonth_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_displayOnOffControl_PARM_1:
	.ds 1
_displayOnOffControl_PARM_2:
	.ds 1
_displayOnOffControl_PARM_3:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_int0_isr
	.ds	5
	reti
	.ds	7
	ljmp	_int1_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	assignment4.c:37: unsigned char daysInMonth[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
	mov	_daysInMonth,#0x1F
	mov	(_daysInMonth + 0x0001),#0x1C
	mov	(_daysInMonth + 0x0002),#0x1F
	mov	(_daysInMonth + 0x0003),#0x1E
	mov	(_daysInMonth + 0x0004),#0x1F
	mov	(_daysInMonth + 0x0005),#0x1E
	mov	(_daysInMonth + 0x0006),#0x1F
	mov	(_daysInMonth + 0x0007),#0x1F
	mov	(_daysInMonth + 0x0008),#0x1E
	mov	(_daysInMonth + 0x0009),#0x1F
	mov	(_daysInMonth + 0x000a),#0x1E
	mov	(_daysInMonth + 0x000b),#0x1F
;	assignment4.c:38: unsigned char temp[] = {0, 0, 0, 0, 0, 0};
	mov	_temp,#0x00
	mov	(_temp + 0x0001),#0x00
	mov	(_temp + 0x0002),#0x00
	mov	(_temp + 0x0003),#0x00
	mov	(_temp + 0x0004),#0x00
	mov	(_temp + 0x0005),#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'getKey'
;------------------------------------------------------------
;row                       Allocated to registers r6 
;col                       Allocated to registers r3 
;keypad                    Allocated with name '_getKey_keypad_1_15'
;i                         Allocated to registers r5 
;j                         Allocated to registers 
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	assignment4.c:61: char getKey(){
;	-----------------------------------------
;	 function getKey
;	-----------------------------------------
_getKey:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	assignment4.c:64: unsigned char keypad[4][3] = {   // This array contains the ASCII of the keypad keys
	mov	_getKey_keypad_1_15,#0x33
	mov	(_getKey_keypad_1_15 + 0x0001),#0x32
	mov	(_getKey_keypad_1_15 + 0x0002),#0x31
	mov	(_getKey_keypad_1_15 + 0x0003),#0x36
	mov	(_getKey_keypad_1_15 + 0x0004),#0x35
	mov	(_getKey_keypad_1_15 + 0x0005),#0x34
	mov	(_getKey_keypad_1_15 + 0x0006),#0x39
	mov	(_getKey_keypad_1_15 + 0x0007),#0x38
	mov	(_getKey_keypad_1_15 + 0x0008),#0x37
	mov	(_getKey_keypad_1_15 + 0x0009),#0x23
	mov	(_getKey_keypad_1_15 + 0x000a),#0x30
	mov	(_getKey_keypad_1_15 + 0x000b),#0x2A
;	assignment4.c:72: unsigned char c = 0;
	mov	r7,#0x00
;	assignment4.c:73: row = 0xf7;  // The first row (connected to P0.3) will be zero
	mov	r6,#0xF7
;	assignment4.c:75: for (i=0;i<4;++i){ // loop over the 4 rows
	mov	r5,#0x00
	mov	r4,#0x00
00104$:
;	assignment4.c:77: P0 = 0xff;     // Initialize the 4 rows to '1' and set the column ports to inputs
	mov	_P0,#0xFF
;	assignment4.c:78: P0 = P0 & row; // clear one row at a time
	mov	a,r6
	anl	_P0,a
;	assignment4.c:79: col = P0 & 0x70;  // Read the 3 columns
	mov	a,#0x70
	anl	a,_P0
	mov	r3,a
;	assignment4.c:80: if (col != 0x70){ // If any column is zero i.e. a key is pressed
	cjne	r3,#0x70,00114$
	sjmp	00102$
00114$:
;	assignment4.c:81: col = (~col) & 0x70;  // because the selected column returns zero
	mov	a,r3
	cpl	a
	mov	r2,a
	mov	a,#0x70
	anl	a,r2
;	assignment4.c:82: col = col >> 5;       // The column variable now contain the number of the selected column
	swap	a
	rr	a
	anl	a,#0x07
	mov	r3,a
;	assignment4.c:83: c = keypad[i][col]; // Get the ASCII of the corresponding pressed key
	mov	a,r5
	mov	b,#0x03
	mul	ab
	add	a,#_getKey_keypad_1_15
	mov	r2,a
	add	a,r3
	mov	r1,a
	mov	ar7,@r1
;	assignment4.c:84: break;  // Since a key was detected -> Exit the for loop
	sjmp	00103$
00102$:
;	assignment4.c:86: row = row >> 1;   // No key is detected yet, try the next row
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
;	assignment4.c:87: row = row | 0xf0; // Only one of the least 4 significant bits is '0' at a time 
	orl	ar6,#0xF0
;	assignment4.c:75: for (i=0;i<4;++i){ // loop over the 4 rows
	inc	r4
	mov	ar5,r4
	cjne	r4,#0x04,00115$
00115$:
	jc	00104$
00103$:
;	assignment4.c:91: return c;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int1_isr'
;------------------------------------------------------------
;gotkey                    Allocated to registers r7 
;------------------------------------------------------------
;	assignment4.c:97: void int1_isr (void) __interrupt (2) __using (3){
;	-----------------------------------------
;	 function int1_isr
;	-----------------------------------------
_int1_isr:
	ar7 = 0x1F
	ar6 = 0x1E
	ar5 = 0x1D
	ar4 = 0x1C
	ar3 = 0x1B
	ar2 = 0x1A
	ar1 = 0x19
	ar0 = 0x18
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x18
;	assignment4.c:99: changingDate = TRUE;
	mov	_changingDate,#0x01
;	assignment4.c:100: tempIndex = 0;
	mov	_tempIndex,#0x00
;	assignment4.c:101: temp[0]=(month+1)/10;
	mov	r6,_month
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__divsint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	psw,#0x00
	lcall	__divsint
	mov	psw,#0x18
	mov	r6,dpl
	mov	_temp,r6
;	assignment4.c:102: temp[1]=(month+1)%10;
	mov	r6,_month
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x18
	mov	r6,dpl
	mov	(_temp + 0x0001),r6
;	assignment4.c:103: temp[2]=(day+1)/10;
	mov	r6,_day
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__divsint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	psw,#0x00
	lcall	__divsint
	mov	psw,#0x18
	mov	r6,dpl
	mov	(_temp + 0x0002),r6
;	assignment4.c:104: temp[3]=(day+1)%10;
	mov	r6,_day
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x18
	mov	r6,dpl
	mov	(_temp + 0x0003),r6
;	assignment4.c:105: temp[4]=year/10;
	mov	b,#0x0A
	mov	a,_year
	div	ab
	mov	(_temp + 0x0004),a
;	assignment4.c:106: temp[5]=year%10;
	mov	b,#0x0A
	mov	a,_year
	div	ab
	mov	a,b
	mov	(_temp + 0x0005),a
;	assignment4.c:107: address = 0x40;
	mov	_address,#0x40
;	assignment4.c:108: setDdRamAddress(address);
	mov	dpl,#0x40
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x18
;	assignment4.c:112: while(SW1 == 0){
00138$:
	jnb	_P3_3,00206$
	ljmp	00140$
00206$:
;	assignment4.c:113: count = 0;
	mov	_count,#0x00
;	assignment4.c:114: gotkey = getKey();
	mov	psw,#0x00
	lcall	_getKey
	mov	psw,#0x18
;	assignment4.c:115: if (gotkey != 0){
	mov	a,dpl
	mov	r7,a
	jz	00138$
;	assignment4.c:116: big_delay();
	push	ar7
	mov	psw,#0x00
	lcall	_big_delay
	mov	psw,#0x18
	pop	ar7
;	assignment4.c:117: if(gotkey == '*'){	//Move cursor left
	cjne	r7,#0x2A,00105$
;	assignment4.c:119: tempIndex = (tempIndex - 1)%6;
	mov	r5,_tempIndex
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xFF
	mov	dpl,a
	mov	a,r6
	addc	a,#0xFF
	mov	dph,a
	mov	__modsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x18
	mov	r5,dpl
	mov	_tempIndex,r5
;	assignment4.c:120: address = (address - 1 -0x40)%8+0x40;
	mov	r5,_address
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xBF
	mov	dpl,a
	mov	a,r6
	addc	a,#0xFF
	mov	dph,a
	mov	__modsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x18
	mov	r5,dpl
	mov	r6,dph
	mov	a,#0x40
	add	a,r5
	mov	_address,a
;	assignment4.c:121: if(address == 0x42 || address == 0x45){
	mov	a,#0x42
	cjne	a,_address,00210$
	sjmp	00101$
00210$:
	mov	a,#0x45
	cjne	a,_address,00102$
00101$:
;	assignment4.c:122: address--;
	dec	_address
00102$:
;	assignment4.c:124: setDdRamAddress(address);
	mov	dpl,_address
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x18
;	assignment4.c:125: continue;
	ljmp	00138$
00105$:
;	assignment4.c:128: if(gotkey == '#'){	//Move cursor right
	cjne	r7,#0x23,00110$
;	assignment4.c:130: tempIndex = (tempIndex + 1)%6;
	mov	r5,_tempIndex
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x18
	mov	r5,dpl
	mov	_tempIndex,r5
;	assignment4.c:131: address = (address + 1 - 0x40)%8+0x40;
	mov	r5,_address
	mov	r6,#0x00
	mov	a,#0xC1
	add	a,r5
	mov	dpl,a
	mov	a,#0xFF
	addc	a,r6
	mov	dph,a
	mov	__modsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x18
	mov	r5,dpl
	mov	r6,dph
	mov	a,#0x40
	add	a,r5
	mov	_address,a
;	assignment4.c:132: if(address == 0x42 || address == 0x45){
	mov	a,#0x42
	cjne	a,_address,00215$
	sjmp	00106$
00215$:
	mov	a,#0x45
	cjne	a,_address,00107$
00106$:
;	assignment4.c:133: address++;
	inc	_address
00107$:
;	assignment4.c:135: setDdRamAddress(address);
	mov	dpl,_address
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x18
;	assignment4.c:136: continue;
	ljmp	00138$
00110$:
;	assignment4.c:140: if((tempIndex == 0 && gotkey -48 >1) || (tempIndex == 1 && temp[0] == 1 && gotkey-48>2) || (tempIndex == 1 && temp[0] == 0 && gotkey-48==0) || (tempIndex == 3 && temp[2]==0 && gotkey-48==0) 
	mov	a,_tempIndex
	jnz	00120$
	mov	ar5,r7
	mov	r6,a
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	clr	c
	mov	a,#0x01
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00219$
	ljmp	00138$
00219$:
00120$:
	mov	a,#0x01
	cjne	a,_tempIndex,00123$
	mov	a,#0x01
	cjne	a,_temp,00123$
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	clr	c
	mov	a,#0x02
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00224$
	ljmp	00138$
00224$:
00123$:
	mov	a,#0x01
	cjne	a,_tempIndex,00126$
	mov	a,_temp
	jnz	00126$
	mov	ar5,r7
	mov	r6,a
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	orl	a,r5
	jnz	00228$
	ljmp	00138$
00228$:
00126$:
	mov	a,#0x03
	cjne	a,_tempIndex,00130$
	mov	a,(_temp + 0x0002)
	jnz	00130$
	mov	ar5,r7
	mov	r6,a
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	orl	a,r5
	jnz	00232$
	ljmp	00138$
00232$:
00130$:
;	assignment4.c:141: || (tempIndex == 2 && temp[0] == 0 && temp[1] == 2 && gotkey-48>2) || (tempIndex == 2 && gotkey-48>3) || (tempIndex == 3 && temp[1]==2 && gotkey-48>8)){
	mov	a,#0x02
	cjne	a,_tempIndex,00132$
	mov	a,_temp
	jnz	00132$
	mov	a,#0x02
	cjne	a,(_temp + 0x0001),00132$
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	clr	c
	mov	a,#0x02
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00238$
	ljmp	00138$
00238$:
00132$:
	mov	a,#0x02
	cjne	a,_tempIndex,00135$
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	clr	c
	mov	a,#0x03
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00241$
	ljmp	00138$
00241$:
00135$:
	mov	a,#0x03
	cjne	a,_tempIndex,00115$
	mov	a,#0x02
	cjne	a,(_temp + 0x0001),00115$
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	clr	c
	mov	a,#0x08
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00246$
	ljmp	00138$
00246$:
;	assignment4.c:142: continue;
00115$:
;	assignment4.c:145: temp[tempIndex] = gotkey - 48;
	mov	a,_tempIndex
	add	a,#_temp
	mov	r1,a
	mov	a,r7
	add	a,#0xD0
	mov	@r1,a
;	assignment4.c:146: sendChar(gotkey);
	mov	dpl,r7
	mov	psw,#0x00
	lcall	_sendChar
	mov	psw,#0x18
;	assignment4.c:147: tempIndex = (tempIndex + 1)%6;
	mov	r6,_tempIndex
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x18
	mov	r6,dpl
	mov	_tempIndex,r6
;	assignment4.c:148: address = (address + 1)%8+0x40;
	mov	r6,_address
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x18
	mov	r6,dpl
	mov	r7,dph
	mov	a,#0x40
	add	a,r6
	mov	_address,a
;	assignment4.c:149: if(address == 0x42 || address == 0x45){
	mov	a,#0x42
	cjne	a,_address,00247$
	sjmp	00111$
00247$:
	mov	a,#0x45
	cjne	a,_address,00116$
00111$:
;	assignment4.c:150: address++;
	inc	_address
00116$:
;	assignment4.c:154: setDdRamAddress(address);
	mov	dpl,_address
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x18
;	assignment4.c:155: gotkey = 0;
	ljmp	00138$
00140$:
;	assignment4.c:158: resetScreen = TRUE;
	mov	_resetScreen,#0x01
;	assignment4.c:159: month = getFirst()-1;
	mov	psw,#0x00
	lcall	_getFirst
	mov	psw,#0x18
	mov	a,dpl
	dec	a
	mov	_month,a
;	assignment4.c:160: day = getSecond()-1;
	mov	psw,#0x00
	lcall	_getSecond
	mov	psw,#0x18
	mov	a,dpl
	dec	a
	mov	_day,a
;	assignment4.c:161: year = getThird();
	mov	psw,#0x00
	lcall	_getThird
	mov	psw,#0x18
	mov	_year,dpl
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'int0_isr'
;------------------------------------------------------------
;gotkey                    Allocated to registers r7 
;------------------------------------------------------------
;	assignment4.c:166: void int0_isr (void) __interrupt (0) __using (1){
;	-----------------------------------------
;	 function int0_isr
;	-----------------------------------------
_int0_isr:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	assignment4.c:169: changingTime = TRUE;
	mov	_changingTime,#0x01
;	assignment4.c:170: tempIndex = 0;
	mov	_tempIndex,#0x00
;	assignment4.c:171: temp[0]=hour/10;
	mov	b,#0x0A
	mov	a,_hour
	div	ab
	mov	_temp,a
;	assignment4.c:172: temp[1]=hour%10;
	mov	b,#0x0A
	mov	a,_hour
	div	ab
	mov	a,b
	mov	(_temp + 0x0001),a
;	assignment4.c:173: temp[2]=minute/10;
	mov	b,#0x0A
	mov	a,_minute
	div	ab
	mov	(_temp + 0x0002),a
;	assignment4.c:174: temp[3]=minute%10;
	mov	b,#0x0A
	mov	a,_minute
	div	ab
	mov	a,b
	mov	(_temp + 0x0003),a
;	assignment4.c:175: temp[4]=count/10;
	mov	b,#0x0A
	mov	a,_count
	div	ab
	mov	(_temp + 0x0004),a
;	assignment4.c:176: temp[5]=count%10;
	mov	b,#0x0A
	mov	a,_count
	div	ab
	mov	a,b
	mov	(_temp + 0x0005),a
;	assignment4.c:177: address = 0x00;
	mov	_address,#0x00
;	assignment4.c:178: setDdRamAddress(address);
	mov	dpl,#0x00
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x08
;	assignment4.c:181: while(SW0 == 0){
00127$:
	jnb	_P3_2,00168$
	ljmp	00129$
00168$:
;	assignment4.c:182: count = 0;
	mov	_count,#0x00
;	assignment4.c:183: gotkey = getKey();
	mov	psw,#0x00
	lcall	_getKey
	mov	psw,#0x08
;	assignment4.c:184: if (gotkey != 0){
	mov	a,dpl
	mov	r7,a
	jz	00127$
;	assignment4.c:185: big_delay();
	push	ar7
	mov	psw,#0x00
	lcall	_big_delay
	mov	psw,#0x08
	pop	ar7
;	assignment4.c:186: if(gotkey == '*'){	//Move cursor left
	cjne	r7,#0x2A,00110$
;	assignment4.c:188: tempIndex = (tempIndex - 1)%6;
	mov	r5,_tempIndex
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xFF
	mov	dpl,a
	mov	a,r6
	addc	a,#0xFF
	mov	dph,a
	mov	__modsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x08
	mov	r5,dpl
	mov	_tempIndex,r5
;	assignment4.c:189: address = (address - 1)%8;
	mov	r5,_address
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xFF
	mov	dpl,a
	mov	a,r6
	addc	a,#0xFF
	mov	dph,a
	mov	__modsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x08
	mov	r5,dpl
	mov	r6,dph
	mov	_address,r5
;	assignment4.c:190: if(address == 0x2 || address == 0x5){
	mov	a,#0x02
	cjne	a,_address,00172$
	sjmp	00101$
00172$:
	mov	a,#0x05
	cjne	a,_address,00102$
00101$:
;	assignment4.c:191: address--;
	dec	_address
00102$:
;	assignment4.c:193: setDdRamAddress(address);
	mov	dpl,_address
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x08
;	assignment4.c:194: continue;
	ljmp	00127$
00110$:
;	assignment4.c:196: else if(gotkey == '#'){	//Move cursor right
	cjne	r7,#0x23,00111$
;	assignment4.c:198: tempIndex = (tempIndex + 1)%6;
	mov	r5,_tempIndex
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x08
	mov	r5,dpl
	mov	_tempIndex,r5
;	assignment4.c:199: address = (address + 1)%8;
	mov	r5,_address
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x08
	mov	r5,dpl
	mov	r6,dph
	mov	_address,r5
;	assignment4.c:200: if(address == 0x2 || address == 0x5){
	mov	a,#0x02
	cjne	a,_address,00177$
	sjmp	00104$
00177$:
	mov	a,#0x05
	cjne	a,_address,00105$
00104$:
;	assignment4.c:201: address++;
	inc	_address
00105$:
;	assignment4.c:203: setDdRamAddress(address);
	mov	dpl,_address
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x08
;	assignment4.c:204: continue;
	ljmp	00127$
00111$:
;	assignment4.c:207: if(((tempIndex == 3 || tempIndex == 5) && gotkey-48>5) || (tempIndex == 0 && gotkey-48>2) || (tempIndex == 1 && gotkey-48>3 && temp[0] == 2)){
	mov	a,#0x03
	cjne	a,_tempIndex,00180$
	sjmp	00119$
00180$:
	mov	a,#0x05
	cjne	a,_tempIndex,00121$
00119$:
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	clr	c
	mov	a,#0x05
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00183$
	ljmp	00127$
00183$:
00121$:
	mov	a,_tempIndex
	jnz	00124$
	mov	ar5,r7
	mov	r6,a
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	clr	c
	mov	a,#0x02
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00185$
	ljmp	00127$
00185$:
00124$:
	mov	a,#0x01
	cjne	a,_tempIndex,00116$
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xD0
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	clr	c
	mov	a,#0x03
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00116$
	mov	a,#0x02
	cjne	a,_temp,00189$
	ljmp	00127$
00189$:
;	assignment4.c:208: continue;
00116$:
;	assignment4.c:212: temp[tempIndex] = gotkey - 48;
	mov	a,_tempIndex
	add	a,#_temp
	mov	r1,a
	mov	a,r7
	add	a,#0xD0
	mov	@r1,a
;	assignment4.c:213: sendChar(gotkey);
	mov	dpl,r7
	mov	psw,#0x00
	lcall	_sendChar
	mov	psw,#0x08
;	assignment4.c:214: tempIndex = (tempIndex + 1)%6;
	mov	r6,_tempIndex
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x08
	mov	r6,dpl
	mov	_tempIndex,r6
;	assignment4.c:215: address = (address + 1)%8;
	mov	r6,_address
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x08
	mov	r6,dpl
	mov	r7,dph
	mov	_address,r6
;	assignment4.c:216: if(address == 0x2 || address == 0x5){
	mov	a,#0x02
	cjne	a,_address,00190$
	sjmp	00112$
00190$:
	mov	a,#0x05
	cjne	a,_address,00113$
00112$:
;	assignment4.c:217: address++;
	inc	_address
00113$:
;	assignment4.c:219: setDdRamAddress(address);
	mov	dpl,_address
	mov	psw,#0x00
	lcall	_setDdRamAddress
	mov	psw,#0x08
;	assignment4.c:222: gotkey = 0;
	ljmp	00127$
00129$:
;	assignment4.c:225: resetScreen = TRUE;
	mov	_resetScreen,#0x01
;	assignment4.c:226: hour = getFirst();
	mov	psw,#0x00
	lcall	_getFirst
	mov	psw,#0x08
	mov	_hour,dpl
;	assignment4.c:227: minute = getSecond();
	mov	psw,#0x00
	lcall	_getSecond
	mov	psw,#0x08
	mov	_minute,dpl
;	assignment4.c:228: count = getThird();
	mov	psw,#0x00
	lcall	_getThird
	mov	psw,#0x08
	mov	_count,dpl
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	assignment4.c:233: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	assignment4.c:237: changingDate = FALSE;
	mov	_changingDate,#0x00
;	assignment4.c:238: changingTime = FALSE;
	mov	_changingTime,#0x00
;	assignment4.c:239: resetScreen = FALSE;
	mov	_resetScreen,#0x00
;	assignment4.c:240: IT0 = 1;   // make INT0 to edge triggered
	setb	_IT0
;	assignment4.c:241: IT1 = 1;
	setb	_IT1
;	assignment4.c:242: IE = 0x85;  //enable external interupts
	mov	_IE,#0x85
;	assignment4.c:245: count = 0;
	mov	_count,#0x00
;	assignment4.c:246: hour = 0;
	mov	_hour,#0x00
;	assignment4.c:247: minute = 0;
	mov	_minute,#0x00
;	assignment4.c:248: month = 0;
	mov	_month,#0x00
;	assignment4.c:249: day = 0;
	mov	_day,#0x00
;	assignment4.c:250: year = 0;
	mov	_year,#0x00
;	assignment4.c:251: address = 0x00;
	mov	_address,#0x00
;	assignment4.c:252: functionSet();
	lcall	_functionSet
;	assignment4.c:253: entryModeSet(); // increment and no shift
	lcall	_entryModeSet
;	assignment4.c:254: displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	setb	_displayOnOffControl_PARM_1
	setb	_displayOnOffControl_PARM_2
	setb	_displayOnOffControl_PARM_3
	lcall	_displayOnOffControl
;	assignment4.c:256: while(1){
00114$:
;	assignment4.c:258: if(resetScreen)
	mov	a,_resetScreen
	jz	00102$
;	assignment4.c:260: clearDisplay();
	lcall	_clearDisplay
;	assignment4.c:261: resetScreen = FALSE;
	mov	_resetScreen,#0x00
00102$:
;	assignment4.c:265: setDdRamAddress(0x00);
	mov	dpl,#0x00
	lcall	_setDdRamAddress
;	assignment4.c:266: print();
	lcall	_print
;	assignment4.c:267: timer_delay();
	lcall	_timer_delay
;	assignment4.c:268: count++;
	inc	_count
;	assignment4.c:269: if(count % 60 == 0){
	mov	b,#0x3C
	mov	a,_count
	div	ab
	mov	a,b
	jnz	00114$
;	assignment4.c:270: minute++;
	inc	_minute
;	assignment4.c:271: if(minute % 60 == 0){
	mov	b,#0x3C
	mov	a,_minute
	div	ab
	mov	a,b
	jnz	00110$
;	assignment4.c:272: hour++;
	inc	_hour
;	assignment4.c:273: if(hour % 24 == 0){
	mov	b,#0x18
	mov	a,_hour
	div	ab
	mov	a,b
	jnz	00108$
;	assignment4.c:274: day++;
	inc	_day
;	assignment4.c:275: if((day % getDaysInMonth(month, year)) == 0){
	mov	_getDaysInMonth_PARM_2,_year
	mov	dpl,_month
	lcall	_getDaysInMonth
	mov	a,dpl
	mov	r7,a
	jnb	acc.7,00143$
	cpl	a
	inc	a
00143$:
	mov	b,a
	mov	a,_day
	div	ab
	mov	a,b
	jnz	00106$
;	assignment4.c:276: month++;
	inc	_month
;	assignment4.c:277: if(month % 12 == 0){
	mov	b,#0x0C
	mov	a,_month
	div	ab
	mov	a,b
	jnz	00104$
;	assignment4.c:278: year++;
	inc	_year
;	assignment4.c:279: month = 0;
	mov	_month,#0x00
00104$:
;	assignment4.c:281: day = 0;
	mov	_day,#0x00
00106$:
;	assignment4.c:283: hour = 0;
	mov	_hour,#0x00
00108$:
;	assignment4.c:285: minute = 0;
	mov	_minute,#0x00
00110$:
;	assignment4.c:287: count = 0;
	mov	_count,#0x00
	sjmp	00114$
;------------------------------------------------------------
;Allocation info for local variables in function 'print'
;------------------------------------------------------------
;	assignment4.c:293: void print(void){
;	-----------------------------------------
;	 function print
;	-----------------------------------------
_print:
;	assignment4.c:296: sendChar(hour/10 + 48);
	mov	b,#0x0A
	mov	a,_hour
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_sendChar
;	assignment4.c:297: sendChar((hour%10) + 48);
	mov	b,#0x0A
	mov	a,_hour
	div	ab
	mov	a,b
	add	a,#0x30
	mov	dpl,a
	lcall	_sendChar
;	assignment4.c:298: sendChar(':');
	mov	dpl,#0x3A
	lcall	_sendChar
;	assignment4.c:300: sendChar(minute/10 + 48);
	mov	b,#0x0A
	mov	a,_minute
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_sendChar
;	assignment4.c:301: sendChar((minute%10) + 48);
	mov	b,#0x0A
	mov	a,_minute
	div	ab
	mov	a,b
	add	a,#0x30
	mov	dpl,a
	lcall	_sendChar
;	assignment4.c:303: sendChar(':');
	mov	dpl,#0x3A
	lcall	_sendChar
;	assignment4.c:305: sendChar(count/10 + 48);
	mov	b,#0x0A
	mov	a,_count
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_sendChar
;	assignment4.c:306: sendChar((count%10) + 48);
	mov	b,#0x0A
	mov	a,_count
	div	ab
	mov	a,b
	add	a,#0x30
	mov	dpl,a
	lcall	_sendChar
;	assignment4.c:309: setDdRamAddress(0x40);
	mov	dpl,#0x40
	lcall	_setDdRamAddress
;	assignment4.c:310: sendChar(((month+1)/10)+48);
	mov	r6,_month
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__divsint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_sendChar
;	assignment4.c:311: sendChar(((month+1)%10)+48);
	mov	r6,_month
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_sendChar
;	assignment4.c:313: sendChar('-');
	mov	dpl,#0x2D
	lcall	_sendChar
;	assignment4.c:315: sendChar(((day+1)/10)+48);
	mov	r6,_day
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__divsint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_sendChar
;	assignment4.c:316: sendChar(((day+1)%10)+48);
	mov	r6,_day
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x0A
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_sendChar
;	assignment4.c:318: sendChar('-');
	mov	dpl,#0x2D
	lcall	_sendChar
;	assignment4.c:319: sendChar(((year%100)/10)+48);
	mov	b,#0x64
	mov	a,_year
	div	ab
	mov	a,b
	mov	b,#0x0A
	div	ab
	add	a,#0x30
	mov	dpl,a
	lcall	_sendChar
;	assignment4.c:320: sendChar((year%100)%10+48);
	mov	b,#0x64
	mov	a,_year
	div	ab
	mov	a,b
	mov	b,#0x0A
	div	ab
	mov	a,b
	add	a,#0x30
	mov	dpl,a
	ljmp	_sendChar
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	assignment4.c:324: void _sdcc_gsinit_startup(void) {
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	assignment4.c:328: __endasm;
	mov sp, #0x5F
;	assignment4.c:329: main();
	ljmp	_main
;------------------------------------------------------------
;Allocation info for local variables in function 'getDaysInMonth'
;------------------------------------------------------------
;y                         Allocated with name '_getDaysInMonth_PARM_2'
;m                         Allocated to registers r7 
;leapYear                  Allocated to registers r6 
;------------------------------------------------------------
;	assignment4.c:333: char getDaysInMonth(char m, char y){
;	-----------------------------------------
;	 function getDaysInMonth
;	-----------------------------------------
_getDaysInMonth:
	mov	r7,dpl
;	assignment4.c:335: leapYear = 0;
	mov	r6,#0x00
;	assignment4.c:336: if(y % 4 == 0)
	mov	a,_getDaysInMonth_PARM_2
	mov	c,acc.7
	anl	a,#0x03
	jz	00118$
	jnc	00118$
	orl	a,#0xfc
00118$:
	jnz	00102$
;	assignment4.c:337: leapYear = 1;
	mov	r6,#0x01
00102$:
;	assignment4.c:339: if(leapYear && m == 1)
	mov	a,r6
	jz	00104$
	cjne	r7,#0x01,00104$
;	assignment4.c:340: return daysInMonth[m] + 1;
	mov	a,r7
	add	a,#_daysInMonth
	mov	r1,a
	mov	a,@r1
	inc	a
	mov	dpl,a
	ret
00104$:
;	assignment4.c:342: return daysInMonth[m];
	mov	a,r7
	add	a,#_daysInMonth
	mov	r1,a
	mov	dpl,@r1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getFirst'
;------------------------------------------------------------
;	assignment4.c:346: char getFirst(){
;	-----------------------------------------
;	 function getFirst
;	-----------------------------------------
_getFirst:
;	assignment4.c:347: return temp[0]*10 + temp[1];
	mov	a,_temp
	mov	b,#0x0A
	mul	ab
	add	a,(_temp + 0x0001)
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getSecond'
;------------------------------------------------------------
;	assignment4.c:351: char getSecond(){
;	-----------------------------------------
;	 function getSecond
;	-----------------------------------------
_getSecond:
;	assignment4.c:352: return temp[2]*10 + temp[3];
	mov	a,(_temp + 0x0002)
	mov	b,#0x0A
	mul	ab
	add	a,(_temp + 0x0003)
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getThird'
;------------------------------------------------------------
;	assignment4.c:356: char getThird(){
;	-----------------------------------------
;	 function getThird
;	-----------------------------------------
_getThird:
;	assignment4.c:357: return temp[4]*10 + temp[5];
	mov	a,(_temp + 0x0004)
	mov	b,#0x0A
	mul	ab
	add	a,(_temp + 0x0005)
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_delay'
;------------------------------------------------------------
;	assignment4.c:360: void timer_delay(void){
;	-----------------------------------------
;	 function timer_delay
;	-----------------------------------------
_timer_delay:
;	assignment4.c:362: TMOD = 0x01;
	mov	_TMOD,#0x01
;	assignment4.c:363: TL0 = 0x2F;
	mov	_TL0,#0x2F
;	assignment4.c:364: TH0 = 0x3C;
	mov	_TH0,#0x3C
;	assignment4.c:365: TR0 = 1;
	setb	_TR0
;	assignment4.c:366: while (!TF0) ;
00101$:
	jnb	_TF0,00101$
;	assignment4.c:367: TR0 = 0;
	clr	_TR0
;	assignment4.c:368: TF0 = 0;
	clr	_TF0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'returnHome'
;------------------------------------------------------------
;	assignment4.c:376: void returnHome(void) {
;	-----------------------------------------
;	 function returnHome
;	-----------------------------------------
_returnHome:
;	assignment4.c:377: RS = 0;
	clr	_P2_3
;	assignment4.c:378: P1 = 0x02; // LCD command to return home (the first location of the first lcd line)
	mov	_P1,#0x02
;	assignment4.c:379: E = 1;
	setb	_P2_2
;	assignment4.c:380: E = 0;
	clr	_P2_2
;	assignment4.c:381: big_delay(); // This operation needs a bigger delay
	ljmp	_big_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'entryModeSet'
;------------------------------------------------------------
;	assignment4.c:384: void entryModeSet() {
;	-----------------------------------------
;	 function entryModeSet
;	-----------------------------------------
_entryModeSet:
;	assignment4.c:385: RS = 0;
	clr	_P2_3
;	assignment4.c:386: P1 = 0x06;  
	mov	_P1,#0x06
;	assignment4.c:387: E = 1;
	setb	_P2_2
;	assignment4.c:388: E = 0;
	clr	_P2_2
;	assignment4.c:389: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'displayOnOffControl'
;------------------------------------------------------------
;	assignment4.c:392: void displayOnOffControl(__bit display, __bit cursor, __bit blinking) {
;	-----------------------------------------
;	 function displayOnOffControl
;	-----------------------------------------
_displayOnOffControl:
;	assignment4.c:393: P1_7 = 0;
	clr	_P1_7
;	assignment4.c:394: P1_6 = 0;
	clr	_P1_6
;	assignment4.c:395: P1_5 = 0;
	clr	_P1_5
;	assignment4.c:396: P1_4 = 0;
	clr	_P1_4
;	assignment4.c:397: P1_3 = 1;
	setb	_P1_3
;	assignment4.c:398: P1_2 = display;
	mov	c,_displayOnOffControl_PARM_1
	mov	_P1_2,c
;	assignment4.c:399: P1_1 = cursor;
	mov	c,_displayOnOffControl_PARM_2
	mov	_P1_1,c
;	assignment4.c:400: P1_0 = blinking;
	mov	c,_displayOnOffControl_PARM_3
	mov	_P1_0,c
;	assignment4.c:401: E = 1;
	setb	_P2_2
;	assignment4.c:402: E = 0;
	clr	_P2_2
;	assignment4.c:403: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'functionSet'
;------------------------------------------------------------
;	assignment4.c:407: void functionSet(void) {
;	-----------------------------------------
;	 function functionSet
;	-----------------------------------------
_functionSet:
;	assignment4.c:408: RS = 0;
	clr	_P2_3
;	assignment4.c:409: P1 = 0x38; // 8-bit mode, 2 lines LCD
	mov	_P1,#0x38
;	assignment4.c:410: E = 1;
	setb	_P2_2
;	assignment4.c:411: E = 0;
	clr	_P2_2
;	assignment4.c:412: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'clearDisplay'
;------------------------------------------------------------
;	assignment4.c:415: void clearDisplay(void) {
;	-----------------------------------------
;	 function clearDisplay
;	-----------------------------------------
_clearDisplay:
;	assignment4.c:416: RS = 0;
	clr	_P2_3
;	assignment4.c:417: P1 = 0x01; // command to clear LCD and return the cursor to the home position
	mov	_P1,#0x01
;	assignment4.c:418: E = 1;
	setb	_P2_2
;	assignment4.c:419: E = 0;
	clr	_P2_2
;	assignment4.c:420: big_delay(); // This operation needs a bigger delay
	ljmp	_big_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDdRamAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	assignment4.c:423: void setDdRamAddress(char address) {  // Determine the place to place the next character - First LCD location address in 00h for line 1 and 40h for line 2
;	-----------------------------------------
;	 function setDdRamAddress
;	-----------------------------------------
_setDdRamAddress:
	mov	r7,dpl
;	assignment4.c:424: RS = 0;
	clr	_P2_3
;	assignment4.c:425: P1 = address | 0x80;  // set the MSB to detect that this is an address
	mov	a,#0x80
	orl	a,r7
	mov	_P1,a
;	assignment4.c:426: E = 1;
	setb	_P2_2
;	assignment4.c:427: E = 0;
	clr	_P2_2
;	assignment4.c:428: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	assignment4.c:433: void sendChar(char c) {  // Function to send one character to be displayed on the LCD
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	r7,dpl
;	assignment4.c:434: RS = 1;
	setb	_P2_3
;	assignment4.c:435: P1 = c;
	mov	_P1,r7
;	assignment4.c:436: E = 1;
	setb	_P2_2
;	assignment4.c:437: E = 0;
	clr	_P2_2
;	assignment4.c:438: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;c                         Allocated to registers r3 
;------------------------------------------------------------
;	assignment4.c:441: void sendString(char* str) {  // Function to send a string of characters to be displayed on the lCD
;	-----------------------------------------
;	 function sendString
;	-----------------------------------------
_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	assignment4.c:443: while (c = *str++) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r4
	mov	r3,a
	jz	00104$
;	assignment4.c:444: sendChar(c);
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_sendChar
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	assignment4.c:448: void delay(void) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	assignment4.c:450: for (c = 0; c < 50; c++);
	mov	r7,#0x32
00104$:
	mov	a,r7
	dec	a
	mov	r6,a
	mov	r7,a
	jnz	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'big_delay'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	assignment4.c:453: void big_delay(void) {
;	-----------------------------------------
;	 function big_delay
;	-----------------------------------------
_big_delay:
;	assignment4.c:455: for (c = 0; c < 255; c++);
	mov	r7,#0xFF
00104$:
	mov	ar6,r7
	dec	r6
	mov	a,r6
	mov	r7,a
	jnz	00104$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
