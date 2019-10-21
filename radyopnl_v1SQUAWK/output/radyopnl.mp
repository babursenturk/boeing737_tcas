  ROM 20% full. 3222 bytes used (does not include absolute areas).
  RAM 35% full. 276 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   01A0   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  __func_lit_start
       01A2  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01A2   020E =    526. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A2  LoadConfigTBL_radyopnl
       03A3  LoadConfigInit
       03A3  _LoadConfigInit
       03AA  LoadConfig_radyopnl
       03AA  _LoadConfig_radyopnl
       03B0  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03B0   04B2 =   1202. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       03B0  PGA_1_SetPower
       03B0  _PGA_1_SetPower
       03B0  _PGA_1_Start
       03B0  PGA_1_Start
       03C2  PGA_1_SetGain
       03C2  _PGA_1_SetGain
       03EC  PGA_1_Stop
       03EC  _PGA_1_Stop
       03F0  _LED7SEG_1_ISR
       0417  _LED7SEG_1_Start
       0417  LED7SEG_1_Start
       0444  LED7SEG_1_Stop
       0444  _LED7SEG_1_Stop
       045A  _LED7SEG_1_Dim
       045A  LED7SEG_1_Dim
       0469  _LED7SEG_1_Update
       0469  LED7SEG_1_Update
       04C5  _LED7SEG_1_PutHex
       04C5  LED7SEG_1_PutHex
       04DD  _LED7SEG_1_PutPattern
       04DD  LED7SEG_1_PutPattern
       04F0  _LED7SEG_1_DP
       04F0  LED7SEG_1_DP
       050D  LED7SEG_1_DispInt
       050D  _LED7SEG_1_DispInt
       0580  I2CHW_1_Start
       0580  _I2CHW_1_Start
       0581  _I2CHW_1_EnableInt
       0581  I2CHW_1_EnableInt
       058D  _I2CHW_1_EnableMstr
       058D  I2CHW_1_EnableMstr
       0591  I2CHW_1_EnableSlave
       0591  _I2CHW_1_EnableSlave
       0595  I2CHW_1_Stop
       0595  I2CHW_1_DisableInt
       0595  _I2CHW_1_DisableInt
       0595  _I2CHW_1_Stop
       0599  _I2CHW_1_DisableSlave
       0599  I2CHW_1_DisableSlave
       059D  I2CHW_1_DisableMstr
       059D  _I2CHW_1_DisableMstr
       05A1  I2CHW_1_Poll
       05A1  _I2CHW_1_Poll
       05A2  _I2CHW_1_ISR
       06B8  _I2CHW_1_InitWrite
       06B8  I2CHW_1_InitWrite
       06F6  I2CHW_1_InitRamRead
       06F6  _I2CHW_1_InitRamRead
       0723  I2CHW_1_InitFlashRead
       0723  _I2CHW_1_InitFlashRead
       0724  I2CHW_1_bReadI2CStatus
       0724  _I2CHW_1_bReadI2CStatus
       072A  _I2CHW_1_ClrRdStatus
       072A  I2CHW_1_ClrRdStatus
       0731  I2CHW_1_ClrWrStatus
       0731  _I2CHW_1_ClrWrStatus
       0738  Counter8_1_EnableInt
       0738  _Counter8_1_EnableInt
       073C  Counter8_1_DisableInt
       073C  _Counter8_1_DisableInt
       0740  Counter8_1_Start
       0740  _Counter8_1_Start
       0744  Counter8_1_Stop
       0744  _Counter8_1_Stop
       0748  Counter8_1_WritePeriod
       0748  _Counter8_1_WritePeriod
       074B  Counter8_1_WriteCompareValue
       074B  _Counter8_1_WriteCompareValue
       074E  _Counter8_1_bReadCompareValue
       074E  Counter8_1_bReadCompareValue
       074E  bCounter8_1_ReadCompareValue
       074E  _bCounter8_1_ReadCompareValue
       0751  Counter8_1_bReadCounter
       0751  _bCounter8_1_ReadCounter
       0751  _Counter8_1_bReadCounter
       0751  bCounter8_1_ReadCounter
       0782  _ADCINC12_1_CNT_ISR
       0785  _ADCINC12_1_TMR_ISR
       07F9  ADCINC12_1_SetPower
       07F9  _ADCINC12_1_Start
       07F9  _ADCINC12_1_SetPower
       07F9  ADCINC12_1_Start
       080D  ADCINC12_1_Stop
       080D  _ADCINC12_1_Stop
       0811  _ADCINC12_1_GetSamples
       0811  ADCINC12_1_GetSamples
       0835  ADCINC12_1_StopAD
       0835  _ADCINC12_1_StopAD
       084D  ADCINC12_1_fIsDataAvailable
       084D  _ADCINC12_1_fIsData
       084D  _ADCINC12_1_fIsDataAvailable
       084D  ADCINC12_1_fIsData
       0853  _ADCINC12_1_iGetData
       0853  ADCINC12_1_iGetData
       085B  _ADCINC12_1_ClearFlag
       085B  ADCINC12_1_ClearFlag
       0862  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0862   05D4 =   1492. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0862  __text_start
       0862  _Counter8_1_ISR
       090A  _encoder_isr
       090B  _init_environment
       0967  _init_delay_counter
       098D  _main
       0BED  _dly
       0C50  _I2Yaz
       0C73  _I2Oku
       0C96  _ADConv
       0CF7  __divmod_16X16_16
       0D45  __divmod_32X32_32
       0D82  __i_div16_block_util
       0DBB  __i_div32_block_util
       0E1E  __i_div32_not_util
       0E36  __text_end
       0E40  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0068   0138 =    312. bytes (abs,ovr,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0135  bGetPowerSetting
       0135  _bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0000   0018 =     24. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  NO_SHADOW
       0000  Port_0_Data_SHADE
       0000  _Port_0_Data_SHADE
       0000  _NO_SHADOW
       0001  _LED7SEG_1_ScanStatus
       0001  LED7SEG_1_ScanStatus
       0002  _LED7SEG_1_DigitRAM
       0002  LED7SEG_1_DigitRAM
       000A  _I2CHW_1_bStatus
       000A  I2CHW_1_bStatus
       000B  I2CHW_1_RsrcStatus
       000B  _I2CHW_1_RsrcStatus
       000C  I2CHW_1_Write_Count
       000C  _I2CHW_1_Write_Count
       000D  _pI2CHW_1_Write_BufHI
       000D  pI2CHW_1_Write_BufHI
       000E  pI2CHW_1_Write_BufLO
       000E  pI2CHW_1_Write_Buf
       000E  _pI2CHW_1_Write_Buf
       000E  _pI2CHW_1_Write_BufLO
       000F  _pI2CHW_1_Read_BufHI
       000F  pI2CHW_1_Read_BufHI
       0010  pI2CHW_1_Read_Buf
       0010  _pI2CHW_1_Read_Buf
       0010  _pI2CHW_1_Read_BufLO
       0010  pI2CHW_1_Read_BufLO
       0011  I2CHW_1_Read_Count
       0011  _I2CHW_1_Read_Count
       0012  ADCINC12_1_cTimerU
       0013  ADCINC12_1_cCounterU
       0014  ADCINC12_1_iIncr
       0014  _ADCINC12_1_iIncr
       0016  _ADCINC12_1_fIncr
       0016  ADCINC12_1_fIncr
       0017  ADCINC12_1_bIncrC

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   00E8   000F =     15. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       00E8  __rZ
       00E9  __rY
       00EA  __rX
       00EB  __r11
       00EC  __r10
       00ED  __r9
       00EE  __r8
       00EF  __r7
       00F0  __r6
       00F1  __r5
       00F2  __r4
       00F3  __r3
       00F4  __r2
       00F5  __r1
       00F6  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   00ED =    237. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0018  _mevcut
       0058  _dummy
       0098  _rxBuffer
       00B8  _txBuffer
       00D8  _adc_res
       00F7  _intRet
       00FF  _sol_intkisim
       0100  _ekran_res
       0104  _acnt
       0106  _STATUS
       0108  _Timeout_d
       010A  _cnt
       010C  _ptr
       010E  _iResult
       010F  _lastport
       0110  _sag_decisim
       0111  _sag_intkisim
       0112  _sol_decisim
       0113  _status

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, pga_1.asm, led7seg_1int.asm, led7seg_1.asm, i2chw_1rsrcinits.asm ]
[ i2chw_1int.asm, i2chw_1common.asm, counter8_1.asm, adcinc12_1int.asm, adcinc12_1.asm, rZ.asm ]
[ rY.asm, rX.asm, r11.asm, r10.asm, r9.asm, r8.asm, r7.asm, r6.asm, r5.asm, r4.asm, r3.asm, r2.asm, r1.asm ]
[ r0.asm, divmod_16x16_16_util.asm, divmod_32x32_32_util.asm, i_div16_block_util.asm, i_div32_block_util.asm ]
[ i_div32_not_util.asm ]

User Base Address Definitions

lit = 0x1a0
data = 0x0
SSCParmBlk:0x00F7.0x00FF
InterruptRAM = 0x0
virtual_registers = 0xe8
radyopnl_RAM = 0x114

