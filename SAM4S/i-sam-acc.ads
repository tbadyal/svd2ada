--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM4SD32C.svd


with System;

--  Analog Comparator Controller
package Interfaces.SAM.ACC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype ACC_CR_SWRST_Field is Interfaces.SAM.Bit;

   --  Control Register
   type ACC_CR_Register is record
      --  Write-only. SoftWare ReSeT
      SWRST         : ACC_CR_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SELection for MINUS comparator input
   type MR_SELMINUS_Field is
     (--  SelectTS
      TS,
      --  Select ADVREF
      ADVREF,
      --  Select DAC0
      DAC0,
      --  Select DAC1
      DAC1,
      --  Select AD0
      AD0,
      --  Select AD1
      AD1,
      --  Select AD2
      AD2,
      --  Select AD3
      AD3)
     with Size => 3;
   for MR_SELMINUS_Field use
     (TS => 0,
      ADVREF => 1,
      DAC0 => 2,
      DAC1 => 3,
      AD0 => 4,
      AD1 => 5,
      AD2 => 6,
      AD3 => 7);

   --  SELection for PLUS comparator input
   type MR_SELPLUS_Field is
     (--  Select AD0
      AD0,
      --  Select AD1
      AD1,
      --  Select AD2
      AD2,
      --  Select AD3
      AD3,
      --  Select AD4
      AD4,
      --  Select AD5
      AD5,
      --  Select AD6
      AD6,
      --  Select AD7
      AD7)
     with Size => 3;
   for MR_SELPLUS_Field use
     (AD0 => 0,
      AD1 => 1,
      AD2 => 2,
      AD3 => 3,
      AD4 => 4,
      AD5 => 5,
      AD6 => 6,
      AD7 => 7);

   --  Analog Comparator ENable
   type MR_ACEN_Field is
     (--  Analog Comparator Disabled.
      DIS,
      --  Analog Comparator Enabled.
      EN)
     with Size => 1;
   for MR_ACEN_Field use
     (DIS => 0,
      EN => 1);

   --  EDGE TYPe
   type MR_EDGETYP_Field is
     (--  only rising edge of comparator output
      RISING,
      --  falling edge of comparator output
      FALLING,
      --  any edge of comparator output
      ANY)
     with Size => 2;
   for MR_EDGETYP_Field use
     (RISING => 0,
      FALLING => 1,
      ANY => 2);

   --  INVert comparator output
   type MR_INV_Field is
     (--  Analog Comparator output is directly processed.
      DIS,
      --  Analog Comparator output is inverted prior to being processed.
      EN)
     with Size => 1;
   for MR_INV_Field use
     (DIS => 0,
      EN => 1);

   --  SELection of Fault Source
   type MR_SELFS_Field is
     (--  the CF flag is used to drive the FAULT output.
      CF,
      --  the output of the Analog Comparator flag is used to drive the FAULT output.
      OUTPUT)
     with Size => 1;
   for MR_SELFS_Field use
     (CF => 0,
      OUTPUT => 1);

   --  Fault Enable
   type MR_FE_Field is
     (--  the FAULT output is tied to 0.
      DIS,
      --  the FAULT output is driven by the signal defined by SELFS.
      EN)
     with Size => 1;
   for MR_FE_Field use
     (DIS => 0,
      EN => 1);

   --  Mode Register
   type ACC_MR_Register is record
      --  SELection for MINUS comparator input
      SELMINUS       : MR_SELMINUS_Field := Interfaces.SAM.ACC.TS;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  SELection for PLUS comparator input
      SELPLUS        : MR_SELPLUS_Field := Interfaces.SAM.ACC.AD0;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Analog Comparator ENable
      ACEN           : MR_ACEN_Field := Interfaces.SAM.ACC.DIS;
      --  EDGE TYPe
      EDGETYP        : MR_EDGETYP_Field := Interfaces.SAM.ACC.RISING;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit := 16#0#;
      --  INVert comparator output
      INV            : MR_INV_Field := Interfaces.SAM.ACC.DIS;
      --  SELection of Fault Source
      SELFS          : MR_SELFS_Field := Interfaces.SAM.ACC.CF;
      --  Fault Enable
      FE             : MR_FE_Field := Interfaces.SAM.ACC.DIS;
      --  unspecified
      Reserved_15_31 : Interfaces.SAM.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_MR_Register use record
      SELMINUS       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SELPLUS        at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ACEN           at 0 range 8 .. 8;
      EDGETYP        at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      INV            at 0 range 12 .. 12;
      SELFS          at 0 range 13 .. 13;
      FE             at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype ACC_IER_CE_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type ACC_IER_Register is record
      --  Write-only. Comparison Edge
      CE            : ACC_IER_CE_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_IER_Register use record
      CE            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ACC_IDR_CE_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type ACC_IDR_Register is record
      --  Write-only. Comparison Edge
      CE            : ACC_IDR_CE_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_IDR_Register use record
      CE            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ACC_IMR_CE_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type ACC_IMR_Register is record
      --  Read-only. Comparison Edge
      CE            : ACC_IMR_CE_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_IMR_Register use record
      CE            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ACC_ISR_CE_Field is Interfaces.SAM.Bit;
   subtype ACC_ISR_SCO_Field is Interfaces.SAM.Bit;
   subtype ACC_ISR_MASK_Field is Interfaces.SAM.Bit;

   --  Interrupt Status Register
   type ACC_ISR_Register is record
      --  Read-only. Comparison Edge
      CE            : ACC_ISR_CE_Field;
      --  Read-only. Synchronized Comparator Output
      SCO           : ACC_ISR_SCO_Field;
      --  unspecified
      Reserved_2_30 : Interfaces.SAM.UInt29;
      --  Read-only.
      MASK          : ACC_ISR_MASK_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_ISR_Register use record
      CE            at 0 range 0 .. 0;
      SCO           at 0 range 1 .. 1;
      Reserved_2_30 at 0 range 2 .. 30;
      MASK          at 0 range 31 .. 31;
   end record;

   --  Current SELection
   type ACR_ISEL_Field is
     (--  low power option.
      LOPW,
      --  high speed option.
      HISP)
     with Size => 1;
   for ACR_ISEL_Field use
     (LOPW => 0,
      HISP => 1);

   subtype ACC_ACR_HYST_Field is Interfaces.SAM.UInt2;

   --  Analog Control Register
   type ACC_ACR_Register is record
      --  Current SELection
      ISEL          : ACR_ISEL_Field := Interfaces.SAM.ACC.LOPW;
      --  HYSTeresis selection
      HYST          : ACC_ACR_HYST_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_ACR_Register use record
      ISEL          at 0 range 0 .. 0;
      HYST          at 0 range 1 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ACC_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype ACC_WPMR_WPKEY_Field is Interfaces.SAM.UInt24;

   --  Write Protect Mode Register
   type ACC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : ACC_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : ACC_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype ACC_WPSR_WPROTERR_Field is Interfaces.SAM.Bit;

   --  Write Protect Status Register
   type ACC_WPSR_Register is record
      --  Read-only. Write PROTection ERRor
      WPROTERR      : ACC_WPSR_WPROTERR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_WPSR_Register use record
      WPROTERR      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog Comparator Controller
   type ACC_Peripheral is record
      --  Control Register
      CR   : aliased ACC_CR_Register;
      --  Mode Register
      MR   : aliased ACC_MR_Register;
      --  Interrupt Enable Register
      IER  : aliased ACC_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased ACC_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased ACC_IMR_Register;
      --  Interrupt Status Register
      ISR  : aliased ACC_ISR_Register;
      --  Analog Control Register
      ACR  : aliased ACC_ACR_Register;
      --  Write Protect Mode Register
      WPMR : aliased ACC_WPMR_Register;
      --  Write Protect Status Register
      WPSR : aliased ACC_WPSR_Register;
   end record
     with Volatile;

   for ACC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      IER  at 16#24# range 0 .. 31;
      IDR  at 16#28# range 0 .. 31;
      IMR  at 16#2C# range 0 .. 31;
      ISR  at 16#30# range 0 .. 31;
      ACR  at 16#94# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
      WPSR at 16#E8# range 0 .. 31;
   end record;

   --  Analog Comparator Controller
   ACC_Periph : aliased ACC_Peripheral
     with Import, Address => ACC_Base;

end Interfaces.SAM.ACC;
