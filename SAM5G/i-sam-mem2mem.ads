--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  Memory to Memory
package Interfaces.SAM.MEM2MEM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Transfer Size
   type MR_TSIZE_Field is
     (--  The buffer size is defined in byte.
      T_8BIT,
      --  The buffer size is defined in half-word (16-bit).
      T_16BIT,
      --  The buffer size is defined in word (32-bit). Default value.
      T_32BIT)
     with Size => 2;
   for MR_TSIZE_Field use
     (T_8BIT => 0,
      T_16BIT => 1,
      T_32BIT => 2);

   --  Memory to Memory Mode Register
   type MEM2MEM_MR_Register is record
      --  Transfer Size
      TSIZE         : MR_TSIZE_Field := Interfaces.SAM.MEM2MEM.T_32BIT;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM2MEM_MR_Register use record
      TSIZE         at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype MEM2MEM_IER_RXEND_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_IER_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Memory to Memory Interrupt Enable Register
   type MEM2MEM_IER_Register is record
      --  Write-only. End of Transfer Interrupt Enable
      RXEND         : MEM2MEM_IER_RXEND_Field := 16#0#;
      --  Write-only. Buffer Full Interrupt Enable
      RXBUFF        : MEM2MEM_IER_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM2MEM_IER_Register use record
      RXEND         at 0 range 0 .. 0;
      RXBUFF        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype MEM2MEM_IDR_RXEND_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_IDR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Memory to Memory Interrupt Disable Register
   type MEM2MEM_IDR_Register is record
      --  Write-only. End of Transfer Interrupt Disable
      RXEND         : MEM2MEM_IDR_RXEND_Field := 16#0#;
      --  Write-only. Buffer Full Interrupt Disable
      RXBUFF        : MEM2MEM_IDR_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM2MEM_IDR_Register use record
      RXEND         at 0 range 0 .. 0;
      RXBUFF        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype MEM2MEM_IMR_RXEND_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_IMR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Memory to Memory Interrupt Mask Register
   type MEM2MEM_IMR_Register is record
      --  Read-only. End of Transfer Interrupt Mask
      RXEND         : MEM2MEM_IMR_RXEND_Field;
      --  Read-only. Buffer Full Interrupt Mask
      RXBUFF        : MEM2MEM_IMR_RXBUFF_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM2MEM_IMR_Register use record
      RXEND         at 0 range 0 .. 0;
      RXBUFF        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype MEM2MEM_ISR_RXEND_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_ISR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Memory to Memory Interrupt Status Register
   type MEM2MEM_ISR_Register is record
      --  Read-only. End of Transfer
      RXEND         : MEM2MEM_ISR_RXEND_Field;
      --  Read-only. Buffer Full
      RXBUFF        : MEM2MEM_ISR_RXBUFF_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM2MEM_ISR_Register use record
      RXEND         at 0 range 0 .. 0;
      RXBUFF        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype MEM2MEM_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type MEM2MEM_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : MEM2MEM_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM2MEM_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MEM2MEM_TCR_TXCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Counter Register
   type MEM2MEM_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : MEM2MEM_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM2MEM_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MEM2MEM_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type MEM2MEM_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : MEM2MEM_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM2MEM_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MEM2MEM_TNCR_TXNCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Next Counter Register
   type MEM2MEM_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : MEM2MEM_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM2MEM_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MEM2MEM_PTCR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTCR_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTCR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTCR_TXTDIS_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTCR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTCR_RXCBDIS_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTCR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTCR_TXCBDIS_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTCR_ERRCLR_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register
   type MEM2MEM_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : MEM2MEM_PTCR_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : MEM2MEM_PTCR_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : MEM2MEM_PTCR_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : MEM2MEM_PTCR_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : MEM2MEM_PTCR_RXCBEN_Field := 16#0#;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : MEM2MEM_PTCR_RXCBDIS_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : MEM2MEM_PTCR_TXCBEN_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : MEM2MEM_PTCR_TXCBDIS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : MEM2MEM_PTCR_ERRCLR_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM2MEM_PTCR_Register use record
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

   subtype MEM2MEM_PTSR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTSR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTSR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTSR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype MEM2MEM_PTSR_ERR_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register
   type MEM2MEM_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : MEM2MEM_PTSR_RXTEN_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : MEM2MEM_PTSR_TXTEN_Field;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7;
      --  Read-only. Receiver Transfer Enable
      RXCBEN         : MEM2MEM_PTSR_RXCBEN_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit;
      --  Read-only. Transmitter Transfer Enable
      TXCBEN         : MEM2MEM_PTSR_TXCBEN_Field;
      --  unspecified
      Reserved_19_23 : Interfaces.SAM.UInt5;
      --  Read-only. Transfer Bus Error (clear on read)
      ERR            : MEM2MEM_PTSR_ERR_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM2MEM_PTSR_Register use record
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

   --  Memory to Memory
   type MEM2MEM_Peripheral is record
      --  Memory to Memory Transfer Holding Register
      THR  : aliased Interfaces.SAM.UInt32;
      --  Memory to Memory Mode Register
      MR   : aliased MEM2MEM_MR_Register;
      --  Memory to Memory Interrupt Enable Register
      IER  : aliased MEM2MEM_IER_Register;
      --  Memory to Memory Interrupt Disable Register
      IDR  : aliased MEM2MEM_IDR_Register;
      --  Memory to Memory Interrupt Mask Register
      IMR  : aliased MEM2MEM_IMR_Register;
      --  Memory to Memory Interrupt Status Register
      ISR  : aliased MEM2MEM_ISR_Register;
      --  Receive Pointer Register
      RPR  : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR  : aliased MEM2MEM_RCR_Register;
      --  Transmit Pointer Register
      TPR  : aliased Interfaces.SAM.UInt32;
      --  Transmit Counter Register
      TCR  : aliased MEM2MEM_TCR_Register;
      --  Receive Next Pointer Register
      RNPR : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased MEM2MEM_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased Interfaces.SAM.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased MEM2MEM_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased MEM2MEM_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased MEM2MEM_PTSR_Register;
   end record
     with Volatile;

   for MEM2MEM_Peripheral use record
      THR  at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      IER  at 16#8# range 0 .. 31;
      IDR  at 16#C# range 0 .. 31;
      IMR  at 16#10# range 0 .. 31;
      ISR  at 16#14# range 0 .. 31;
      RPR  at 16#100# range 0 .. 31;
      RCR  at 16#104# range 0 .. 31;
      TPR  at 16#108# range 0 .. 31;
      TCR  at 16#10C# range 0 .. 31;
      RNPR at 16#110# range 0 .. 31;
      RNCR at 16#114# range 0 .. 31;
      TNPR at 16#118# range 0 .. 31;
      TNCR at 16#11C# range 0 .. 31;
      PTCR at 16#120# range 0 .. 31;
      PTSR at 16#124# range 0 .. 31;
   end record;

   --  Memory to Memory
   MEM2MEM_Periph : aliased MEM2MEM_Peripheral
     with Import, Address => MEM2MEM_Base;

end Interfaces.SAM.MEM2MEM;
