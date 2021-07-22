--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM4SD32C.svd


with System;

--  Cyclic Redundancy Check Calculation Unit
package Interfaces.SAM.CRCCU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CRCCU_DSCR_DSCR_Field is Interfaces.SAM.UInt23;

   --  CRCCU Descriptor Base Register
   type CRCCU_DSCR_Register is record
      --  unspecified
      Reserved_0_8 : Interfaces.SAM.UInt9 := 16#0#;
      --  Descriptor Base Address
      DSCR         : CRCCU_DSCR_DSCR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DSCR_Register use record
      Reserved_0_8 at 0 range 0 .. 8;
      DSCR         at 0 range 9 .. 31;
   end record;

   subtype CRCCU_DMA_EN_DMAEN_Field is Interfaces.SAM.Bit;

   --  CRCCU DMA Enable Register
   type CRCCU_DMA_EN_Register is record
      --  Write-only. DMA Enable Register
      DMAEN         : CRCCU_DMA_EN_DMAEN_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMA_EN_Register use record
      DMAEN         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_DMA_DIS_DMADIS_Field is Interfaces.SAM.Bit;

   --  CRCCU DMA Disable Register
   type CRCCU_DMA_DIS_Register is record
      --  Write-only. DMA Disable Register
      DMADIS        : CRCCU_DMA_DIS_DMADIS_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMA_DIS_Register use record
      DMADIS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_DMA_SR_DMASR_Field is Interfaces.SAM.Bit;

   --  CRCCU DMA Status Register
   type CRCCU_DMA_SR_Register is record
      --  Read-only. DMA Status Register
      DMASR         : CRCCU_DMA_SR_DMASR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMA_SR_Register use record
      DMASR         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_DMA_IER_DMAIER_Field is Interfaces.SAM.Bit;

   --  CRCCU DMA Interrupt Enable Register
   type CRCCU_DMA_IER_Register is record
      --  Write-only. Interrupt Enable register
      DMAIER        : CRCCU_DMA_IER_DMAIER_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMA_IER_Register use record
      DMAIER        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_DMA_IDR_DMAIDR_Field is Interfaces.SAM.Bit;

   --  CRCCU DMA Interrupt Disable Register
   type CRCCU_DMA_IDR_Register is record
      --  Write-only. Interrupt Disable register
      DMAIDR        : CRCCU_DMA_IDR_DMAIDR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMA_IDR_Register use record
      DMAIDR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_DMA_IMR_DMAIMR_Field is Interfaces.SAM.Bit;

   --  CRCCU DMA Interrupt Mask Register
   type CRCCU_DMA_IMR_Register is record
      --  Read-only. Interrupt Mask Register
      DMAIMR        : CRCCU_DMA_IMR_DMAIMR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMA_IMR_Register use record
      DMAIMR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_DMA_ISR_DMAISR_Field is Interfaces.SAM.Bit;

   --  CRCCU DMA Interrupt Status Register
   type CRCCU_DMA_ISR_Register is record
      --  Read-only. Interrupt Status register
      DMAISR        : CRCCU_DMA_ISR_DMAISR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_DMA_ISR_Register use record
      DMAISR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_CR_RESET_Field is Interfaces.SAM.Bit;

   --  CRCCU Control Register
   type CRCCU_CR_Register is record
      --  Write-only. CRC Computation Reset
      RESET         : CRCCU_CR_RESET_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_CR_Register use record
      RESET         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_MR_ENABLE_Field is Interfaces.SAM.Bit;
   subtype CRCCU_MR_COMPARE_Field is Interfaces.SAM.Bit;

   --  Primitive Polynomial
   type MR_PTYPE_Field is
     (--  Polynom 0x04C11DB7
      CCITT8023,
      --  Polynom 0x1EDC6F41
      CASTAGNOLI,
      --  Polynom 0x1021
      CCITT16)
     with Size => 2;
   for MR_PTYPE_Field use
     (CCITT8023 => 0,
      CASTAGNOLI => 1,
      CCITT16 => 2);

   subtype CRCCU_MR_DIVIDER_Field is Interfaces.SAM.UInt4;

   --  CRCCU Mode Register
   type CRCCU_MR_Register is record
      --  CRC Enable
      ENABLE        : CRCCU_MR_ENABLE_Field := 16#0#;
      --  CRC Compare
      COMPARE       : CRCCU_MR_COMPARE_Field := 16#0#;
      --  Primitive Polynomial
      PTYPE         : MR_PTYPE_Field := Interfaces.SAM.CRCCU.CCITT8023;
      --  Request Divider
      DIVIDER       : CRCCU_MR_DIVIDER_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_MR_Register use record
      ENABLE        at 0 range 0 .. 0;
      COMPARE       at 0 range 1 .. 1;
      PTYPE         at 0 range 2 .. 3;
      DIVIDER       at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CRCCU_IER_ERRIER_Field is Interfaces.SAM.Bit;

   --  CRCCU Interrupt Enable Register
   type CRCCU_IER_Register is record
      --  Write-only. CRC Error Interrupt Enable
      ERRIER        : CRCCU_IER_ERRIER_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_IER_Register use record
      ERRIER        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_IDR_ERRIDR_Field is Interfaces.SAM.Bit;

   --  CRCCU Interrupt Disable Register
   type CRCCU_IDR_Register is record
      --  Write-only. CRC Error Interrupt Disable
      ERRIDR        : CRCCU_IDR_ERRIDR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_IDR_Register use record
      ERRIDR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_IMR_ERRIMR_Field is Interfaces.SAM.Bit;

   --  CRCCU Interrupt Mask Register
   type CRCCU_IMR_Register is record
      --  Read-only. CRC Error Interrupt Mask
      ERRIMR        : CRCCU_IMR_ERRIMR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_IMR_Register use record
      ERRIMR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CRCCU_ISR_ERRISR_Field is Interfaces.SAM.Bit;

   --  CRCCU Interrupt Status Register
   type CRCCU_ISR_Register is record
      --  Read-only. CRC Error Interrupt Status
      ERRISR        : CRCCU_ISR_ERRISR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCU_ISR_Register use record
      ERRISR        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cyclic Redundancy Check Calculation Unit
   type CRCCU_Peripheral is record
      --  CRCCU Descriptor Base Register
      DSCR    : aliased CRCCU_DSCR_Register;
      --  CRCCU DMA Enable Register
      DMA_EN  : aliased CRCCU_DMA_EN_Register;
      --  CRCCU DMA Disable Register
      DMA_DIS : aliased CRCCU_DMA_DIS_Register;
      --  CRCCU DMA Status Register
      DMA_SR  : aliased CRCCU_DMA_SR_Register;
      --  CRCCU DMA Interrupt Enable Register
      DMA_IER : aliased CRCCU_DMA_IER_Register;
      --  CRCCU DMA Interrupt Disable Register
      DMA_IDR : aliased CRCCU_DMA_IDR_Register;
      --  CRCCU DMA Interrupt Mask Register
      DMA_IMR : aliased CRCCU_DMA_IMR_Register;
      --  CRCCU DMA Interrupt Status Register
      DMA_ISR : aliased CRCCU_DMA_ISR_Register;
      --  CRCCU Control Register
      CR      : aliased CRCCU_CR_Register;
      --  CRCCU Mode Register
      MR      : aliased CRCCU_MR_Register;
      --  CRCCU Status Register
      SR      : aliased Interfaces.SAM.UInt32;
      --  CRCCU Interrupt Enable Register
      IER     : aliased CRCCU_IER_Register;
      --  CRCCU Interrupt Disable Register
      IDR     : aliased CRCCU_IDR_Register;
      --  CRCCU Interrupt Mask Register
      IMR     : aliased CRCCU_IMR_Register;
      --  CRCCU Interrupt Status Register
      ISR     : aliased CRCCU_ISR_Register;
   end record
     with Volatile;

   for CRCCU_Peripheral use record
      DSCR    at 16#0# range 0 .. 31;
      DMA_EN  at 16#8# range 0 .. 31;
      DMA_DIS at 16#C# range 0 .. 31;
      DMA_SR  at 16#10# range 0 .. 31;
      DMA_IER at 16#14# range 0 .. 31;
      DMA_IDR at 16#18# range 0 .. 31;
      DMA_IMR at 16#1C# range 0 .. 31;
      DMA_ISR at 16#20# range 0 .. 31;
      CR      at 16#34# range 0 .. 31;
      MR      at 16#38# range 0 .. 31;
      SR      at 16#3C# range 0 .. 31;
      IER     at 16#40# range 0 .. 31;
      IDR     at 16#44# range 0 .. 31;
      IMR     at 16#48# range 0 .. 31;
      ISR     at 16#4C# range 0 .. 31;
   end record;

   --  Cyclic Redundancy Check Calculation Unit
   CRCCU_Periph : aliased CRCCU_Peripheral
     with Import, Address => CRCCU_Base;

end Interfaces.SAM.CRCCU;
