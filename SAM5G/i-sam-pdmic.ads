--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

package Interfaces.SAM.PDMIC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype PDMIC0_CR_SWRST_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_CR_ENPDM_Field is Interfaces.SAM.Bit;

   --  Control Register
   type PDMIC0_CR_Register is record
      --  Software Reset
      SWRST         : PDMIC0_CR_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_1_3  : Interfaces.SAM.UInt3 := 16#0#;
      --  Enable PDM
      ENPDM         : PDMIC0_CR_ENPDM_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.SAM.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      ENPDM         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype PDMIC0_MR_PRESCAL_Field is Interfaces.SAM.UInt7;

   --  Mode Register
   type PDMIC0_MR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte := 16#0#;
      --  Prescaler Rate Selection
      PRESCAL        : PDMIC0_MR_PRESCAL_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.SAM.UInt17 := 16#1E0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_MR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PRESCAL        at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype PDMIC0_IER_DRDY_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_IER_OVRE_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_IER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_IER_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type PDMIC0_IER_Register is record
      --  unspecified
      Reserved_0_23  : Interfaces.SAM.UInt24 := 16#0#;
      --  Write-only. Data Ready Interrupt Enable
      DRDY           : PDMIC0_IER_DRDY_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : PDMIC0_IER_OVRE_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : PDMIC0_IER_ENDRX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : PDMIC0_IER_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_IER_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      DRDY           at 0 range 24 .. 24;
      OVRE           at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype PDMIC0_IDR_DRDY_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_IDR_OVRE_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_IDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_IDR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type PDMIC0_IDR_Register is record
      --  unspecified
      Reserved_0_23  : Interfaces.SAM.UInt24 := 16#0#;
      --  Write-only. Data Ready Interrupt Disable
      DRDY           : PDMIC0_IDR_DRDY_Field := 16#0#;
      --  Write-only. General Overrun Error Interrupt Disable
      OVRE           : PDMIC0_IDR_OVRE_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : PDMIC0_IDR_ENDRX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : PDMIC0_IDR_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_IDR_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      DRDY           at 0 range 24 .. 24;
      OVRE           at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype PDMIC0_IMR_DRDY_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_IMR_OVRE_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_IMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_IMR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type PDMIC0_IMR_Register is record
      --  unspecified
      Reserved_0_23  : Interfaces.SAM.UInt24;
      --  Read-only. Data Ready Interrupt Mask
      DRDY           : PDMIC0_IMR_DRDY_Field;
      --  Read-only. General Overrun Error Interrupt Mask
      OVRE           : PDMIC0_IMR_OVRE_Field;
      --  unspecified
      Reserved_26_26 : Interfaces.SAM.Bit;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : PDMIC0_IMR_ENDRX_Field;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : PDMIC0_IMR_RXBUFF_Field;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_IMR_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      DRDY           at 0 range 24 .. 24;
      OVRE           at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype PDMIC0_ISR_FIFOCNT_Field is Interfaces.SAM.Byte;
   subtype PDMIC0_ISR_DRDY_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_ISR_OVRE_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_ISR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_ISR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Status Register
   type PDMIC0_ISR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.SAM.UInt16;
      --  Read-only. FIFO Count
      FIFOCNT        : PDMIC0_ISR_FIFOCNT_Field;
      --  Read-only. Data Ready
      DRDY           : PDMIC0_ISR_DRDY_Field;
      --  Read-only. Overrun Error
      OVRE           : PDMIC0_ISR_OVRE_Field;
      --  unspecified
      Reserved_26_26 : Interfaces.SAM.Bit;
      --  Read-only. End of RX Buffer
      ENDRX          : PDMIC0_ISR_ENDRX_Field;
      --  Read-only. RX Buffer Full
      RXBUFF         : PDMIC0_ISR_RXBUFF_Field;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_ISR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      FIFOCNT        at 0 range 16 .. 23;
      DRDY           at 0 range 24 .. 24;
      OVRE           at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      ENDRX          at 0 range 27 .. 27;
      RXBUFF         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype PDMIC0_DSPR0_HPFBYP_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_DSPR0_SINBYP_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_DSPR0_SIZE_Field is Interfaces.SAM.Bit;

   --  Oversampling Ratio
   type DSPR0_OSR_Field is
     (--  Oversampling ratio is 128
      Val_128,
      --  Oversampling ratio is 64
      Val_64)
     with Size => 3;
   for DSPR0_OSR_Field use
     (Val_128 => 0,
      Val_64 => 1);

   subtype PDMIC0_DSPR0_SCALE_Field is Interfaces.SAM.UInt4;
   subtype PDMIC0_DSPR0_SHIFT_Field is Interfaces.SAM.UInt4;

   --  DSP Configuration Register 0
   type PDMIC0_DSPR0_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.SAM.Bit := 16#0#;
      --  High-Pass Filter Bypass
      HPFBYP         : PDMIC0_DSPR0_HPFBYP_Field := 16#0#;
      --  SINCC Filter Bypass
      SINBYP         : PDMIC0_DSPR0_SINBYP_Field := 16#0#;
      --  Data Size
      SIZE           : PDMIC0_DSPR0_SIZE_Field := 16#0#;
      --  Oversampling Ratio
      OSR            : DSPR0_OSR_Field := Interfaces.SAM.PDMIC.Val_128;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Data Scale
      SCALE          : PDMIC0_DSPR0_SCALE_Field := 16#0#;
      --  Data Shift
      SHIFT          : PDMIC0_DSPR0_SHIFT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_DSPR0_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      HPFBYP         at 0 range 1 .. 1;
      SINBYP         at 0 range 2 .. 2;
      SIZE           at 0 range 3 .. 3;
      OSR            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SCALE          at 0 range 8 .. 11;
      SHIFT          at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PDMIC0_DSPR1_DGAIN_Field is Interfaces.SAM.UInt15;
   subtype PDMIC0_DSPR1_OFFSET_Field is Interfaces.SAM.UInt16;

   --  DSP Configuration Register 1
   type PDMIC0_DSPR1_Register is record
      --  Gain Correction
      DGAIN          : PDMIC0_DSPR1_DGAIN_Field := 16#1#;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit := 16#0#;
      --  Offset Correction
      OFFSET         : PDMIC0_DSPR1_OFFSET_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_DSPR1_Register use record
      DGAIN          at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      OFFSET         at 0 range 16 .. 31;
   end record;

   subtype PDMIC0_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protect Key
   type WPMR_WPKEY_Field is
     (--  Reset value for the field
      WPMR_WPKEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit.Always reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (WPMR_WPKEY_Field_Reset => 0,
      PASSWD => 4277315);

   --  Write Protection Mode Register
   type PDMIC0_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : PDMIC0_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protect Key
      WPKEY        : WPMR_WPKEY_Field := WPMR_WPKEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype PDMIC0_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_WPSR_WPVSRC_Field is Interfaces.SAM.UInt16;

   --  Write Protection Status Register
   type PDMIC0_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : PDMIC0_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : PDMIC0_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PDMIC0_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type PDMIC0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : PDMIC0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PDMIC0_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type PDMIC0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : PDMIC0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PDMIC0_PTCR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTCR_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTCR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTCR_TXTDIS_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTCR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTCR_RXCBDIS_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTCR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTCR_TXCBDIS_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTCR_ERRCLR_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register
   type PDMIC0_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : PDMIC0_PTCR_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : PDMIC0_PTCR_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : PDMIC0_PTCR_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : PDMIC0_PTCR_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : PDMIC0_PTCR_RXCBEN_Field := 16#0#;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : PDMIC0_PTCR_RXCBDIS_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : PDMIC0_PTCR_TXCBEN_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : PDMIC0_PTCR_TXCBDIS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : PDMIC0_PTCR_ERRCLR_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_PTCR_Register use record
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

   subtype PDMIC0_PTSR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTSR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTSR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTSR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype PDMIC0_PTSR_ERR_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register
   type PDMIC0_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : PDMIC0_PTSR_RXTEN_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : PDMIC0_PTSR_TXTEN_Field;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7;
      --  Read-only. Receiver Transfer Enable
      RXCBEN         : PDMIC0_PTSR_RXCBEN_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit;
      --  Read-only. Transmitter Transfer Enable
      TXCBEN         : PDMIC0_PTSR_TXCBEN_Field;
      --  unspecified
      Reserved_19_23 : Interfaces.SAM.UInt5;
      --  Read-only. Transfer Bus Error (clear on read)
      ERR            : PDMIC0_PTSR_ERR_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMIC0_PTSR_Register use record
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

   --  Pulse Density Modulation Interface Controller 0
   type PDMIC_Peripheral is record
      --  Control Register
      CR    : aliased PDMIC0_CR_Register;
      --  Mode Register
      MR    : aliased PDMIC0_MR_Register;
      --  Converted Data Register
      CDR   : aliased Interfaces.SAM.UInt32;
      --  Interrupt Enable Register
      IER   : aliased PDMIC0_IER_Register;
      --  Interrupt Disable Register
      IDR   : aliased PDMIC0_IDR_Register;
      --  Interrupt Mask Register
      IMR   : aliased PDMIC0_IMR_Register;
      --  Interrupt Status Register
      ISR   : aliased PDMIC0_ISR_Register;
      --  DSP Configuration Register 0
      DSPR0 : aliased PDMIC0_DSPR0_Register;
      --  DSP Configuration Register 1
      DSPR1 : aliased PDMIC0_DSPR1_Register;
      --  Write Protection Mode Register
      WPMR  : aliased PDMIC0_WPMR_Register;
      --  Write Protection Status Register
      WPSR  : aliased PDMIC0_WPSR_Register;
      --  Receive Pointer Register
      RPR   : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR   : aliased PDMIC0_RCR_Register;
      --  Receive Next Pointer Register
      RNPR  : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR  : aliased PDMIC0_RNCR_Register;
      --  Transfer Control Register
      PTCR  : aliased PDMIC0_PTCR_Register;
      --  Transfer Status Register
      PTSR  : aliased PDMIC0_PTSR_Register;
   end record
     with Volatile;

   for PDMIC_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      MR    at 16#4# range 0 .. 31;
      CDR   at 16#14# range 0 .. 31;
      IER   at 16#18# range 0 .. 31;
      IDR   at 16#1C# range 0 .. 31;
      IMR   at 16#20# range 0 .. 31;
      ISR   at 16#24# range 0 .. 31;
      DSPR0 at 16#58# range 0 .. 31;
      DSPR1 at 16#5C# range 0 .. 31;
      WPMR  at 16#E4# range 0 .. 31;
      WPSR  at 16#E8# range 0 .. 31;
      RPR   at 16#100# range 0 .. 31;
      RCR   at 16#104# range 0 .. 31;
      RNPR  at 16#110# range 0 .. 31;
      RNCR  at 16#114# range 0 .. 31;
      PTCR  at 16#120# range 0 .. 31;
      PTSR  at 16#124# range 0 .. 31;
   end record;

   --  Pulse Density Modulation Interface Controller 0
   PDMIC0_Periph : aliased PDMIC_Peripheral
     with Import, Address => PDMIC0_Base;

   --  Pulse Density Modulation Interface Controller 1
   PDMIC1_Periph : aliased PDMIC_Peripheral
     with Import, Address => PDMIC1_Base;

end Interfaces.SAM.PDMIC;
