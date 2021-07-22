--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


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
      --  160 Kbytes
      Val_160K,
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
      Val_160K => 8,
      Val_256K => 9,
      Val_512K => 10,
      Val_1024K => 12,
      Val_2048K => 14);

   --  Second Nonvolatile Program Memory Size
   type CIDR_NVPSIZ2_Field is
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
   for CIDR_NVPSIZ2_Field use
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

   --  Internal SRAM Size
   type CIDR_SRAMSIZ_Field is
     (--  48 Kbytes
      Val_48K,
      --  192 Kbytes
      Val_192K,
      --  384 Kbytes
      Val_384K,
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
      Val_384K => 2,
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
     (--  SAM G55 (49-lead version)
      SAMG55)
     with Size => 8;
   for CIDR_ARCH_Field use
     (SAMG55 => 68);

   --  Nonvolatile Program Memory Type
   type CIDR_NVPTYP_Field is
     (--  ROM
      ROM,
      --  ROMless or on-chip Flash
      ROMLESS,
      --  Embedded Flash Memory
      FLASH,
      --  ROM and Embedded Flash Memory- NVPSIZ is ROM size- NVPSIZ2 is Flash size
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
      NVPSIZ  : CIDR_NVPSIZ_Field;
      --  Read-only. Second Nonvolatile Program Memory Size
      NVPSIZ2 : CIDR_NVPSIZ2_Field;
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
      NVPSIZ  at 0 range 8 .. 11;
      NVPSIZ2 at 0 range 12 .. 15;
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
