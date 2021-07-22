--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  Cortex-M Cache Controller
package Interfaces.SAM.CMCC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CMCC_TYPE_AP_Field is Interfaces.SAM.Bit;
   subtype CMCC_TYPE_GCLK_Field is Interfaces.SAM.Bit;
   subtype CMCC_TYPE_RANDP_Field is Interfaces.SAM.Bit;
   subtype CMCC_TYPE_LRUP_Field is Interfaces.SAM.Bit;
   subtype CMCC_TYPE_RRP_Field is Interfaces.SAM.Bit;

   --  Number of Ways
   type TYPE_WAYNUM_Field is
     (--  Direct Mapped Cache
      DMAPPED,
      --  2-way set associative
      ARCH2WAY,
      --  4-way set associative
      ARCH4WAY,
      --  8-way set associative
      ARCH8WAY)
     with Size => 2;
   for TYPE_WAYNUM_Field use
     (DMAPPED => 0,
      ARCH2WAY => 1,
      ARCH4WAY => 2,
      ARCH8WAY => 3);

   subtype CMCC_TYPE_LCKDOWN_Field is Interfaces.SAM.Bit;

   --  Data Cache Size
   type TYPE_CSIZE_Field is
     (--  Data cache size is 1 Kbyte
      CSIZE_1KB,
      --  Data cache size is 2 Kbytes
      CSIZE_2KB,
      --  Data cache size is 4 Kbytes
      CSIZE_4KB,
      --  Data cache size is 8 Kbytes
      CSIZE_8KB)
     with Size => 3;
   for TYPE_CSIZE_Field use
     (CSIZE_1KB => 0,
      CSIZE_2KB => 1,
      CSIZE_4KB => 2,
      CSIZE_8KB => 3);

   --  Cache LIne Size
   type TYPE_CLSIZE_Field is
     (--  Cache line size is 4 bytes
      CLSIZE_1KB,
      --  Cache line size is 8 bytes
      CLSIZE_2KB,
      --  Cache line size is 16 bytes
      CLSIZE_4KB,
      --  Cache line size is 32 bytes
      CLSIZE_8KB)
     with Size => 3;
   for TYPE_CLSIZE_Field use
     (CLSIZE_1KB => 0,
      CLSIZE_2KB => 1,
      CLSIZE_4KB => 2,
      CLSIZE_8KB => 3);

   --  Cache Controller Type Register
   type CMCC_TYPE_Register is record
      --  Read-only. Access Port Access Allowed
      AP             : CMCC_TYPE_AP_Field;
      --  Read-only. Dynamic Clock Gating Supported
      GCLK           : CMCC_TYPE_GCLK_Field;
      --  Read-only. Random Selection Policy Supported
      RANDP          : CMCC_TYPE_RANDP_Field;
      --  Read-only. Least Recently Used Policy Supported
      LRUP           : CMCC_TYPE_LRUP_Field;
      --  Read-only. Random Selection Policy Supported
      RRP            : CMCC_TYPE_RRP_Field;
      --  Read-only. Number of Ways
      WAYNUM         : TYPE_WAYNUM_Field;
      --  Read-only. Lockdown Supported
      LCKDOWN        : CMCC_TYPE_LCKDOWN_Field;
      --  Read-only. Data Cache Size
      CSIZE          : TYPE_CSIZE_Field;
      --  Read-only. Cache LIne Size
      CLSIZE         : TYPE_CLSIZE_Field;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_TYPE_Register use record
      AP             at 0 range 0 .. 0;
      GCLK           at 0 range 1 .. 1;
      RANDP          at 0 range 2 .. 2;
      LRUP           at 0 range 3 .. 3;
      RRP            at 0 range 4 .. 4;
      WAYNUM         at 0 range 5 .. 6;
      LCKDOWN        at 0 range 7 .. 7;
      CSIZE          at 0 range 8 .. 10;
      CLSIZE         at 0 range 11 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype CMCC_CFG_GCLKDIS_Field is Interfaces.SAM.Bit;
   subtype CMCC_CFG_ICDIS_Field is Interfaces.SAM.Bit;
   subtype CMCC_CFG_DCDIS_Field is Interfaces.SAM.Bit;
   subtype CMCC_CFG_PRGCSIZE_Field is Interfaces.SAM.UInt3;

   --  Cache Controller Configuration Register
   type CMCC_CFG_Register is record
      --  Disable Clock Gating
      GCLKDIS       : CMCC_CFG_GCLKDIS_Field := 16#0#;
      ICDIS         : CMCC_CFG_ICDIS_Field := 16#0#;
      DCDIS         : CMCC_CFG_DCDIS_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : Interfaces.SAM.Bit := 16#0#;
      PRGCSIZE      : CMCC_CFG_PRGCSIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.SAM.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_CFG_Register use record
      GCLKDIS       at 0 range 0 .. 0;
      ICDIS         at 0 range 1 .. 1;
      DCDIS         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      PRGCSIZE      at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype CMCC_CTRL_CEN_Field is Interfaces.SAM.Bit;

   --  Cache Controller Control Register
   type CMCC_CTRL_Register is record
      --  Write-only. Cache Controller Enable
      CEN           : CMCC_CTRL_CEN_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_CTRL_Register use record
      CEN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CMCC_SR_CSTS_Field is Interfaces.SAM.Bit;

   --  Cache Controller Status Register
   type CMCC_SR_Register is record
      --  Read-only. Cache Controller Status
      CSTS          : CMCC_SR_CSTS_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_SR_Register use record
      CSTS          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CMCC_MAINT0_INVALL_Field is Interfaces.SAM.Bit;

   --  Cache Controller Maintenance Register 0
   type CMCC_MAINT0_Register is record
      --  Write-only. Cache Controller Invalidate All
      INVALL        : CMCC_MAINT0_INVALL_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MAINT0_Register use record
      INVALL        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CMCC_MAINT1_INDEX_Field is Interfaces.SAM.UInt5;

   --  Invalidate Way
   type MAINT1_WAY_Field is
     (--  Way 0 is selection for index invalidation
      WAY0,
      --  Way 1 is selection for index invalidation
      WAY1,
      --  Way 2 is selection for index invalidation
      WAY2,
      --  Way 3 is selection for index invalidation
      WAY3)
     with Size => 2;
   for MAINT1_WAY_Field use
     (WAY0 => 0,
      WAY1 => 1,
      WAY2 => 2,
      WAY3 => 3);

   --  Cache Controller Maintenance Register 1
   type CMCC_MAINT1_Register is record
      --  unspecified
      Reserved_0_3  : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Invalidate Index
      INDEX         : CMCC_MAINT1_INDEX_Field := 16#0#;
      --  unspecified
      Reserved_9_29 : Interfaces.SAM.UInt21 := 16#0#;
      --  Write-only. Invalidate Way
      WAY           : MAINT1_WAY_Field := Interfaces.SAM.CMCC.WAY0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MAINT1_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      INDEX         at 0 range 4 .. 8;
      Reserved_9_29 at 0 range 9 .. 29;
      WAY           at 0 range 30 .. 31;
   end record;

   --  Cache Controller Monitor Counter Mode
   type MCFG_MODE_Field is
     (--  Cycle counter
      CYCLE_COUNT,
      --  Instruction hit counter
      IHIT_COUNT,
      --  Data hit counter
      DHIT_COUNT)
     with Size => 2;
   for MCFG_MODE_Field use
     (CYCLE_COUNT => 0,
      IHIT_COUNT => 1,
      DHIT_COUNT => 2);

   --  Cache Controller Monitor Configuration Register
   type CMCC_MCFG_Register is record
      --  Cache Controller Monitor Counter Mode
      MODE          : MCFG_MODE_Field := Interfaces.SAM.CMCC.CYCLE_COUNT;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MCFG_Register use record
      MODE          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CMCC_MEN_MENABLE_Field is Interfaces.SAM.Bit;

   --  Cache Controller Monitor Enable Register
   type CMCC_MEN_Register is record
      --  Cache Controller Monitor Enable
      MENABLE       : CMCC_MEN_MENABLE_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MEN_Register use record
      MENABLE       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CMCC_MCTRL_SWRST_Field is Interfaces.SAM.Bit;

   --  Cache Controller Monitor Control Register
   type CMCC_MCTRL_Register is record
      --  Write-only. Monitor
      SWRST         : CMCC_MCTRL_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMCC_MCTRL_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cortex-M Cache Controller
   type CMCC_Peripheral is record
      --  Cache Controller Type Register
      TYPE_k : aliased CMCC_TYPE_Register;
      --  Cache Controller Configuration Register
      CFG    : aliased CMCC_CFG_Register;
      --  Cache Controller Control Register
      CTRL   : aliased CMCC_CTRL_Register;
      --  Cache Controller Status Register
      SR     : aliased CMCC_SR_Register;
      --  Cache Controller Maintenance Register 0
      MAINT0 : aliased CMCC_MAINT0_Register;
      --  Cache Controller Maintenance Register 1
      MAINT1 : aliased CMCC_MAINT1_Register;
      --  Cache Controller Monitor Configuration Register
      MCFG   : aliased CMCC_MCFG_Register;
      --  Cache Controller Monitor Enable Register
      MEN    : aliased CMCC_MEN_Register;
      --  Cache Controller Monitor Control Register
      MCTRL  : aliased CMCC_MCTRL_Register;
      --  Cache Controller Monitor Status Register
      MSR    : aliased Interfaces.SAM.UInt32;
   end record
     with Volatile;

   for CMCC_Peripheral use record
      TYPE_k at 16#0# range 0 .. 31;
      CFG    at 16#4# range 0 .. 31;
      CTRL   at 16#8# range 0 .. 31;
      SR     at 16#C# range 0 .. 31;
      MAINT0 at 16#20# range 0 .. 31;
      MAINT1 at 16#24# range 0 .. 31;
      MCFG   at 16#28# range 0 .. 31;
      MEN    at 16#2C# range 0 .. 31;
      MCTRL  at 16#30# range 0 .. 31;
      MSR    at 16#34# range 0 .. 31;
   end record;

   --  Cortex-M Cache Controller
   CMCC_Periph : aliased CMCC_Peripheral
     with Import, Address => CMCC_Base;

end Interfaces.SAM.CMCC;
