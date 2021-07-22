--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  Embedded Flash Controller
package Interfaces.SAM.EFC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype EFC_FMR_FRDY_Field is Interfaces.SAM.Bit;
   subtype EFC_FMR_FWS_Field is Interfaces.SAM.UInt4;
   subtype EFC_FMR_SCOD_Field is Interfaces.SAM.Bit;
   subtype EFC_FMR_FAM_Field is Interfaces.SAM.Bit;
   subtype EFC_FMR_CLOE_Field is Interfaces.SAM.Bit;

   --  EEFC Flash Mode Register
   type EFC_FMR_Register is record
      --  Flash Ready Interrupt Enable
      FRDY           : EFC_FMR_FRDY_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7 := 16#0#;
      --  Flash Wait State
      FWS            : EFC_FMR_FWS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4 := 16#0#;
      --  Sequential Code Optimization Disable
      SCOD           : EFC_FMR_SCOD_Field := 16#0#;
      --  unspecified
      Reserved_17_23 : Interfaces.SAM.UInt7 := 16#0#;
      --  Flash Access Mode
      FAM            : EFC_FMR_FAM_Field := 16#0#;
      --  unspecified
      Reserved_25_25 : Interfaces.SAM.Bit := 16#0#;
      --  Code Loop Optimization Enable
      CLOE           : EFC_FMR_CLOE_Field := 16#1#;
      --  unspecified
      Reserved_27_31 : Interfaces.SAM.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_FMR_Register use record
      FRDY           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      FWS            at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SCOD           at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      FAM            at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      CLOE           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Flash Command
   type FCR_FCMD_Field is
     (--  Get Flash descriptor
      GETD,
      --  Write page
      WP,
      --  Write page and lock
      WPL,
      --  Erase page and write page
      EWP,
      --  Erase page and write page then lock
      EWPL,
      --  Erase all
      EA,
      --  Erase pages
      EPA,
      --  Set lock bit
      SLB,
      --  Clear lock bit
      CLB,
      --  Get lock bit
      GLB,
      --  Set GPNVM bit
      SGPB,
      --  Clear GPNVM bit
      CGPB,
      --  Get GPNVM bit
      GGPB,
      --  Start read unique identifier
      STUI,
      --  Stop read unique identifier
      SPUI,
      --  Get CALIB bit
      GCALB,
      --  Erase sector
      ES,
      --  Write user signature
      WUS,
      --  Erase user signature
      EUS,
      --  Start read user signature
      STUS,
      --  Stop read user signature
      SPUS)
     with Size => 8;
   for FCR_FCMD_Field use
     (GETD => 0,
      WP => 1,
      WPL => 2,
      EWP => 3,
      EWPL => 4,
      EA => 5,
      EPA => 7,
      SLB => 8,
      CLB => 9,
      GLB => 10,
      SGPB => 11,
      CGPB => 12,
      GGPB => 13,
      STUI => 14,
      SPUI => 15,
      GCALB => 16,
      ES => 17,
      WUS => 18,
      EUS => 19,
      STUS => 20,
      SPUS => 21);

   subtype EFC_FCR_FARG_Field is Interfaces.SAM.UInt16;

   --  Flash Writing Protection Key
   type FCR_FKEY_Field is
     (--  Reset value for the field
      FCR_FKEY_Field_Reset,
      --  The 0x5A value enables the command defined by the bits of the register. If
--  the field is written with a different value, the write is not performed and
--  no action is started.
      PASSWD)
     with Size => 8;
   for FCR_FKEY_Field use
     (FCR_FKEY_Field_Reset => 0,
      PASSWD => 90);

   --  EEFC Flash Command Register
   type EFC_FCR_Register is record
      --  Write-only. Flash Command
      FCMD : FCR_FCMD_Field := Interfaces.SAM.EFC.GETD;
      --  Write-only. Flash Command Argument
      FARG : EFC_FCR_FARG_Field := 16#0#;
      --  Write-only. Flash Writing Protection Key
      FKEY : FCR_FKEY_Field := FCR_FKEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_FCR_Register use record
      FCMD at 0 range 0 .. 7;
      FARG at 0 range 8 .. 23;
      FKEY at 0 range 24 .. 31;
   end record;

   subtype EFC_FSR_FRDY_Field is Interfaces.SAM.Bit;
   subtype EFC_FSR_FCMDE_Field is Interfaces.SAM.Bit;
   subtype EFC_FSR_FLOCKE_Field is Interfaces.SAM.Bit;
   subtype EFC_FSR_FLERR_Field is Interfaces.SAM.Bit;

   --  EEFC Flash Status Register
   type EFC_FSR_Register is record
      --  Read-only. Flash Ready Status
      FRDY          : EFC_FSR_FRDY_Field;
      --  Read-only. Flash Command Error Status
      FCMDE         : EFC_FSR_FCMDE_Field;
      --  Read-only. Flash Lock Error Status
      FLOCKE        : EFC_FSR_FLOCKE_Field;
      --  Read-only. Flash Error Status
      FLERR         : EFC_FSR_FLERR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_FSR_Register use record
      FRDY          at 0 range 0 .. 0;
      FCMDE         at 0 range 1 .. 1;
      FLOCKE        at 0 range 2 .. 2;
      FLERR         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype EFC_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (--  Reset value for the field
      WPMR_WPKEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation.Always
--  reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (WPMR_WPKEY_Field_Reset => 0,
      PASSWD => 4539971);

   --  Write Protection Mode Register
   type EFC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : EFC_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := WPMR_WPKEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Embedded Flash Controller
   type EFC_Peripheral is record
      --  EEFC Flash Mode Register
      FMR  : aliased EFC_FMR_Register;
      --  EEFC Flash Command Register
      FCR  : aliased EFC_FCR_Register;
      --  EEFC Flash Status Register
      FSR  : aliased EFC_FSR_Register;
      --  EEFC Flash Result Register
      FRR  : aliased Interfaces.SAM.UInt32;
      --  Write Protection Mode Register
      WPMR : aliased EFC_WPMR_Register;
   end record
     with Volatile;

   for EFC_Peripheral use record
      FMR  at 16#0# range 0 .. 31;
      FCR  at 16#4# range 0 .. 31;
      FSR  at 16#8# range 0 .. 31;
      FRR  at 16#C# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
   end record;

   --  Embedded Flash Controller
   EFC_Periph : aliased EFC_Peripheral
     with Import, Address => EFC_Base;

end Interfaces.SAM.EFC;
