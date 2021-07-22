--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM4SD32C.svd


with System;

--  Chip Identifier
package Interfaces.SAM.CHIPID is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CHIPID_CIDR_VERSION_Field is Interfaces.SAM.UInt5;

   --  Embedded Processor
   type CIDR_EPROC_Field is
     (--  ARM946ES
      ARM946ES,
      --  ARM7TDMI
      ARM7TDMI,
      --  Cortex-M3
      CM3,
      --  ARM920T
      ARM920T,
      --  ARM926EJS
      ARM926EJS,
      --  Cortex-A5
      CA5,
      --  Cortex-M4
      CM4)
     with Size => 3;
   for CIDR_EPROC_Field use
     (ARM946ES => 1,
      ARM7TDMI => 2,
      CM3 => 3,
      ARM920T => 4,
      ARM926EJS => 5,
      CA5 => 6,
      CM4 => 7);

   --  Nonvolatile Program Memory Size
   type CIDR_NVPSIZ_Field is
     (--  None
      NONE,
      --  8 Kbytes
      Val_8K,
      --  16 Kbytes
      Val_16K,
      --  32 Kbytes
      Val_32K,
      --  64 Kbytes
      Val_64K,
      --  128 Kbytes
      Val_128K,
      --  256 Kbytes
      Val_256K,
      --  512 Kbytes
      Val_512K,
      --  1024 Kbytes
      Val_1024K,
      --  2048 Kbytes
      Val_2048K)
     with Size => 4;
   for CIDR_NVPSIZ_Field use
     (NONE => 0,
      Val_8K => 1,
      Val_16K => 2,
      Val_32K => 3,
      Val_64K => 5,
      Val_128K => 7,
      Val_256K => 9,
      Val_512K => 10,
      Val_1024K => 12,
      Val_2048K => 14);

   --  CHIPID_CIDR_NVPSIZ array
   type CHIPID_CIDR_NVPSIZ_Field_Array is array (1 .. 2) of CIDR_NVPSIZ_Field
     with Component_Size => 4, Size => 8;

   --  Type definition for CHIPID_CIDR_NVPSIZ
   type CHIPID_CIDR_NVPSIZ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NVPSIZ as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  NVPSIZ as an array
            Arr : CHIPID_CIDR_NVPSIZ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CHIPID_CIDR_NVPSIZ_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Internal SRAM Size
   type CIDR_SRAMSIZ_Field is
     (--  48 Kbytes
      Val_48K,
      --  192 Kbytes
      Val_192K,
      --  2 Kbytes
      Val_2K,
      --  6 Kbytes
      Val_6K,
      --  24 Kbytes
      Val_24K,
      --  4 Kbytes
      Val_4K,
      --  80 Kbytes
      Val_80K,
      --  160 Kbytes
      Val_160K,
      --  8 Kbytes
      Val_8K,
      --  16 Kbytes
      Val_16K,
      --  32 Kbytes
      Val_32K,
      --  64 Kbytes
      Val_64K,
      --  128 Kbytes
      Val_128K,
      --  256 Kbytes
      Val_256K,
      --  96 Kbytes
      Val_96K,
      --  512 Kbytes
      Val_512K)
     with Size => 4;
   for CIDR_SRAMSIZ_Field use
     (Val_48K => 0,
      Val_192K => 1,
      Val_2K => 2,
      Val_6K => 3,
      Val_24K => 4,
      Val_4K => 5,
      Val_80K => 6,
      Val_160K => 7,
      Val_8K => 8,
      Val_16K => 9,
      Val_32K => 10,
      Val_64K => 11,
      Val_128K => 12,
      Val_256K => 13,
      Val_96K => 14,
      Val_512K => 15);

   --  Architecture Identifier
   type CIDR_ARCH_Field is
     (--  AT91SAM9xx Series
      AT91SAM9xx,
      --  AT91SAM9XExx Series
      AT91SAM9XExx,
      --  AT91x34 Series
      AT91x34,
      --  CAP7 Series
      CAP7,
      --  CAP9 Series
      CAP9,
      --  CAP11 Series
      CAP11,
      --  CM4P Series
      CM4P,
      --  AT91x40 Series
      AT91x40,
      --  AT91x42 Series
      AT91x42,
      --  AT91x55 Series
      AT91x55,
      --  AT91SAM7Axx Series
      AT91SAM7Axx,
      --  AT91SAM7AQxx Series
      AT91SAM7AQxx,
      --  AT91x63 Series
      AT91x63,
      --  SAM4CxC Series (100-pin version)
      SAM4CxxC,
      --  SAM4MxxC Series (100-pin version)
      SAM4MxxC,
      --  AT91SAM7Sxx Series
      AT91SAM7Sxx,
      --  AT91SAM7XCxx Series
      AT91SAM7XCxx,
      --  AT91SAM7SExx Series
      AT91SAM7SExx,
      --  AT91SAM7Lxx Series
      AT91SAM7Lxx,
      --  AT91SAM7Xxx Series
      AT91SAM7Xxx,
      --  AT91SAM7SLxx Series
      AT91SAM7SLxx,
      --  SAM3UxC Series (100-pin version)
      SAM3UxC,
      --  SAM3UxE Series (144-pin version)
      SAM3UxE,
      --  SAM3AxC Series (100-pin version)
      SAM3AxC,
      --  SAM3XxC Series (100-pin version)
      SAM3XxC,
      --  SAM3XxE Series (144-pin version)
      SAM3XxE,
      --  SAM3XxG Series (208/217-pin version)
      SAM3XxG,
      --  SAM3SxASeries (48-pin version)
      SAM3SxA,
      --  SAM4SxA Series (48-pin version)
      SAM4SxA,
      --  SAM3SxB Series (64-pin version)
      SAM3SxB,
      --  SAM4SxB Series (64-pin version)
      SAM4SxB,
      --  SAM3SxC Series (100-pin version)
      SAM3SxC,
      --  SAM4SxC Series (100-pin version)
      SAM4SxC,
      --  AT91x92 Series
      AT91x92,
      --  SAM3NxA Series (48-pin version)
      SAM3NxA,
      --  SAM3NxB Series (64-pin version)
      SAM3NxB,
      --  SAM3NxC Series (100-pin version)
      SAM3NxC,
      --  SAM3SDxB Series (64-pin version)
      SAM3SDxB,
      --  SAM3SDxC Series (100-pin version)
      SAM3SDxC,
      --  SAM5A
      SAM5A,
      --  SAM4LxA Series (48-pin version)
      SAM4LxA,
      --  SAM4LxB Series (64-pin version)
      SAM4LxB,
      --  SAM4LxC Series (100-pin version)
      SAM4LxC,
      --  AT75Cxx Series
      AT75Cxx)
     with Size => 8;
   for CIDR_ARCH_Field use
     (AT91SAM9xx => 25,
      AT91SAM9XExx => 41,
      AT91x34 => 52,
      CAP7 => 55,
      CAP9 => 57,
      CAP11 => 59,
      CM4P => 60,
      AT91x40 => 64,
      AT91x42 => 66,
      AT91x55 => 85,
      AT91SAM7Axx => 96,
      AT91SAM7AQxx => 97,
      AT91x63 => 99,
      SAM4CxxC => 100,
      SAM4MxxC => 101,
      AT91SAM7Sxx => 112,
      AT91SAM7XCxx => 113,
      AT91SAM7SExx => 114,
      AT91SAM7Lxx => 115,
      AT91SAM7Xxx => 117,
      AT91SAM7SLxx => 118,
      SAM3UxC => 128,
      SAM3UxE => 129,
      SAM3AxC => 131,
      SAM3XxC => 132,
      SAM3XxE => 133,
      SAM3XxG => 134,
      SAM3SxA => 136,
      SAM4SxA => 136,
      SAM3SxB => 137,
      SAM4SxB => 137,
      SAM3SxC => 138,
      SAM4SxC => 138,
      AT91x92 => 146,
      SAM3NxA => 147,
      SAM3NxB => 148,
      SAM3NxC => 149,
      SAM3SDxB => 153,
      SAM3SDxC => 154,
      SAM5A => 165,
      SAM4LxA => 176,
      SAM4LxB => 177,
      SAM4LxC => 178,
      AT75Cxx => 240);

   --  Nonvolatile Program Memory Type
   type CIDR_NVPTYP_Field is
     (--  ROM
      ROM,
      --  ROMless or on-chip Flash
      ROMLESS,
      --  Embedded Flash Memory
      FLASH,
      --  ROM and Embedded Flash MemoryNVPSIZ is ROM size NVPSIZ2 is Flash size
      ROM_FLASH,
      --  SRAM emulating ROM
      SRAM)
     with Size => 3;
   for CIDR_NVPTYP_Field use
     (ROM => 0,
      ROMLESS => 1,
      FLASH => 2,
      ROM_FLASH => 3,
      SRAM => 4);

   subtype CHIPID_CIDR_EXT_Field is Interfaces.SAM.Bit;

   --  Chip ID Register
   type CHIPID_CIDR_Register is record
      --  Read-only. Version of the Device
      VERSION : CHIPID_CIDR_VERSION_Field;
      --  Read-only. Embedded Processor
      EPROC   : CIDR_EPROC_Field;
      --  Read-only. Nonvolatile Program Memory Size
      NVPSIZ  : CHIPID_CIDR_NVPSIZ_Field;
      --  Read-only. Internal SRAM Size
      SRAMSIZ : CIDR_SRAMSIZ_Field;
      --  Read-only. Architecture Identifier
      ARCH    : CIDR_ARCH_Field;
      --  Read-only. Nonvolatile Program Memory Type
      NVPTYP  : CIDR_NVPTYP_Field;
      --  Read-only. Extension Flag
      EXT     : CHIPID_CIDR_EXT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHIPID_CIDR_Register use record
      VERSION at 0 range 0 .. 4;
      EPROC   at 0 range 5 .. 7;
      NVPSIZ  at 0 range 8 .. 15;
      SRAMSIZ at 0 range 16 .. 19;
      ARCH    at 0 range 20 .. 27;
      NVPTYP  at 0 range 28 .. 30;
      EXT     at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Chip Identifier
   type CHIPID_Peripheral is record
      --  Chip ID Register
      CIDR : aliased CHIPID_CIDR_Register;
      --  Chip ID Extension Register
      EXID : aliased Interfaces.SAM.UInt32;
   end record
     with Volatile;

   for CHIPID_Peripheral use record
      CIDR at 16#0# range 0 .. 31;
      EXID at 16#4# range 0 .. 31;
   end record;

   --  Chip Identifier
   CHIPID_Periph : aliased CHIPID_Peripheral
     with Import, Address => CHIPID_Base;

end Interfaces.SAM.CHIPID;
