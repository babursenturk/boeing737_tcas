	cpu LMM
	.module main.c
	.area data(ram, con, rel)
_STATUS::
	.word 0
	.dbfile ./hbheader.h
	.dbsym e STATUS _STATUS I
	.area data(ram, con, rel)
	.dbfile ./hbheader.h
	.area data(ram, con, rel)
	.dbfile ./hbheader.h
_adc_res::
	.byte 0
	.word 0,0,0,0,0
	.byte 0,0,0,0,0
	.dbfile ./main.c
	.dbsym e adc_res _adc_res A[16:16]c
	.area data(ram, con, rel)
	.dbfile ./main.c
	.area data(ram, con, rel)
	.dbfile ./main.c
_ekran_res::
	.byte 0
	.byte 0,0,0
	.dbsym e ekran_res _ekran_res A[4:4]c
	.area data(ram, con, rel)
	.dbfile ./main.c
	.area data(ram, con, rel)
	.dbfile ./main.c
_sol_intkisim::
	.byte 0
	.dbsym e sol_intkisim _sol_intkisim c
	.area data(ram, con, rel)
	.dbfile ./main.c
	.area data(ram, con, rel)
	.dbfile ./main.c
_sol_decisim::
	.byte 0
	.dbsym e sol_decisim _sol_decisim c
	.area data(ram, con, rel)
	.dbfile ./main.c
	.area data(ram, con, rel)
	.dbfile ./main.c
_sag_intkisim::
	.byte 0
	.dbsym e sag_intkisim _sag_intkisim c
	.area data(ram, con, rel)
	.dbfile ./main.c
	.area data(ram, con, rel)
	.dbfile ./main.c
_sag_decisim::
	.byte 0
	.dbsym e sag_decisim _sag_decisim c
	.area data(ram, con, rel)
	.dbfile ./main.c
	.area text(rom, con, rel)
	.dbfile ./main.c
	.dbfunc e Counter8_1_ISR _Counter8_1_ISR fV
_Counter8_1_ISR::
	.dbline -1
	or F,-64
	push A
	mov A,REG[0xd0]
	push A
	mov A,REG[0xd3]
	push A
	mov A,REG[0xd4]
	push A
	mov A,REG[0xd5]
	push A
	mov REG[0xd0],>__r0
	mov A,[__r0]
	push A
	mov A,[__r1]
	push A
	mov A,[__r2]
	push A
	mov A,[__r3]
	push A
	mov A,[__r4]
	push A
	mov A,[__r5]
	push A
	mov A,[__r6]
	push A
	mov A,[__r7]
	push A
	mov A,[__r8]
	push A
	mov A,[__r9]
	push A
	mov A,[__r10]
	push A
	mov A,[__r11]
	push A
	mov A,[__rX]
	push A
	mov A,[__rY]
	push A
	mov A,[__rZ]
	push A
	.dbline 36
; //----------------------------------------------------------------------------
; // Radio Panel 14.May.2009
; //----------------------------------------------------------------------------
; 
; #include <m8c.h>
; #include "PSoCAPI.h"
; #include "hbheader.h"
; #include "stdlib.h"
; 
; #define SLAVE_ADDRESS 13
; 
; BYTE    txBuffer[32];  
; BYTE    rxBuffer[32]; 
; BYTE	lastport;
; BYTE 	adc_res[16] = {0}; 
; BYTE 	iResult;
; BYTE	ekran_res[4] = {0};  // [0]=NAV ACT, [1]=NAV STB
; BYTE	sol_intkisim=0, sol_decisim=0, sag_intkisim=0, sag_decisim=0;
; 
; BYTE    status;  
; BYTE *ptr;
; //char *intRy et;
; char intRet[8];
; 
; WORD cnt;
; WORD acnt;
; WORD Timeout_d;
; void  I2Oku(void), I2Yaz(void);
; void Int_tostring(int val), ADConv(void);
; 
; #pragma interrupt_handler Counter8_1_ISR, encoder_isr
; void Counter8_1_ISR(void); void encoder_isr(void);
; 
; void dly(long int mS), init_environment(void);
; 
; void Counter8_1_ISR() {Counter8_1_DisableInt(); Counter8_1_Stop(); DELAY_CLR;}
	.dbline 36
	push X
	xcall _Counter8_1_DisableInt
	.dbline 36
	xcall _Counter8_1_Stop
	pop X
	.dbline 36
	mov REG[0xd0],>_STATUS
	mov A,[_STATUS+1]
	and A,-2
	mov REG[0xd0],>__r0
	mov [__r1],A
	mov REG[0xd0],>_STATUS
	mov A,[_STATUS]
	mov REG[0xd0],>__r0
	mov [__r0],A
	mov A,[__r1]
	push A
	mov A,[__r0]
	mov REG[0xd0],>_STATUS
	mov [_STATUS],A
	pop A
	mov [_STATUS+1],A
	.dbline -2
	.dbline 36
L1:
	mov REG[0xD0],>__r0
	pop A
	mov [__rZ],A
	pop A
	mov [__rY],A
	pop A
	mov [__rX],A
	pop A
	mov [__r11],A
	pop A
	mov [__r10],A
	pop A
	mov [__r9],A
	pop A
	mov [__r8],A
	pop A
	mov [__r7],A
	pop A
	mov [__r6],A
	pop A
	mov [__r5],A
	pop A
	mov [__r4],A
	pop A
	mov [__r3],A
	pop A
	mov [__r2],A
	pop A
	mov [__r1],A
	pop A
	mov [__r0],A
	pop A
	mov REG[213],A
	pop A
	mov REG[212],A
	pop A
	mov REG[211],A
	pop A
	mov REG[208],A
	pop A
	.dbline 0 ; func end
	reti
	.dbend
	.dbfunc e encoder_isr _encoder_isr fV
_encoder_isr::
	.dbline -1
	.dbline 38
; 
; void encoder_isr(void){
	.dbline -2
	.dbline 39
; }
L2:
	.dbline 0 ; func end
	reti
	.dbend
	.dbfunc e init_environment _init_environment fV
_init_environment::
	.dbline -1
	.dbline 42
; 		
; void init_environment()
; {  	PRT1DR |= 0xA0;		//release et pinleri
	.dbline 42
	or REG[0x4],-96
	.dbline 43
; 	I2CHW_1_Start(); I2CHW_1_EnableSlave(); I2CHW_1_EnableInt();
	push X
	xcall _I2CHW_1_Start
	.dbline 43
	xcall _I2CHW_1_EnableSlave
	.dbline 43
	xcall _I2CHW_1_EnableInt
	.dbline 44
; 	I2CHW_1_InitRamRead(txBuffer,32);
	mov A,32
	push A
	mov A,>_txBuffer
	push A
	mov A,<_txBuffer
	push A
	xcall _I2CHW_1_InitRamRead
	add SP,-3
	.dbline 45
;     I2CHW_1_InitWrite(rxBuffer,32);
	mov A,32
	push A
	mov A,>_rxBuffer
	push A
	mov A,<_rxBuffer
	push A
	xcall _I2CHW_1_InitWrite
	add SP,-3
	pop X
	.dbline 46
; 	M8C_EnableGInt;	M8C_EnableIntMask (INT_MSK0, INT_MSK0_GPIO); LED7SEG_1_Start();
		or  F, 01h

	.dbline 46
	or REG[0xe0],32
	.dbline 46
	xcall _LED7SEG_1_Start
	.dbline 47
;  	PGA_1_Start(PGA_1_MEDPOWER); ADCINC12_1_Start(ADCINC12_1_MEDPOWER);ADCINC12_1_GetSamples(1);
	push X
	mov A,2
	xcall _PGA_1_Start
	.dbline 47
	mov A,2
	xcall _ADCINC12_1_Start
	.dbline 47
	mov A,1
	xcall _ADCINC12_1_GetSamples
	pop X
	.dbline 49
;     
;     ekran_res[0]=0; lastport=0;
	mov REG[0xd0],>_ekran_res
	mov [_ekran_res],0
	.dbline 49
	mov REG[0xd0],>_lastport
	mov [_lastport],0
	.dbline 50
;     ekran_res[1]=0;
	mov REG[0xd0],>_ekran_res
	mov [_ekran_res+1],0
	.dbline 51
;     ekran_res[2]=0;
	mov [_ekran_res+2],0
	.dbline 52
;     ekran_res[3]=0;
	mov [_ekran_res+3],0
	.dbline -2
	.dbline 53
;     }
L3:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e init_delay_counter _init_delay_counter fV
;             DC -> X-11
;            mSn -> X-7
_init_delay_counter::
	.dbline -1
	push X
	mov X,SP
	.dbline 56
; 
; void init_delay_counter(long int mSn, long int DC)
; {   Counter8_1_WritePeriod(mSn); Counter8_1_WriteCompareValue(DC); Counter8_1_EnableInt();DELAY_SET; Counter8_1_Start();}
	.dbline 56
	mov REG[0xd0],>__r0
	mov A,[X-4]
	push X
	xcall _Counter8_1_WritePeriod
	pop X
	.dbline 56
	mov REG[0xd0],>__r0
	mov A,[X-8]
	push X
	xcall _Counter8_1_WriteCompareValue
	.dbline 56
	xcall _Counter8_1_EnableInt
	pop X
	.dbline 56
	mov REG[0xd0],>_STATUS
	or [_STATUS+1],1
	.dbline 56
	push X
	xcall _Counter8_1_Start
	pop X
	.dbline -2
	.dbline 56
L7:
	pop X
	.dbline 0 ; func end
	ret
	.dbsym l DC -11 L
	.dbsym l mSn -7 L
	.dbend
	.dbfunc e main _main fV
;         dummy1 -> X+0
_main::
	.dbline -1
	push X
	mov X,SP
	add SP,3
	.dbline 60
; /* ---------------------------------------------------------------------- */
; 
; void main()
; {
	.dbline 66
; // NAV LIMITS   = 108.00-117.95 (2048--6037)
; // COMM LIMITS  = 118.00-136.97 (6144--13975)
; // XPNDR LIMITS = 0000-7777		(Octal system)
; // ADF LIMITS   = 0100.0-1799.9
; 
; 	init_environment();
	xcall _init_environment
	xjmp L10
L9:
	.dbline 68
;  	
;  	while(1)  {
	.dbline 71
; 			//txBuffer[0]=
; 			BYTE dummy1;
; 			I2Oku();
	xcall _I2Oku
	.dbline 75
; 
; 
; 			//sayiyaz();
; 			dummy1 = PRT3DR^lastport;	//durumu degisen pin varmi?
	mov A,REG[0xc]
	mov REG[0xd0],>__r0
	mov [__r0],A
	mov REG[0xd0],>_lastport
	mov A,[_lastport]
	mov REG[0xd0],>__r0
	xor [__r0],A
	mov A,[__r0]
	mov [X+0],A
	.dbline 77
; 
; 			if (dummy1 & BSET_0) {		//0. pinin durumu degismis
	tst [X+0],1
	jz L12
	.dbline 77
	.dbline 78
; 				lastport=PRT3DR;
	mov A,REG[0xc]
	mov REG[0xd0],>_lastport
	mov [_lastport],A
	.dbline 79
	mov A,REG[0xc]
	mov REG[0xd0],>__r0
	and A,3
	mov [X+2],A
	mov [X+1],0
	cmp [X+1],0
	jnz X3
	cmp [X+2],1
	jz L17
X3:
	cmp [X+1],0
	jnz X4
	cmp [X+2],3
	jz L27
X4:
	xjmp L14
X0:
	.dbline 79
; 				switch  (PRT3DR & 0b00000011) {	//bu encoder hangi yone donuyor?
L17:
	.dbline 86
; //						case 0: if (PRT2DR & BSET_7) {
; //									if (ekran_res[2]==7) {ekran_res[2]=0;} else {ekran_res[2]++; }}
; //								else {
; //									if (ekran_res[0]==7) {ekran_res[0]=0;} else {ekran_res[0]++; }}
; //								break;
; //						
; 						case 1: if (PRT7DR & BSET_7) {
	tst REG[0x1c],-128
	jz L18
	.dbline 86
	.dbline 87
	mov REG[0xd0],>_ekran_res
	cmp [_ekran_res+2],0
	jnz L20
	.dbline 87
	.dbline 87
	mov [_ekran_res+2],7
	.dbline 87
	xjmp L15
L20:
	.dbline 87
; 									if (ekran_res[2]==0) {ekran_res[2]=7;} else {ekran_res[2]--; }}
	.dbline 87
	mov REG[0xd0],>_ekran_res
	dec [_ekran_res+2]
	.dbline 87
	.dbline 87
	xjmp L15
L18:
	.dbline 88
; 								else {
	.dbline 89
	mov REG[0xd0],>_ekran_res
	cmp [_ekran_res],0
	jnz L25
	.dbline 89
	.dbline 89
	mov [_ekran_res],7
	.dbline 89
	xjmp L15
L25:
	.dbline 89
; 									if (ekran_res[0]==0) {ekran_res[0]=7;} else {ekran_res[0]--; }}
	.dbline 89
	mov REG[0xd0],>_ekran_res
	dec [_ekran_res]
	.dbline 89
	.dbline 89
	.dbline 90
; 								break;
	xjmp L15
L27:
	.dbline 98
; 						
; //						case 2: if (PRT2DR & BSET_7) {
; //									if (ekran_res[2]==0) {ekran_res[2]=7;} else {ekran_res[2]--; }}
; //								else {
; //									if (ekran_res[0]==0) {ekran_res[0]=7;} else {ekran_res[0]--; }}
; //								break;
; //						
; 						case 3: if (PRT7DR & BSET_7) {
	tst REG[0x1c],-128
	jz L28
	.dbline 98
	.dbline 99
	mov REG[0xd0],>_ekran_res
	cmp [_ekran_res+2],7
	jnz L30
	.dbline 99
	.dbline 99
	mov [_ekran_res+2],0
	.dbline 99
	xjmp L15
L30:
	.dbline 99
; 									if (ekran_res[2]==7) {ekran_res[2]=0;} else {ekran_res[2]++; }}
	.dbline 99
	mov REG[0xd0],>_ekran_res
	inc [_ekran_res+2]
	.dbline 99
	.dbline 99
	xjmp L15
L28:
	.dbline 100
; 								else {
	.dbline 101
	mov REG[0xd0],>_ekran_res
	cmp [_ekran_res],7
	jnz L35
	.dbline 101
	.dbline 101
	mov [_ekran_res],0
	.dbline 101
	xjmp L15
L35:
	.dbline 101
; 									if (ekran_res[0]==7) {ekran_res[0]=0;} else {ekran_res[0]++; }}
	.dbline 101
	mov REG[0xd0],>_ekran_res
	inc [_ekran_res]
	.dbline 101
	.dbline 101
	.dbline 102
; 								break;
L14:
L15:
	.dbline 104
; 						
; 						}}
L12:
	.dbline 105
; 			if (dummy1 & BSET_2) {		//2. pinin durumu degismis
	tst [X+0],4
	jz L37
	.dbline 105
	.dbline 106
; 				lastport=PRT3DR;
	mov A,REG[0xc]
	mov REG[0xd0],>_lastport
	mov [_lastport],A
	.dbline 107
; 				switch  (PRT3DR & 0b00001100) {	//bu encoder hangi yone donuyor?
	mov A,REG[0xc]
	mov REG[0xd0],>__r0
	and A,12
	mov [X+2],A
	mov [X+1],0
	mov A,[X+2]
	sub A,4
	mov [__rY],A
	mov A,[X+1]
	xor A,-128
	sbb A,(0 ^ 0x80)
	jc L39
	or A,[__rY]
	jz L42
X5:
L68:
	cmp [X+1],0
	jnz X6
	cmp [X+2],12
	jz L55
X6:
	xjmp L39
X1:
	.dbline 107
L42:
	.dbline 114
; //						case 0: if (PRT2DR & BSET_6) {
; //									if (ekran_res[3]==7) {ekran_res[3]=0;} else {ekran_res[3]++; }}
; //								else {
; //									if (ekran_res[1]==7) {ekran_res[1]=0;} else {ekran_res[1]++; }}
; //								break;
; //						
; 						case 4: if (PRT7DR & BSET_0) {
	tst REG[0x1c],1
	jz L43
	.dbline 114
	.dbline 115
	mov REG[0xd0],>_ekran_res
	cmp [_ekran_res+3],0
	jnz L45
	.dbline 115
	.dbline 115
	mov [_ekran_res+3],7
	.dbline 115
	xjmp L40
L45:
	.dbline 115
; 									if (ekran_res[3]==0) {ekran_res[3]=7;} else {ekran_res[3]--; }}
	.dbline 115
	mov REG[0xd0],>_ekran_res
	dec [_ekran_res+3]
	.dbline 115
	.dbline 115
	xjmp L40
L43:
	.dbline 116
; 								else {
	.dbline 117
	mov REG[0xd0],>_ekran_res
	cmp [_ekran_res+1],0
	jnz L50
	.dbline 117
	.dbline 117
	mov [_ekran_res+1],7
	.dbline 117
	xjmp L40
L50:
	.dbline 117
; 									if (ekran_res[1]==0) {ekran_res[1]=7;} else {ekran_res[1]--; }}
	.dbline 117
	mov REG[0xd0],>_ekran_res
	dec [_ekran_res+1]
	.dbline 117
	.dbline 117
	.dbline 118
; 								break;
	xjmp L40
L55:
	.dbline 126
; 						
; //						case 8: if (PRT2DR & BSET_6) {
; //									if (ekran_res[3]==0) {ekran_res[3]=7;} else {ekran_res[3]--; }}
; //								else {
; //									if (ekran_res[1]==0) {ekran_res[1]=7;} else {ekran_res[1]--; }}
; //								break;
; //						
; 						case 12: if (PRT7DR & BSET_0) {
	tst REG[0x1c],1
	jz L56
	.dbline 126
	.dbline 127
	mov REG[0xd0],>_ekran_res
	cmp [_ekran_res+3],7
	jnz L58
	.dbline 127
	.dbline 127
	mov [_ekran_res+3],0
	.dbline 127
	xjmp L40
L58:
	.dbline 127
; 									if (ekran_res[3]==7) {ekran_res[3]=0;} else {ekran_res[3]++; }}
	.dbline 127
	mov REG[0xd0],>_ekran_res
	inc [_ekran_res+3]
	.dbline 127
	.dbline 127
	xjmp L40
L56:
	.dbline 128
; 								else {
	.dbline 129
	mov REG[0xd0],>_ekran_res
	cmp [_ekran_res+1],7
	jnz L63
	.dbline 129
	.dbline 129
	mov [_ekran_res+1],0
	.dbline 129
	xjmp L40
L63:
	.dbline 129
; 									if (ekran_res[1]==7) {ekran_res[1]=0;} else {ekran_res[1]++; }}
	.dbline 129
	mov REG[0xd0],>_ekran_res
	inc [_ekran_res+1]
	.dbline 129
	.dbline 129
	.dbline 130
; 								break;
L39:
L40:
	.dbline 132
; 						
; 						}}
L37:
	.dbline 134
; 
; 			txBuffer[0]=ekran_res[0];	//sol asil hane
	mov REG[0xd0],>_ekran_res
	mov A,[_ekran_res]
	mov REG[0xd0],>_txBuffer
	mov [_txBuffer],A
	.dbline 135
; 			txBuffer[2]=ekran_res[1];	//sag asil hane
	mov REG[0xd0],>_ekran_res
	mov A,[_ekran_res+1]
	mov REG[0xd0],>_txBuffer
	mov [_txBuffer+2],A
	.dbline 136
; 			txBuffer[1]=ekran_res[2];	//sol decimal hane
	mov REG[0xd0],>_ekran_res
	mov A,[_ekran_res+2]
	mov REG[0xd0],>_txBuffer
	mov [_txBuffer+1],A
	.dbline 137
; 			txBuffer[3]=ekran_res[3];	//sag decimal hane
	mov REG[0xd0],>_ekran_res
	mov A,[_ekran_res+3]
	mov REG[0xd0],>_txBuffer
	mov [_txBuffer+3],A
	.dbline 146
; 
; 			//LED7SEG_1_DispInt(iResult, 1, 4);			
; 			// <=30 STBY
; 			// 30<<40 ALT
; 			// 40<<93 XPNDR
; 			// 93<<160 TA ONLY
; 			// >=161 TA/RA
; 			
; 			if (iResult<=24) {txBuffer[4]=1;}
	mov REG[0xd0],>_iResult
	mov A,24
	cmp A,[_iResult]
	jc L75
X7:
	.dbline 146
	.dbline 146
	mov REG[0xd0],>_txBuffer
	mov [_txBuffer+4],1
	.dbline 146
L75:
	.dbline 147
; 			if ((iResult>=25) && (iResult<=60)) {txBuffer[4]=2;}
	mov REG[0xd0],>_iResult
	cmp [_iResult],25
	jc L78
X8:
	mov REG[0xd0],>_iResult
	mov A,60
	cmp A,[_iResult]
	jc L78
X9:
	.dbline 147
	.dbline 147
	mov REG[0xd0],>_txBuffer
	mov [_txBuffer+4],2
	.dbline 147
L78:
	.dbline 148
; 			if ((iResult>=61) && (iResult<=93)) {txBuffer[4]=3;}
	mov REG[0xd0],>_iResult
	cmp [_iResult],61
	jc L81
X10:
	mov REG[0xd0],>_iResult
	mov A,93
	cmp A,[_iResult]
	jc L81
X11:
	.dbline 148
	.dbline 148
	mov REG[0xd0],>_txBuffer
	mov [_txBuffer+4],3
	.dbline 148
L81:
	.dbline 149
; 			if ((iResult>=94) && (iResult<=160)) {txBuffer[4]=4;}
	mov REG[0xd0],>_iResult
	cmp [_iResult],94
	jc L84
X12:
	mov REG[0xd0],>_iResult
	mov A,-96
	cmp A,[_iResult]
	jc L84
X13:
	.dbline 149
	.dbline 149
	mov REG[0xd0],>_txBuffer
	mov [_txBuffer+4],4
	.dbline 149
L84:
	.dbline 150
; 			if (iResult>=161)  {txBuffer[4]=5;}
	mov REG[0xd0],>_iResult
	cmp [_iResult],-95
	jc L87
X14:
	.dbline 150
	.dbline 150
	mov REG[0xd0],>_txBuffer
	mov [_txBuffer+4],5
	.dbline 150
L87:
	.dbline 152
; 			
; 			if (PRT4DR & BSET_7) {
	tst REG[0x10],-128
	jz L90
	.dbline 152
	.dbline 153
; 				if (txBuffer[4]<10)  {txBuffer[4] = txBuffer[4]+100;} }
	mov REG[0xd0],>_txBuffer
	cmp [_txBuffer+4],10
	jnc L91
X15:
	.dbline 153
	.dbline 153
	mov REG[0xd0],>_txBuffer
	add [_txBuffer+4],100
	.dbline 153
	.dbline 153
	xjmp L91
L90:
	.dbline 154
; 			else {
	.dbline 155
	mov REG[0xd0],>_txBuffer
	mov A,10
	cmp A,[_txBuffer+4]
	jnc L97
X16:
	.dbline 155
	.dbline 155
	mov REG[0xd0],>_txBuffer
	mov A,[_txBuffer+4]
	sub A,100
	mov [_txBuffer+4],A
	.dbline 155
L97:
	.dbline 155
; 				if (txBuffer[4]>10)  {txBuffer[4] = txBuffer[4]-100;} }
L91:
	.dbline 160
	push X
	mov A,1
	push A
	push A
	mov REG[0xd0],>_ekran_res
	mov A,[_ekran_res]
	mov REG[0xd0],>__r0
	mov [__r1],A
	mov A,0
	push A
	mov A,[__r1]
	push A
	xcall _LED7SEG_1_DispInt
	add SP,-4
	.dbline 161
	mov A,1
	push A
	mov A,2
	push A
	mov REG[0xd0],>_ekran_res
	mov A,[_ekran_res+2]
	mov REG[0xd0],>__r0
	mov [__r1],A
	mov A,0
	push A
	mov A,[__r1]
	push A
	xcall _LED7SEG_1_DispInt
	add SP,-4
	.dbline 162
	mov A,1
	push A
	mov A,3
	push A
	mov REG[0xd0],>_ekran_res
	mov A,[_ekran_res+1]
	mov REG[0xd0],>__r0
	mov [__r1],A
	mov A,0
	push A
	mov A,[__r1]
	push A
	xcall _LED7SEG_1_DispInt
	add SP,-4
	.dbline 163
	mov A,1
	push A
	mov A,4
	push A
	mov REG[0xd0],>_ekran_res
	mov A,[_ekran_res+3]
	mov REG[0xd0],>__r0
	mov [__r1],A
	mov A,0
	push A
	mov A,[__r1]
	push A
	xcall _LED7SEG_1_DispInt
	add SP,-4
	pop X
	.dbline 165
	xcall _I2Yaz
	.dbline 166
	push X
	xcall _ADCINC12_1_ClearFlag
	pop X
	.dbline 167
	xcall _ADConv
	.dbline 170
L10:
	.dbline 68
	xjmp L9
X2:
	.dbline -2
	.dbline 171
; 				
; 			
; 			
; //			LED7SEG_1_DispInt(txBuffer[4], 1, 4);	
; 			LED7SEG_1_DispInt(ekran_res[0], 1, 1);
; 			LED7SEG_1_DispInt(ekran_res[2], 2, 1);
; 			LED7SEG_1_DispInt(ekran_res[1], 3, 1);
; 			LED7SEG_1_DispInt(ekran_res[3], 4, 1);
; 			
; 			I2Yaz();
; 				ADCINC12_1_ClearFlag();
; 				ADConv();
; 
; 	
; }//while kapa	
; }//main kapa
L8:
	add SP,-3
	pop X
	.dbline 0 ; func end
	jmp .
	.dbsym l dummy1 0 c
	.dbend
	.dbfunc e dly _dly fV
;             mS -> X-7
_dly::
	.dbline -1
	push X
	mov X,SP
	.dbline 173
	.dbline 173
	mov REG[0xd0],>__r0
	mov A,0
	push A
	push A
	push A
	mov A,2
	push A
	mov A,[X-7]
	push A
	mov A,[X-6]
	push A
	mov A,[X-5]
	push A
	mov A,[X-4]
	push A
	xcall __divmod_32X32_32
	pop A
	mov [__r3],A
	pop A
	mov [__r2],A
	pop A
	mov [__r1],A
	pop A
	add SP,-4
	push A
	mov A,[__r1]
	push A
	mov A,[__r2]
	push A
	mov A,[__r3]
	push A
	mov A,[X-7]
	push A
	mov A,[X-6]
	push A
	mov A,[X-5]
	push A
	mov A,[X-4]
	push A
	xcall _init_delay_counter
	add SP,-8
L106:
	.dbline 173
L107:
	.dbline 173
; 
; void dly(long int mS){init_delay_counter(mS,mS/2); while (DELAY_INVOKE);{}}
	mov REG[0xd0],>_STATUS
	mov A,[_STATUS+1]
	and A,1
	mov REG[0xd0],>__r0
	mov [__r1],A
	mov REG[0xd0],>_STATUS
	mov A,[_STATUS]
	and A,0
	mov REG[0xd0],>__r0
	cmp A,0
	jnz L106
	cmp [__r1],0
	jnz L106
X17:
	.dbline 173
	.dbline 173
	.dbline -2
	.dbline 173
L105:
	pop X
	.dbline 0 ; func end
	ret
	.dbsym l mS -7 L
	.dbend
	.dbfunc e I2Yaz _I2Yaz fV
_I2Yaz::
	.dbline -1
	.dbline 176
	.dbline 177
	push X
	xcall _I2CHW_1_bReadI2CStatus
	pop X
	mov REG[0xd0],>_status
	mov [_status],A
	.dbline 178
	tst [_status],4
	jz L110
	.dbline 179
	.dbline 180
	push X
	xcall _I2CHW_1_ClrRdStatus
	.dbline 181
	mov A,32
	push A
	mov A,>_txBuffer
	push A
	mov A,<_txBuffer
	push A
	xcall _I2CHW_1_InitRamRead
	add SP,-3
	pop X
	.dbline 181
L110:
	.dbline -2
	.dbline 181
; 
; void I2Yaz()
; {
; 		status = I2CHW_1_bReadI2CStatus();
; 		if( status & I2CHW_RD_COMPLETE )
; 		{
; 			I2CHW_1_ClrRdStatus();
; 			I2CHW_1_InitRamRead(txBuffer,32);}}
L109:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e I2Oku _I2Oku fV
_I2Oku::
	.dbline -1
	.dbline 184
	.dbline 185
	push X
	xcall _I2CHW_1_bReadI2CStatus
	pop X
	mov REG[0xd0],>_status
	mov [_status],A
	.dbline 186
	tst [_status],64
	jz L113
	.dbline 187
	.dbline 188
	push X
	xcall _I2CHW_1_ClrWrStatus
	.dbline 189
	mov A,32
	push A
	mov A,>_rxBuffer
	push A
	mov A,<_rxBuffer
	push A
	xcall _I2CHW_1_InitWrite
	add SP,-3
	pop X
	.dbline 189
L113:
	.dbline -2
	.dbline 189
; 
; void I2Oku()
; {
;         status = I2CHW_1_bReadI2CStatus();  
;         if( status & I2CHW_WR_COMPLETE )  
;         {
; 	        I2CHW_1_ClrWrStatus();  
; 	        I2CHW_1_InitWrite(rxBuffer,32);}}
L112:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e ADConv _ADConv fV
_ADConv::
	.dbline -1
	.dbline 192
; 	        
; void ADConv()
; {
	.dbline 193
; 	ADCINC12_1_GetSamples(1);
	push X
	mov A,1
	xcall _ADCINC12_1_GetSamples
	pop X
L116:
	.dbline 195
L117:
	.dbline 195
; 	
; 	while (ADCINC12_1_fIsDataAvailable() == 0);
	push X
	xcall _ADCINC12_1_fIsDataAvailable
	mov REG[0xd0],>__r0
	pop X
	cmp A,0
	jz L116
	.dbline 196
; 	iResult =(ADCINC12_1_iGetData() + 2048)/16;
	push X
	xcall _ADCINC12_1_iGetData
	mov REG[0xd0],>__r0
	mov [__r1],A
	mov [__r0],X
	pop X
	add [__r1],0
	adc [__r0],8
	mov A,0
	push A
	mov A,16
	push A
	mov A,[__r0]
	push A
	mov A,[__r1]
	push A
	xcall __divmod_16X16_16
	pop A
	mov [__r1],A
	pop A
	add SP,-2
	mov A,[__r1]
	mov REG[0xd0],>_iResult
	mov [_iResult],A
	.dbline 197
; 		if (iResult<=0) {iResult=0;}
	mov A,0
	cmp A,[_iResult]
	jc L119
X18:
	.dbline 197
	.dbline 197
	mov REG[0xd0],>_iResult
	mov [_iResult],0
	.dbline 197
L119:
	.dbline 198
; 		if (iResult>=254) {iResult=255;}
	mov REG[0xd0],>_iResult
	cmp [_iResult],-2
	jc L121
X19:
	.dbline 198
	.dbline 198
	mov REG[0xd0],>_iResult
	mov [_iResult],-1
	.dbline 198
L121:
	.dbline 200
; 	
; 	ADCINC12_1_ClearFlag();
	push X
	xcall _ADCINC12_1_ClearFlag
	pop X
	.dbline -2
	.dbline 201
; }
L115:
	.dbline 0 ; func end
	ret
	.dbend
	.area data(ram, con, rel)
	.dbfile ./main.c
_Timeout_d::
	.byte 0,0
	.dbsym e Timeout_d _Timeout_d i
	.area data(ram, con, rel)
	.dbfile ./main.c
_acnt::
	.byte 0,0
	.dbsym e acnt _acnt i
	.area data(ram, con, rel)
	.dbfile ./main.c
_cnt::
	.byte 0,0
	.dbsym e cnt _cnt i
	.area data(ram, con, rel)
	.dbfile ./main.c
_intRet::
	.byte 0,0,0,0,0,0,0,0
	.dbsym e intRet _intRet A[8:8]c
	.area data(ram, con, rel)
	.dbfile ./main.c
_ptr::
	.byte 0,0
	.dbsym e ptr _ptr pc
	.area data(ram, con, rel)
	.dbfile ./main.c
_iResult::
	.byte 0
	.dbsym e iResult _iResult c
	.area data(ram, con, rel)
	.dbfile ./main.c
_lastport::
	.byte 0
	.dbsym e lastport _lastport c
	.area data(ram, con, rel)
	.dbfile ./main.c
_rxBuffer::
	.word 0,0,0,0,0
	.word 0,0,0,0,0
	.word 0,0,0,0,0
	.byte 0,0
	.dbsym e rxBuffer _rxBuffer A[32:32]c
	.area data(ram, con, rel)
	.dbfile ./main.c
_txBuffer::
	.word 0,0,0,0,0
	.word 0,0,0,0,0
	.word 0,0,0,0,0
	.byte 0,0
	.dbsym e txBuffer _txBuffer A[32:32]c
	.area data(ram, con, rel)
	.dbfile ./main.c
_mevcut::
	.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0
	.dbfile ./hbheader.h
	.dbsym e mevcut _mevcut A[64:32]I
	.area data(ram, con, rel)
	.dbfile ./hbheader.h
_status::
	.byte 0
	.dbfile ./main.c
	.dbsym e status _status c
	.area data(ram, con, rel)
	.dbfile ./main.c
_dummy::
	.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0
	.dbfile ./hbheader.h
	.dbsym e dummy _dummy A[64:32]I
