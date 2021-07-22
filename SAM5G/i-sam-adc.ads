--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  Analog-to-Digital Converter
package Interfaces.SAM.ADC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype ADC_CR_SWRST_Field is Interfaces.SAM.Bit;
   subtype ADC_CR_START_Field is Interfaces.SAM.Bit;
   subtype ADC_CR_AUTOCAL_Field is Interfaces.SAM.Bit;
   subtype ADC_CR_CMPRST_Field is Interfaces.SAM.Bit;

   --  Control Register
   type ADC_CR_Register is record
      --  Write-only. Software Reset
      SWRST         : ADC_CR_SWRST_Field := 16#0#;
      --  Write-only. Start Conversion
      START         : ADC_CR_START_Field := 16#0#;
      --  unspecified
      Reserved_2_2  : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Automatic Calibration of ADC
      AUTOCAL       : ADC_CR_AUTOCAL_Field := 16#0#;
      --  Write-only. Comparison Restart
      CMPRST        : ADC_CR_CMPRST_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.SAM.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      START         at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      AUTOCAL       at 0 range 3 .. 3;
      CMPRST        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Trigger Enable
   type MR_TRGEN_Field is
     (--  Hardware triggers are disabled. Starting a conversion is only possible by
--  software.
      DIS,
      --  Hardware trigger selected by TRGSEL field is enabled.
      EN)
     with Size => 1;
   for MR_TRGEN_Field use
     (DIS => 0,
      EN => 1);

   --  Trigger Selection
   type MR_TRGSEL_Field is
     (--  ADTRG External trigger
      ADC_TRIG0,
      --  TIOA0 Output of the Timer Counter Channel 0
      ADC_TRIG1,
      --  TIOA1 Output of the Timer Counter Channel 1
      ADC_TRIG2,
      --  TIOA2 Output of the Timer Counter Channel 2
      ADC_TRIG3,
      --  RTCOUT0
      ADC_TRIG4,
      --  RTTINC
      ADC_TRIG5,
      --  RTTEVENT
      ADC_TRIG6,
      --  -
      ADC_TRIG7)
     with Size => 3;
   for MR_TRGSEL_Field use
     (ADC_TRIG0 => 0,
      ADC_TRIG1 => 1,
      ADC_TRIG2 => 2,
      ADC_TRIG3 => 3,
      ADC_TRIG4 => 4,
      ADC_TRIG5 => 5,
      ADC_TRIG6 => 6,
      ADC_TRIG7 => 7);

   --  Sleep Mode
   type MR_SLEEP_Field is
     (--  Normal Mode: The ADC core and reference voltage circuitry are kept ON
--  between conversions.
      NORMAL,
      --  Sleep Mode: The wake-up time can be modified by programming FWUP bit.
      SLEEP)
     with Size => 1;
   for MR_SLEEP_Field use
     (NORMAL => 0,
      SLEEP => 1);

   --  Fast Wake Up
   type MR_FWUP_Field is
     (--  If SLEEP is 1, then both ADC core and reference voltage circuitry are OFF
--  between conversions
      OFF,
      --  If SLEEP is 1, then Fast Wake-up Sleep mode: The voltage reference is ON
--  between conversions and ADC core is OFF
      ON)
     with Size => 1;
   for MR_FWUP_Field use
     (OFF => 0,
      ON => 1);

   --  Free Run Mode
   type MR_FREERUN_Field is
     (--  Normal Mode
      OFF,
      --  Free Run Mode: Never wait for any trigger.
      ON)
     with Size => 1;
   for MR_FREERUN_Field use
     (OFF => 0,
      ON => 1);

   subtype ADC_MR_PRESCAL_Field is Interfaces.SAM.Byte;

   --  Start Up Time
   type MR_STARTUP_Field is
     (--  0 periods of ADCCLK
      SUT0,
      --  8 periods of ADCCLK
      SUT8,
      --  16 periods of ADCCLK
      SUT16,
      --  24 periods of ADCCLK
      SUT24,
      --  64 periods of ADCCLK
      SUT64,
      --  80 periods of ADCCLK
      SUT80,
      --  96 periods of ADCCLK
      SUT96,
      --  112 periods of ADCCLK
      SUT112,
      --  512 periods of ADCCLK
      SUT512,
      --  576 periods of ADCCLK
      SUT576,
      --  640 periods of ADCCLK
      SUT640,
      --  704 periods of ADCCLK
      SUT704,
      --  768 periods of ADCCLK
      SUT768,
      --  832 periods of ADCCLK
      SUT832,
      --  896 periods of ADCCLK
      SUT896,
      --  960 periods of ADCCLK
      SUT960)
     with Size => 4;
   for MR_STARTUP_Field use
     (SUT0 => 0,
      SUT8 => 1,
      SUT16 => 2,
      SUT24 => 3,
      SUT64 => 4,
      SUT80 => 5,
      SUT96 => 6,
      SUT112 => 7,
      SUT512 => 8,
      SUT576 => 9,
      SUT640 => 10,
      SUT704 => 11,
      SUT768 => 12,
      SUT832 => 13,
      SUT896 => 14,
      SUT960 => 15);

   --  Analog Settling Time
   type MR_SETTLING_Field is
     (--  3 periods of ADCCLK
      AST3,
      --  5 periods of ADCCLK
      AST5,
      --  9 periods of ADCCLK
      AST9,
      --  17 periods of ADCCLK
      AST17)
     with Size => 2;
   for MR_SETTLING_Field use
     (AST3 => 0,
      AST5 => 1,
      AST9 => 2,
      AST17 => 3);

   --  Analog Change
   type MR_ANACH_Field is
     (--  No analog change on channel switching: DIFF0, and OFF0 are used for all
--  channels.
      NONE,
      --  Allows different analog settings for each channel. See ADC_COR registers.
      ALLOWED)
     with Size => 1;
   for MR_ANACH_Field use
     (NONE => 0,
      ALLOWED => 1);

   subtype ADC_MR_TRACKTIM_Field is Interfaces.SAM.UInt4;
   subtype ADC_MR_TRANSFER_Field is Interfaces.SAM.UInt2;

   --  Use Sequence Enable
   type MR_USEQ_Field is
     (--  Normal Mode: The controller converts channels in a simple numeric order
--  depending only on the channel index.
      NUM_ORDER,
      --  User Sequence Mode: The sequence respects what is defined in ADC_SEQR1
--  register and can be used to convert the same channel several times.
      REG_ORDER)
     with Size => 1;
   for MR_USEQ_Field use
     (NUM_ORDER => 0,
      REG_ORDER => 1);

   --  Mode Register
   type ADC_MR_Register is record
      --  Trigger Enable
      TRGEN          : MR_TRGEN_Field := Interfaces.SAM.ADC.DIS;
      --  Trigger Selection
      TRGSEL         : MR_TRGSEL_Field := Interfaces.SAM.ADC.ADC_TRIG0;
      --  unspecified
      Reserved_4_4   : Interfaces.SAM.Bit := 16#0#;
      --  Sleep Mode
      SLEEP          : MR_SLEEP_Field := Interfaces.SAM.ADC.NORMAL;
      --  Fast Wake Up
      FWUP           : MR_FWUP_Field := Interfaces.SAM.ADC.OFF;
      --  Free Run Mode
      FREERUN        : MR_FREERUN_Field := Interfaces.SAM.ADC.OFF;
      --  Prescaler Rate Selection
      PRESCAL        : ADC_MR_PRESCAL_Field := 16#0#;
      --  Start Up Time
      STARTUP        : MR_STARTUP_Field := Interfaces.SAM.ADC.SUT0;
      --  Analog Settling Time
      SETTLING       : MR_SETTLING_Field := Interfaces.SAM.ADC.AST3;
      --  unspecified
      Reserved_22_22 : Interfaces.SAM.Bit := 16#0#;
      --  Analog Change
      ANACH          : MR_ANACH_Field := Interfaces.SAM.ADC.NONE;
      --  Tracking Time
      TRACKTIM       : ADC_MR_TRACKTIM_Field := 16#0#;
      --  Transfer Period
      TRANSFER       : ADC_MR_TRANSFER_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : Interfaces.SAM.Bit := 16#0#;
      --  Use Sequence Enable
      USEQ           : MR_USEQ_Field := Interfaces.SAM.ADC.NUM_ORDER;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_MR_Register use record
      TRGEN          at 0 range 0 .. 0;
      TRGSEL         at 0 range 1 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SLEEP          at 0 range 5 .. 5;
      FWUP           at 0 range 6 .. 6;
      FREERUN        at 0 range 7 .. 7;
      PRESCAL        at 0 range 8 .. 15;
      STARTUP        at 0 range 16 .. 19;
      SETTLING       at 0 range 20 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      ANACH          at 0 range 23 .. 23;
      TRACKTIM       at 0 range 24 .. 27;
      TRANSFER       at 0 range 28 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      USEQ           at 0 range 31 .. 31;
   end record;

   --  ADC_SEQR1_USCH array element
   subtype ADC_SEQR1_USCH_Element is Interfaces.SAM.UInt4;

   --  ADC_SEQR1_USCH array
   type ADC_SEQR1_USCH_Field_Array is array (1 .. 7)
     of ADC_SEQR1_USCH_Element
     with Component_Size => 4, Size => 28;

   --  Type definition for ADC_SEQR1_USCH
   type ADC_SEQR1_USCH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USCH as a value
            Val : Interfaces.SAM.UInt28;
         when True =>
            --  USCH as an array
            Arr : ADC_SEQR1_USCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for ADC_SEQR1_USCH_Field use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  Channel Sequence Register 1
   type ADC_SEQR1_Register is record
      --  User Sequence Number 1
      USCH           : ADC_SEQR1_USCH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_31 : Interfaces.SAM.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SEQR1_Register use record
      USCH           at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  ADC_CHER_CH array element
   subtype ADC_CHER_CH_Element is Interfaces.SAM.Bit;

   --  ADC_CHER_CH array
   type ADC_CHER_CH_Field_Array is array (0 .. 7) of ADC_CHER_CH_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_CHER_CH
   type ADC_CHER_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CH as an array
            Arr : ADC_CHER_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_CHER_CH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Enable Register
   type ADC_CHER_Register is record
      --  Write-only. Channel 0 Enable
      CH            : ADC_CHER_CH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CHER_Register use record
      CH            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADC_CHDR_CH array element
   subtype ADC_CHDR_CH_Element is Interfaces.SAM.Bit;

   --  ADC_CHDR_CH array
   type ADC_CHDR_CH_Field_Array is array (0 .. 7) of ADC_CHDR_CH_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_CHDR_CH
   type ADC_CHDR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CH as an array
            Arr : ADC_CHDR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_CHDR_CH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Disable Register
   type ADC_CHDR_Register is record
      --  Write-only. Channel 0 Disable
      CH            : ADC_CHDR_CH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CHDR_Register use record
      CH            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ADC_CHSR_CH array element
   subtype ADC_CHSR_CH_Element is Interfaces.SAM.Bit;

   --  ADC_CHSR_CH array
   type ADC_CHSR_CH_Field_Array is array (0 .. 7) of ADC_CHSR_CH_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_CHSR_CH
   type ADC_CHSR_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  CH as an array
            Arr : ADC_CHSR_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_CHSR_CH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Status Register
   type ADC_CHSR_Register is record
      --  Read-only. Channel 0 Status
      CH            : ADC_CHSR_CH_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CHSR_Register use record
      CH            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ADC_LCDR_LDATA_Field is Interfaces.SAM.UInt16;
   subtype ADC_LCDR_CHNBOSR_Field is Interfaces.SAM.UInt5;

   --  Last Converted Data Register
   type ADC_LCDR_Register is record
      --  Read-only. Last Data Converted
      LDATA          : ADC_LCDR_LDATA_Field;
      --  unspecified
      Reserved_16_23 : Interfaces.SAM.Byte;
      --  Read-only. Channel Number in Oversampling Mode
      CHNBOSR        : ADC_LCDR_CHNBOSR_Field;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_LCDR_Register use record
      LDATA          at 0 range 0 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      CHNBOSR        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  ADC_IER_EOC array element
   subtype ADC_IER_EOC_Element is Interfaces.SAM.Bit;

   --  ADC_IER_EOC array
   type ADC_IER_EOC_Field_Array is array (0 .. 7) of ADC_IER_EOC_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_IER_EOC
   type ADC_IER_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  EOC as an array
            Arr : ADC_IER_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_IER_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype ADC_IER_LCCHG_Field is Interfaces.SAM.Bit;
   subtype ADC_IER_EOCAL_Field is Interfaces.SAM.Bit;
   subtype ADC_IER_DRDY_Field is Interfaces.SAM.Bit;
   subtype ADC_IER_GOVRE_Field is Interfaces.SAM.Bit;
   subtype ADC_IER_COMPE_Field is Interfaces.SAM.Bit;
   subtype ADC_IER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype ADC_IER_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type ADC_IER_Register is record
      --  Write-only. End of Conversion Interrupt Enable 0
      EOC            : ADC_IER_EOC_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_18  : Interfaces.SAM.UInt11 := 16#0#;
      --  Write-only. Last Channel Change Interrupt Enable
      LCCHG          : ADC_IER_LCCHG_Field := 16#0#;
      --  unspecified
      Reserved_20_22 : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. End of Calibration Sequence
      EOCAL          : ADC_IER_EOCAL_Field := 16#0#;
      --  Write-only. Data Ready Interrupt Enable
      DRDY           : ADC_IER_DRDY_Field := 16#0#;
      --  Write-only. General Overrun Error Interrupt Enable
      GOVRE          : ADC_IER_GOVRE_Field := 16#0#;
      --  Write-only. Comparison Event Interrupt Enable
      COMPE          : ADC_IER_COMPE_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : ADC_IER_ENDRX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : ADC_IER_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_IER_Register use record
      EOC            at 0 range 0 .. 7;
      Reserved_8_18  at 0 range 8 .. 18;
      LCCHG          at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      EOCAL          at 0 range 23 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  ADC_IDR_EOC array element
   subtype ADC_IDR_EOC_Element is Interfaces.SAM.Bit;

   --  ADC_IDR_EOC array
   type ADC_IDR_EOC_Field_Array is array (0 .. 7) of ADC_IDR_EOC_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_IDR_EOC
   type ADC_IDR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  EOC as an array
            Arr : ADC_IDR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_IDR_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype ADC_IDR_LCCHG_Field is Interfaces.SAM.Bit;
   subtype ADC_IDR_EOCAL_Field is Interfaces.SAM.Bit;
   subtype ADC_IDR_DRDY_Field is Interfaces.SAM.Bit;
   subtype ADC_IDR_GOVRE_Field is Interfaces.SAM.Bit;
   subtype ADC_IDR_COMPE_Field is Interfaces.SAM.Bit;
   subtype ADC_IDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype ADC_IDR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type ADC_IDR_Register is record
      --  Write-only. End of Conversion Interrupt Disable 0
      EOC            : ADC_IDR_EOC_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_18  : Interfaces.SAM.UInt11 := 16#0#;
      --  Write-only. Last Channel Change Interrupt Disable
      LCCHG          : ADC_IDR_LCCHG_Field := 16#0#;
      --  unspecified
      Reserved_20_22 : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. End of Calibration Sequence
      EOCAL          : ADC_IDR_EOCAL_Field := 16#0#;
      --  Write-only. Data Ready Interrupt Disable
      DRDY           : ADC_IDR_DRDY_Field := 16#0#;
      --  Write-only. General Overrun Error Interrupt Disable
      GOVRE          : ADC_IDR_GOVRE_Field := 16#0#;
      --  Write-only. Comparison Event Interrupt Disable
      COMPE          : ADC_IDR_COMPE_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : ADC_IDR_ENDRX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : ADC_IDR_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_IDR_Register use record
      EOC            at 0 range 0 .. 7;
      Reserved_8_18  at 0 range 8 .. 18;
      LCCHG          at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      EOCAL          at 0 range 23 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  ADC_IMR_EOC array element
   subtype ADC_IMR_EOC_Element is Interfaces.SAM.Bit;

   --  ADC_IMR_EOC array
   type ADC_IMR_EOC_Field_Array is array (0 .. 7) of ADC_IMR_EOC_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_IMR_EOC
   type ADC_IMR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  EOC as an array
            Arr : ADC_IMR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_IMR_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype ADC_IMR_LCCHG_Field is Interfaces.SAM.Bit;
   subtype ADC_IMR_EOCAL_Field is Interfaces.SAM.Bit;
   subtype ADC_IMR_DRDY_Field is Interfaces.SAM.Bit;
   subtype ADC_IMR_GOVRE_Field is Interfaces.SAM.Bit;
   subtype ADC_IMR_COMPE_Field is Interfaces.SAM.Bit;
   subtype ADC_IMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype ADC_IMR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type ADC_IMR_Register is record
      --  Read-only. End of Conversion Interrupt Mask 0
      EOC            : ADC_IMR_EOC_Field;
      --  unspecified
      Reserved_8_18  : Interfaces.SAM.UInt11;
      --  Read-only. Last Channel Change Interrupt Mask
      LCCHG          : ADC_IMR_LCCHG_Field;
      --  unspecified
      Reserved_20_22 : Interfaces.SAM.UInt3;
      --  Read-only. End of Calibration Sequence
      EOCAL          : ADC_IMR_EOCAL_Field;
      --  Read-only. Data Ready Interrupt Mask
      DRDY           : ADC_IMR_DRDY_Field;
      --  Read-only. General Overrun Error Interrupt Mask
      GOVRE          : ADC_IMR_GOVRE_Field;
      --  Read-only. Comparison Event Interrupt Mask
      COMPE          : ADC_IMR_COMPE_Field;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : ADC_IMR_ENDRX_Field;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : ADC_IMR_RXBUFF_Field;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_IMR_Register use record
      EOC            at 0 range 0 .. 7;
      Reserved_8_18  at 0 range 8 .. 18;
      LCCHG          at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      EOCAL          at 0 range 23 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  ADC_ISR_EOC array element
   subtype ADC_ISR_EOC_Element is Interfaces.SAM.Bit;

   --  ADC_ISR_EOC array
   type ADC_ISR_EOC_Field_Array is array (0 .. 7) of ADC_ISR_EOC_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_ISR_EOC
   type ADC_ISR_EOC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOC as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  EOC as an array
            Arr : ADC_ISR_EOC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_ISR_EOC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype ADC_ISR_LCCHG_Field is Interfaces.SAM.Bit;
   subtype ADC_ISR_EOCAL_Field is Interfaces.SAM.Bit;
   subtype ADC_ISR_DRDY_Field is Interfaces.SAM.Bit;
   subtype ADC_ISR_GOVRE_Field is Interfaces.SAM.Bit;
   subtype ADC_ISR_COMPE_Field is Interfaces.SAM.Bit;
   subtype ADC_ISR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype ADC_ISR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Status Register
   type ADC_ISR_Register is record
      --  Read-only. End of Conversion 0 (automatically set / cleared)
      EOC            : ADC_ISR_EOC_Field;
      --  unspecified
      Reserved_8_18  : Interfaces.SAM.UInt11;
      --  Read-only. Last Channel Change (cleared on read)
      LCCHG          : ADC_ISR_LCCHG_Field;
      --  unspecified
      Reserved_20_22 : Interfaces.SAM.UInt3;
      --  Read-only. End of Calibration Sequence
      EOCAL          : ADC_ISR_EOCAL_Field;
      --  Read-only. Data Ready (automatically set / cleared)
      DRDY           : ADC_ISR_DRDY_Field;
      --  Read-only. General Overrun Error (cleared on read)
      GOVRE          : ADC_ISR_GOVRE_Field;
      --  Read-only. Comparison Event (cleared on read)
      COMPE          : ADC_ISR_COMPE_Field;
      --  Read-only. End of Receiver Transfer (automatically set / cleared)
      ENDRX          : ADC_ISR_ENDRX_Field;
      --  Read-only. Reception Buffer Full (automatically set / cleared)
      RXBUFF         : ADC_ISR_RXBUFF_Field;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_ISR_Register use record
      EOC            at 0 range 0 .. 7;
      Reserved_8_18  at 0 range 8 .. 18;
      LCCHG          at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      EOCAL          at 0 range 23 .. 23;
      DRDY           at 0 range 24 .. 24;
      GOVRE          at 0 range 25 .. 25;
      COMPE          at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ADC_LCTMR_DUALTRIG_Field is Interfaces.SAM.Bit;

   --  Last Channel Comparison Mode
   type LCTMR_CMPMOD_Field is
     (--  Generates an event when the converted data is lower than the low threshold
--  of the window.
      LOW,
      --  Generates an event when the converted data is higher than the high
--  threshold of the window.
      HIGH,
      --  Generates an event when the converted data is in the comparison window.
      IN_k,
      --  Generates an event when the converted data is out of the comparison window.
      OUT_k)
     with Size => 2;
   for LCTMR_CMPMOD_Field use
     (LOW => 0,
      HIGH => 1,
      IN_k => 2,
      OUT_k => 3);

   --  Last Channel Trigger Mode Register
   type ADC_LCTMR_Register is record
      --  Dual Trigger ON
      DUALTRIG      : ADC_LCTMR_DUALTRIG_Field := 16#0#;
      --  unspecified
      Reserved_1_3  : Interfaces.SAM.UInt3 := 16#0#;
      --  Last Channel Comparison Mode
      CMPMOD        : LCTMR_CMPMOD_Field := Interfaces.SAM.ADC.LOW;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_LCTMR_Register use record
      DUALTRIG      at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CMPMOD        at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype ADC_LCCWR_LOWTHRES_Field is Interfaces.SAM.UInt12;
   subtype ADC_LCCWR_HIGHTHRES_Field is Interfaces.SAM.UInt12;

   --  Last Channel Compare Window Register
   type ADC_LCCWR_Register is record
      --  Low Threshold
      LOWTHRES       : ADC_LCCWR_LOWTHRES_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4 := 16#0#;
      --  High Threshold
      HIGHTHRES      : ADC_LCCWR_HIGHTHRES_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.SAM.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_LCCWR_Register use record
      LOWTHRES       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HIGHTHRES      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  ADC_OVER_OVRE array element
   subtype ADC_OVER_OVRE_Element is Interfaces.SAM.Bit;

   --  ADC_OVER_OVRE array
   type ADC_OVER_OVRE_Field_Array is array (0 .. 7) of ADC_OVER_OVRE_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_OVER_OVRE
   type ADC_OVER_OVRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVRE as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  OVRE as an array
            Arr : ADC_OVER_OVRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_OVER_OVRE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Overrun Status Register
   type ADC_OVER_Register is record
      --  Read-only. Overrun Error 0
      OVRE          : ADC_OVER_OVRE_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_OVER_Register use record
      OVRE          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Comparison Mode
   type EMR_CMPMODE_Field is
     (--  Generates an event when the converted data is lower than the low threshold
--  of the window.
      LOW,
      --  Generates an event when the converted data is higher than the high
--  threshold of the window.
      HIGH,
      --  Generates an event when the converted data is in the comparison window.
      IN_k,
      --  Generates an event when the converted data is out of the comparison window.
      OUT_k)
     with Size => 2;
   for EMR_CMPMODE_Field use
     (LOW => 0,
      HIGH => 1,
      IN_k => 2,
      OUT_k => 3);

   --  Comparison Type
   type EMR_CMPTYPE_Field is
     (--  Any conversion is performed and comparison function drives the COMPE flag.
      FLAG_ONLY,
      --  Comparison conditions must be met to start the storage of all conversions
--  until the CMPRST bit is set.
      START_CONDITION)
     with Size => 1;
   for EMR_CMPTYPE_Field use
     (FLAG_ONLY => 0,
      START_CONDITION => 1);

   subtype ADC_EMR_CMPSEL_Field is Interfaces.SAM.UInt4;
   subtype ADC_EMR_CMPALL_Field is Interfaces.SAM.Bit;
   subtype ADC_EMR_CMPFILTER_Field is Interfaces.SAM.UInt2;

   --  Over Sampling Rate
   type EMR_OSR_Field is
     (--  No averaging. ADC sample rate is maximum.
      NO_AVERAGE,
      --  1-bit enhanced resolution by averaging. ADC sample rate divided by 4.
      OSR4,
      --  2-bit enhanced resolution by averaging. ADC sample rate divided by 16.
      OSR16,
      --  3-bit enhanced resolution by averaging. ADC sample rate divided by 64.
      OSR64,
      --  4-bit enhanced resolution by averaging. ADC sample rate divided by 256.
      OSR256)
     with Size => 3;
   for EMR_OSR_Field use
     (NO_AVERAGE => 0,
      OSR4 => 1,
      OSR16 => 2,
      OSR64 => 3,
      OSR256 => 4);

   --  Averaging on Single Trigger Event
   type EMR_ASTE_Field is
     (--  The average requests several trigger events.
      MULTI_TRIG_AVERAGE,
      --  The average requests only one trigger event.
      SINGLE_TRIG_AVERAGE)
     with Size => 1;
   for EMR_ASTE_Field use
     (MULTI_TRIG_AVERAGE => 0,
      SINGLE_TRIG_AVERAGE => 1);

   --  External Clock Selection
   type EMR_SRCCLK_Field is
     (--  The peripheral clock is the source for the ADC prescaler.
      PERIPH_CLK,
      --  PMC PCKx is the source clock for the ADC prescaler, thus the ADC clock can
--  be independent of the core/peripheral clock.
      PMC_PCK)
     with Size => 1;
   for EMR_SRCCLK_Field use
     (PERIPH_CLK => 0,
      PMC_PCK => 1);

   subtype ADC_EMR_TAG_Field is Interfaces.SAM.Bit;

   --  Extended Mode Register
   type ADC_EMR_Register is record
      --  Comparison Mode
      CMPMODE        : EMR_CMPMODE_Field := Interfaces.SAM.ADC.LOW;
      --  Comparison Type
      CMPTYPE        : EMR_CMPTYPE_Field := Interfaces.SAM.ADC.FLAG_ONLY;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  Comparison Selected Channel
      CMPSEL         : ADC_EMR_CMPSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.SAM.Bit := 16#0#;
      --  Compare All Channels
      CMPALL         : ADC_EMR_CMPALL_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.SAM.UInt2 := 16#0#;
      --  Compare Event Filtering
      CMPFILTER      : ADC_EMR_CMPFILTER_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2 := 16#0#;
      --  Over Sampling Rate
      OSR            : EMR_OSR_Field := Interfaces.SAM.ADC.NO_AVERAGE;
      --  unspecified
      Reserved_19_19 : Interfaces.SAM.Bit := 16#0#;
      --  Averaging on Single Trigger Event
      ASTE           : EMR_ASTE_Field :=
                        Interfaces.SAM.ADC.MULTI_TRIG_AVERAGE;
      --  External Clock Selection
      SRCCLK         : EMR_SRCCLK_Field := Interfaces.SAM.ADC.PERIPH_CLK;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  Tag of the ADC_LCDR
      TAG            : ADC_EMR_TAG_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_EMR_Register use record
      CMPMODE        at 0 range 0 .. 1;
      CMPTYPE        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CMPSEL         at 0 range 4 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CMPALL         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CMPFILTER      at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      OSR            at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ASTE           at 0 range 20 .. 20;
      SRCCLK         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TAG            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ADC_CWR_LOWTHRES_Field is Interfaces.SAM.UInt16;
   subtype ADC_CWR_HIGHTHRES_Field is Interfaces.SAM.UInt16;

   --  Compare Window Register
   type ADC_CWR_Register is record
      --  Low Threshold
      LOWTHRES  : ADC_CWR_LOWTHRES_Field := 16#0#;
      --  High Threshold
      HIGHTHRES : ADC_CWR_HIGHTHRES_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CWR_Register use record
      LOWTHRES  at 0 range 0 .. 15;
      HIGHTHRES at 0 range 16 .. 31;
   end record;

   --  ADC_COR_OFF array element
   subtype ADC_COR_OFF_Element is Interfaces.SAM.Bit;

   --  ADC_COR_OFF array
   type ADC_COR_OFF_Field_Array is array (0 .. 7) of ADC_COR_OFF_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_COR_OFF
   type ADC_COR_OFF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OFF as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  OFF as an array
            Arr : ADC_COR_OFF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_COR_OFF_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ADC_COR_DIFF array element
   subtype ADC_COR_DIFF_Element is Interfaces.SAM.Bit;

   --  ADC_COR_DIFF array
   type ADC_COR_DIFF_Field_Array is array (0 .. 7) of ADC_COR_DIFF_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ADC_COR_DIFF
   type ADC_COR_DIFF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIFF as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  DIFF as an array
            Arr : ADC_COR_DIFF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ADC_COR_DIFF_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Offset Register
   type ADC_COR_Register is record
      --  Offset for Channel 0
      OFF            : ADC_COR_OFF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.SAM.Byte := 16#0#;
      --  Differential Inputs for Channel 0
      DIFF           : ADC_COR_DIFF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_COR_Register use record
      OFF            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DIFF           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ADC_CDR_DATA_Field is Interfaces.SAM.UInt16;

   --  Channel Data Register
   type ADC_CDR_Register is record
      --  Read-only. Converted Data
      DATA           : ADC_CDR_DATA_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CDR_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Channel Data Register
   type ADC_CDR_Registers is array (0 .. 7) of ADC_CDR_Register;

   subtype ADC_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (--  Reset value for the field
      WPMR_WPKEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit.Always reads as 0
      PASSWD)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (WPMR_WPKEY_Field_Reset => 0,
      PASSWD => 4277315);

   --  Write Protection Mode Register
   type ADC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : ADC_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := WPMR_WPKEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype ADC_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype ADC_WPSR_WPVSRC_Field is Interfaces.SAM.UInt16;

   --  Write Protection Status Register
   type ADC_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : ADC_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : ADC_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ADC_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type ADC_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : ADC_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type ADC_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : ADC_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC_PTCR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype ADC_PTCR_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype ADC_PTCR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype ADC_PTCR_TXTDIS_Field is Interfaces.SAM.Bit;
   subtype ADC_PTCR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype ADC_PTCR_RXCBDIS_Field is Interfaces.SAM.Bit;
   subtype ADC_PTCR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype ADC_PTCR_TXCBDIS_Field is Interfaces.SAM.Bit;
   subtype ADC_PTCR_ERRCLR_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register
   type ADC_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : ADC_PTCR_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : ADC_PTCR_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : ADC_PTCR_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : ADC_PTCR_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : ADC_PTCR_RXCBEN_Field := 16#0#;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : ADC_PTCR_RXCBDIS_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : ADC_PTCR_TXCBEN_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : ADC_PTCR_TXCBDIS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : ADC_PTCR_ERRCLR_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      RXCBDIS        at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      TXCBDIS        at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ERRCLR         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ADC_PTSR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype ADC_PTSR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype ADC_PTSR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype ADC_PTSR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype ADC_PTSR_ERR_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register
   type ADC_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : ADC_PTSR_RXTEN_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : ADC_PTSR_TXTEN_Field;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7;
      --  Read-only. Receiver Transfer Enable
      RXCBEN         : ADC_PTSR_RXCBEN_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit;
      --  Read-only. Transmitter Transfer Enable
      TXCBEN         : ADC_PTSR_TXCBEN_Field;
      --  unspecified
      Reserved_19_23 : Interfaces.SAM.UInt5;
      --  Read-only. Transfer Bus Error (clear on read)
      ERR            : ADC_PTSR_ERR_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_PTSR_Register use record
      RXTEN          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TXTEN          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      ERR            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog-to-Digital Converter
   type ADC_Peripheral is record
      --  Control Register
      CR    : aliased ADC_CR_Register;
      --  Mode Register
      MR    : aliased ADC_MR_Register;
      --  Channel Sequence Register 1
      SEQR1 : aliased ADC_SEQR1_Register;
      --  Channel Enable Register
      CHER  : aliased ADC_CHER_Register;
      --  Channel Disable Register
      CHDR  : aliased ADC_CHDR_Register;
      --  Channel Status Register
      CHSR  : aliased ADC_CHSR_Register;
      --  Last Converted Data Register
      LCDR  : aliased ADC_LCDR_Register;
      --  Interrupt Enable Register
      IER   : aliased ADC_IER_Register;
      --  Interrupt Disable Register
      IDR   : aliased ADC_IDR_Register;
      --  Interrupt Mask Register
      IMR   : aliased ADC_IMR_Register;
      --  Interrupt Status Register
      ISR   : aliased ADC_ISR_Register;
      --  Last Channel Trigger Mode Register
      LCTMR : aliased ADC_LCTMR_Register;
      --  Last Channel Compare Window Register
      LCCWR : aliased ADC_LCCWR_Register;
      --  Overrun Status Register
      OVER  : aliased ADC_OVER_Register;
      --  Extended Mode Register
      EMR   : aliased ADC_EMR_Register;
      --  Compare Window Register
      CWR   : aliased ADC_CWR_Register;
      --  Channel Offset Register
      COR   : aliased ADC_COR_Register;
      --  Channel Data Register
      CDR   : aliased ADC_CDR_Registers;
      --  Write Protection Mode Register
      WPMR  : aliased ADC_WPMR_Register;
      --  Write Protection Status Register
      WPSR  : aliased ADC_WPSR_Register;
      --  Receive Pointer Register
      RPR   : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR   : aliased ADC_RCR_Register;
      --  Receive Next Pointer Register
      RNPR  : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR  : aliased ADC_RNCR_Register;
      --  Transfer Control Register
      PTCR  : aliased ADC_PTCR_Register;
      --  Transfer Status Register
      PTSR  : aliased ADC_PTSR_Register;
   end record
     with Volatile;

   for ADC_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      MR    at 16#4# range 0 .. 31;
      SEQR1 at 16#8# range 0 .. 31;
      CHER  at 16#10# range 0 .. 31;
      CHDR  at 16#14# range 0 .. 31;
      CHSR  at 16#18# range 0 .. 31;
      LCDR  at 16#20# range 0 .. 31;
      IER   at 16#24# range 0 .. 31;
      IDR   at 16#28# range 0 .. 31;
      IMR   at 16#2C# range 0 .. 31;
      ISR   at 16#30# range 0 .. 31;
      LCTMR at 16#34# range 0 .. 31;
      LCCWR at 16#38# range 0 .. 31;
      OVER  at 16#3C# range 0 .. 31;
      EMR   at 16#40# range 0 .. 31;
      CWR   at 16#44# range 0 .. 31;
      COR   at 16#4C# range 0 .. 31;
      CDR   at 16#50# range 0 .. 255;
      WPMR  at 16#E4# range 0 .. 31;
      WPSR  at 16#E8# range 0 .. 31;
      RPR   at 16#100# range 0 .. 31;
      RCR   at 16#104# range 0 .. 31;
      RNPR  at 16#110# range 0 .. 31;
      RNCR  at 16#114# range 0 .. 31;
      PTCR  at 16#120# range 0 .. 31;
      PTSR  at 16#124# range 0 .. 31;
   end record;

   --  Analog-to-Digital Converter
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => ADC_Base;

end Interfaces.SAM.ADC;
