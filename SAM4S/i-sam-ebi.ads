--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM4SD32C.svd


with System;

package Interfaces.SAM.EBI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SETUP_NWE_SETUP_Field is Interfaces.SAM.UInt6;
   subtype SETUP_NCS_WR_SETUP_Field is Interfaces.SAM.UInt6;
   subtype SETUP_NRD_SETUP_Field is Interfaces.SAM.UInt6;
   subtype SETUP_NCS_RD_SETUP_Field is Interfaces.SAM.UInt6;

   --  SMC Setup Register (CS_number = 0)
   type SETUP_Register is record
      --  NWE Setup Length
      NWE_SETUP      : SETUP_NWE_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2 := 16#0#;
      --  NCS Setup Length in WRITE Access
      NCS_WR_SETUP   : SETUP_NCS_WR_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2 := 16#0#;
      --  NRD Setup Length
      NRD_SETUP      : SETUP_NRD_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  NCS Setup Length in READ Access
      NCS_RD_SETUP   : SETUP_NCS_RD_SETUP_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SETUP_Register use record
      NWE_SETUP      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NCS_WR_SETUP   at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      NRD_SETUP      at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      NCS_RD_SETUP   at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype PULSE_NWE_PULSE_Field is Interfaces.SAM.UInt7;
   subtype PULSE_NCS_WR_PULSE_Field is Interfaces.SAM.UInt7;
   subtype PULSE_NRD_PULSE_Field is Interfaces.SAM.UInt7;
   subtype PULSE_NCS_RD_PULSE_Field is Interfaces.SAM.UInt7;

   --  SMC Pulse Register (CS_number = 0)
   type PULSE_Register is record
      --  NWE Pulse Length
      NWE_PULSE      : PULSE_NWE_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  NCS Pulse Length in WRITE Access
      NCS_WR_PULSE   : PULSE_NCS_WR_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit := 16#0#;
      --  NRD Pulse Length
      NRD_PULSE      : PULSE_NRD_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit := 16#0#;
      --  NCS Pulse Length in READ Access
      NCS_RD_PULSE   : PULSE_NCS_RD_PULSE_Field := 16#1#;
      --  unspecified
      Reserved_31_31 : Interfaces.SAM.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PULSE_Register use record
      NWE_PULSE      at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NCS_WR_PULSE   at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      NRD_PULSE      at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      NCS_RD_PULSE   at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CYCLE_NWE_CYCLE_Field is Interfaces.SAM.UInt9;
   subtype CYCLE_NRD_CYCLE_Field is Interfaces.SAM.UInt9;

   --  SMC Cycle Register (CS_number = 0)
   type CYCLE_Register is record
      --  Total Write Cycle Length
      NWE_CYCLE      : CYCLE_NWE_CYCLE_Field := 16#3#;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7 := 16#0#;
      --  Total Read Cycle Length
      NRD_CYCLE      : CYCLE_NRD_CYCLE_Field := 16#3#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CYCLE_Register use record
      NWE_CYCLE      at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      NRD_CYCLE      at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype MODE_READ_MODE_Field is Interfaces.SAM.Bit;
   subtype MODE_WRITE_MODE_Field is Interfaces.SAM.Bit;

   --  NWAIT Mode
   type MODE0_EXNW_MODE_Field is
     (--  Disabled
      DISABLED,
      --  Frozen Mode
      FROZEN,
      --  Ready Mode
      READY)
     with Size => 2;
   for MODE0_EXNW_MODE_Field use
     (DISABLED => 0,
      FROZEN => 2,
      READY => 3);

   subtype MODE_TDF_CYCLES_Field is Interfaces.SAM.UInt4;
   subtype MODE_TDF_MODE_Field is Interfaces.SAM.Bit;
   subtype MODE_PMEN_Field is Interfaces.SAM.Bit;

   --  Page Size
   type MODE0_PS_Field is
     (--  4-byte page
      Val_4_BYTE,
      --  8-byte page
      Val_8_BYTE,
      --  16-byte page
      Val_16_BYTE,
      --  32-byte page
      Val_32_BYTE)
     with Size => 2;
   for MODE0_PS_Field use
     (Val_4_BYTE => 0,
      Val_8_BYTE => 1,
      Val_16_BYTE => 2,
      Val_32_BYTE => 3);

   --  SMC Mode Register (CS_number = 0)
   type MODE_Register is record
      READ_MODE      : MODE_READ_MODE_Field := 16#1#;
      WRITE_MODE     : MODE_WRITE_MODE_Field := 16#1#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  NWAIT Mode
      EXNW_MODE      : MODE0_EXNW_MODE_Field := Interfaces.SAM.EBI.DISABLED;
      --  unspecified
      Reserved_6_15  : Interfaces.SAM.UInt10 := 16#0#;
      --  Data Float Time
      TDF_CYCLES     : MODE_TDF_CYCLES_Field := 16#0#;
      --  TDF Optimization
      TDF_MODE       : MODE_TDF_MODE_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.SAM.UInt3 := 16#0#;
      --  Page Mode Enabled
      PMEN           : MODE_PMEN_Field := 16#0#;
      --  unspecified
      Reserved_25_27 : Interfaces.SAM.UInt3 := 16#0#;
      --  Page Size
      PS             : MODE0_PS_Field := Interfaces.SAM.EBI.Val_8_BYTE;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      READ_MODE      at 0 range 0 .. 0;
      WRITE_MODE     at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      EXNW_MODE      at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      TDF_CYCLES     at 0 range 16 .. 19;
      TDF_MODE       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PMEN           at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      PS             at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SMC_OCMS_SMSE_Field is Interfaces.SAM.Bit;
   subtype SMC_OCMS_CS0SE_Field is Interfaces.SAM.Bit;
   subtype SMC_OCMS_CS1SE_Field is Interfaces.SAM.Bit;
   subtype SMC_OCMS_CS2SE_Field is Interfaces.SAM.Bit;
   subtype SMC_OCMS_CS3SE_Field is Interfaces.SAM.Bit;

   --  SMC OCMS MODE Register
   type SMC_OCMS_Register is record
      --  Static Memory Controller Scrambling Enable
      SMSE           : SMC_OCMS_SMSE_Field := 16#0#;
      --  unspecified
      Reserved_1_15  : Interfaces.SAM.UInt15 := 16#0#;
      --  Chip Select (x = 0 to 3) Scrambling Enable
      CS0SE          : SMC_OCMS_CS0SE_Field := 16#0#;
      --  Chip Select (x = 0 to 3) Scrambling Enable
      CS1SE          : SMC_OCMS_CS1SE_Field := 16#0#;
      --  Chip Select (x = 0 to 3) Scrambling Enable
      CS2SE          : SMC_OCMS_CS2SE_Field := 16#0#;
      --  Chip Select (x = 0 to 3) Scrambling Enable
      CS3SE          : SMC_OCMS_CS3SE_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_OCMS_Register use record
      SMSE           at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      CS0SE          at 0 range 16 .. 16;
      CS1SE          at 0 range 17 .. 17;
      CS2SE          at 0 range 18 .. 18;
      CS3SE          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SMC_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype SMC_WPMR_WPKEY_Field is Interfaces.SAM.UInt24;

   --  SMC Write Protect Mode Register
   type SMC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : SMC_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : SMC_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype SMC_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype SMC_WPSR_WPVSRC_Field is Interfaces.SAM.UInt16;

   --  SMC Write Protect Status Register
   type SMC_WPSR_Register is record
      --  Read-only. Write Protect Enable
      WPVS           : SMC_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : SMC_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Static Memory Controller
   type SMC_Peripheral is record
      --  SMC Setup Register (CS_number = 0)
      SETUP0 : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 0)
      PULSE0 : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 0)
      CYCLE0 : aliased CYCLE_Register;
      --  SMC Mode Register (CS_number = 0)
      MODE0  : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 1)
      SETUP1 : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 1)
      PULSE1 : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 1)
      CYCLE1 : aliased CYCLE_Register;
      --  SMC Mode Register (CS_number = 1)
      MODE1  : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 2)
      SETUP2 : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 2)
      PULSE2 : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 2)
      CYCLE2 : aliased CYCLE_Register;
      --  SMC Mode Register (CS_number = 2)
      MODE2  : aliased MODE_Register;
      --  SMC Setup Register (CS_number = 3)
      SETUP3 : aliased SETUP_Register;
      --  SMC Pulse Register (CS_number = 3)
      PULSE3 : aliased PULSE_Register;
      --  SMC Cycle Register (CS_number = 3)
      CYCLE3 : aliased CYCLE_Register;
      --  SMC Mode Register (CS_number = 3)
      MODE3  : aliased MODE_Register;
      --  SMC OCMS MODE Register
      OCMS   : aliased SMC_OCMS_Register;
      --  SMC OCMS KEY1 Register
      KEY1   : aliased Interfaces.SAM.UInt32;
      --  SMC OCMS KEY2 Register
      KEY2   : aliased Interfaces.SAM.UInt32;
      --  SMC Write Protect Mode Register
      WPMR   : aliased SMC_WPMR_Register;
      --  SMC Write Protect Status Register
      WPSR   : aliased SMC_WPSR_Register;
   end record
     with Volatile;

   for SMC_Peripheral use record
      SETUP0 at 16#0# range 0 .. 31;
      PULSE0 at 16#4# range 0 .. 31;
      CYCLE0 at 16#8# range 0 .. 31;
      MODE0  at 16#C# range 0 .. 31;
      SETUP1 at 16#10# range 0 .. 31;
      PULSE1 at 16#14# range 0 .. 31;
      CYCLE1 at 16#18# range 0 .. 31;
      MODE1  at 16#1C# range 0 .. 31;
      SETUP2 at 16#20# range 0 .. 31;
      PULSE2 at 16#24# range 0 .. 31;
      CYCLE2 at 16#28# range 0 .. 31;
      MODE2  at 16#2C# range 0 .. 31;
      SETUP3 at 16#30# range 0 .. 31;
      PULSE3 at 16#34# range 0 .. 31;
      CYCLE3 at 16#38# range 0 .. 31;
      MODE3  at 16#3C# range 0 .. 31;
      OCMS   at 16#80# range 0 .. 31;
      KEY1   at 16#84# range 0 .. 31;
      KEY2   at 16#88# range 0 .. 31;
      WPMR   at 16#E4# range 0 .. 31;
      WPSR   at 16#E8# range 0 .. 31;
   end record;

   --  Static Memory Controller
   SMC_Periph : aliased SMC_Peripheral
     with Import, Address => SMC_Base;

end Interfaces.SAM.EBI;
