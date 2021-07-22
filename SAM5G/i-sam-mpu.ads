--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  Memory Protection Unit (MPU)
package Interfaces.SAM.MPU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Valid (global enable/disable for the MPU)
   type CESR_VLD_Field is
     (--  MPU is disabled. All accesses from all bus masters are allowed.
      Val_0,
      --  MPU is enabled
      Val_1)
     with Size => 1;
   for CESR_VLD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype MPU_CESR_RESERVED_Field is Interfaces.SAM.UInt7;

   --  Number of region descriptors
   type CESR_NRGD_Field is
     (--  8 region descriptors
      Val_0000,
      --  12 region descriptors
      Val_0001,
      --  16 region descriptors
      Val_0010)
     with Size => 4;
   for CESR_NRGD_Field use
     (Val_0000 => 0,
      Val_0001 => 1,
      Val_0010 => 2);

   subtype MPU_CESR_NSP_Field is Interfaces.SAM.UInt4;
   subtype MPU_CESR_HRL_Field is Interfaces.SAM.UInt4;
   subtype MPU_CESR_RESERVED_Field_1 is Interfaces.SAM.UInt3;
   subtype MPU_CESR_RESERVED_Field_2 is Interfaces.SAM.Bit;

   --  Slave port n error
   type CESR_SPERR_Field is
     (--  No error has occurred for slave port n.
      Val_0,
      --  An error has occurred for slave port n.
      Val_1)
     with Size => 5;
   for CESR_SPERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Control/Error Status Register
   type MPU_CESR_Register is record
      --  Valid (global enable/disable for the MPU)
      VLD        : CESR_VLD_Field := Interfaces.SAM.MPU.Val_1;
      --  Read-only. no description available
      RESERVED   : MPU_CESR_RESERVED_Field := 16#0#;
      --  Read-only. Number of region descriptors
      NRGD       : CESR_NRGD_Field := Interfaces.SAM.MPU.Val_0010;
      --  Read-only. Number of slave ports
      NSP        : MPU_CESR_NSP_Field := 16#5#;
      --  Read-only. Hardware revision level
      HRL        : MPU_CESR_HRL_Field := 16#1#;
      --  Read-only. no description available
      RESERVED_1 : MPU_CESR_RESERVED_Field_1 := 16#0#;
      --  Read-only. no description available
      RESERVED_2 : MPU_CESR_RESERVED_Field_2 := 16#1#;
      --  Read-only. no description available
      RESERVED_3 : MPU_CESR_RESERVED_Field_1 := 16#0#;
      --  Slave port n error
      SPERR      : CESR_SPERR_Field := Interfaces.SAM.MPU.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_CESR_Register use record
      VLD        at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 7;
      NRGD       at 0 range 8 .. 11;
      NSP        at 0 range 12 .. 15;
      HRL        at 0 range 16 .. 19;
      RESERVED_1 at 0 range 20 .. 22;
      RESERVED_2 at 0 range 23 .. 23;
      RESERVED_3 at 0 range 24 .. 26;
      SPERR      at 0 range 27 .. 31;
   end record;

   --  Error read/write
   type EDR0_ERW_Field is
     (--  Read
      Val_0,
      --  Write
      Val_1)
     with Size => 1;
   for EDR0_ERW_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Error attributes
   type EDR0_EATTR_Field is
     (--  User mode, instruction access
      Val_000,
      --  User mode, data access
      Val_001,
      --  Supervisor mode, instruction access
      Val_010,
      --  Supervisor mode, data access
      Val_011)
     with Size => 3;
   for EDR0_EATTR_Field use
     (Val_000 => 0,
      Val_001 => 1,
      Val_010 => 2,
      Val_011 => 3);

   subtype EDR_EMN_Field is Interfaces.SAM.UInt4;
   subtype EDR_EPID_Field is Interfaces.SAM.Byte;
   subtype EDR_EACD_Field is Interfaces.SAM.UInt16;

   --  Error Detail Register, Slave Port n
   type EDR_Register is record
      --  Read-only. Error read/write
      ERW   : EDR0_ERW_Field;
      --  Read-only. Error attributes
      EATTR : EDR0_EATTR_Field;
      --  Read-only. Error master number
      EMN   : EDR_EMN_Field;
      --  Read-only. Error process identification
      EPID  : EDR_EPID_Field;
      --  Read-only. Error access control detail
      EACD  : EDR_EACD_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EDR_Register use record
      ERW   at 0 range 0 .. 0;
      EATTR at 0 range 1 .. 3;
      EMN   at 0 range 4 .. 7;
      EPID  at 0 range 8 .. 15;
      EACD  at 0 range 16 .. 31;
   end record;

   subtype RGD_WORD_RESERVED_Field is Interfaces.SAM.UInt5;
   subtype RGD_WORD_SRTADDR_Field is Interfaces.SAM.UInt27;

   --  Region Descriptor n, Word 0
   type RGD_WORD_Register is record
      --  Read-only. no description available
      RESERVED : RGD_WORD_RESERVED_Field := 16#0#;
      --  Start address
      SRTADDR  : RGD_WORD_SRTADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RGD_WORD_Register use record
      RESERVED at 0 range 0 .. 4;
      SRTADDR  at 0 range 5 .. 31;
   end record;

   subtype RGD_WORD_ENDADDR_Field is Interfaces.SAM.UInt27;

   --  Region Descriptor n, Word 1
   type RGD_WORD_Register_1 is record
      --  Read-only. no description available
      RESERVED : RGD_WORD_RESERVED_Field := 16#1F#;
      --  End address
      ENDADDR  : RGD_WORD_ENDADDR_Field := 16#7FFFFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RGD_WORD_Register_1 use record
      RESERVED at 0 range 0 .. 4;
      ENDADDR  at 0 range 5 .. 31;
   end record;

   subtype RGD_WORD_M0UM_Field is Interfaces.SAM.UInt3;
   subtype RGD_WORD_M0SM_Field is Interfaces.SAM.UInt2;
   subtype RGD_WORD_M0PE_Field is Interfaces.SAM.Bit;
   subtype RGD_WORD_M1UM_Field is Interfaces.SAM.UInt3;
   subtype RGD_WORD_M1SM_Field is Interfaces.SAM.UInt2;
   subtype RGD_WORD_M1PE_Field is Interfaces.SAM.Bit;
   subtype RGD_WORD_M2UM_Field is Interfaces.SAM.UInt3;
   subtype RGD_WORD_M2SM_Field is Interfaces.SAM.UInt2;
   subtype RGD_WORD_M2PE_Field is Interfaces.SAM.Bit;

   --  Bus master 3 user mode access control
   type RGD_WORD20_M3UM_Field is
     (--  An attempted access of that mode may be terminated with an access error (if
--  not allowed by another descriptor) and the access not performed.
      Val_0,
      --  Allows the given access type to occur
      Val_1)
     with Size => 3;
   for RGD_WORD20_M3UM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 3 supervisor mode access control
   type RGD_WORD20_M3SM_Field is
     (--  r/w/x; read, write and execute allowed
      Val_00,
      --  r/x; read and execute allowed, but no write
      Val_01,
      --  r/w; read and write allowed, but no execute
      Val_10,
      --  Same as user mode defined in M3UM
      Val_11)
     with Size => 2;
   for RGD_WORD20_M3SM_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Bus master 3 process identifier enable.
   type RGD_WORD20_M3PE_Field is
     (--  Do not include the process identifier in the evaluation
      Val_0,
      --  Include the process identifier and mask (RGDn_WORD3) in the region hit
--  evaluation
      Val_1)
     with Size => 1;
   for RGD_WORD20_M3PE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 4 write enable
   type RGD_WORD20_M4WE_Field is
     (--  Bus master 4 writes terminate with an access error and the write is not
--  performed
      Val_0,
      --  Bus master 4 writes allowed
      Val_1)
     with Size => 1;
   for RGD_WORD20_M4WE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 4 read enable.
   type RGD_WORD20_M4RE_Field is
     (--  Bus master 4 reads terminate with an access error and the read is not
--  performed
      Val_0,
      --  Bus master 4 reads allowed
      Val_1)
     with Size => 1;
   for RGD_WORD20_M4RE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 5 write enable
   type RGD_WORD20_M5WE_Field is
     (--  Bus master 5 writes terminate with an access error and the write is not
--  performed
      Val_0,
      --  Bus master 5 writes allowed
      Val_1)
     with Size => 1;
   for RGD_WORD20_M5WE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 5 read enable.
   type RGD_WORD20_M5RE_Field is
     (--  Bus master 5 reads terminate with an access error and the read is not
--  performed
      Val_0,
      --  Bus master 5 reads allowed
      Val_1)
     with Size => 1;
   for RGD_WORD20_M5RE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 6 write enable
   type RGD_WORD20_M6WE_Field is
     (--  Bus master 6 writes terminate with an access error and the write is not
--  performed
      Val_0,
      --  Bus master 6 writes allowed
      Val_1)
     with Size => 1;
   for RGD_WORD20_M6WE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 6 read enable.
   type RGD_WORD20_M6RE_Field is
     (--  Bus master 6 reads terminate with an access error and the read is not
--  performed
      Val_0,
      --  Bus master 6 reads allowed
      Val_1)
     with Size => 1;
   for RGD_WORD20_M6RE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 7 write enable
   type RGD_WORD20_M7WE_Field is
     (--  Bus master 7 writes terminate with an access error and the write is not
--  performed
      Val_0,
      --  Bus master 7 writes allowed
      Val_1)
     with Size => 1;
   for RGD_WORD20_M7WE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 7 read enable.
   type RGD_WORD20_M7RE_Field is
     (--  Bus master 7 reads terminate with an access error and the read is not
--  performed
      Val_0,
      --  Bus master 7 reads allowed
      Val_1)
     with Size => 1;
   for RGD_WORD20_M7RE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Region Descriptor n, Word 2
   type RGD_WORD_Register_2 is record
      --  Bus master 0 user mode access control
      M0UM : RGD_WORD_M0UM_Field := 16#7#;
      --  Bus master 0 supervisor mode access control
      M0SM : RGD_WORD_M0SM_Field := 16#3#;
      --  Bus master 0 process identifier enable
      M0PE : RGD_WORD_M0PE_Field := 16#0#;
      --  Bus master 1 user mode access control
      M1UM : RGD_WORD_M1UM_Field := 16#7#;
      --  Bus master 1 supervisor mode access control
      M1SM : RGD_WORD_M1SM_Field := 16#3#;
      --  Bus master 1 process identifier enable
      M1PE : RGD_WORD_M1PE_Field := 16#0#;
      --  Bus master 2 user mode access control
      M2UM : RGD_WORD_M2UM_Field := 16#7#;
      --  Bus master 2 supervisor mode access control
      M2SM : RGD_WORD_M2SM_Field := 16#3#;
      --  Bus master 2 process identifier enable
      M2PE : RGD_WORD_M2PE_Field := 16#0#;
      --  Bus master 3 user mode access control
      M3UM : RGD_WORD20_M3UM_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 3 supervisor mode access control
      M3SM : RGD_WORD20_M3SM_Field := Interfaces.SAM.MPU.Val_11;
      --  Bus master 3 process identifier enable.
      M3PE : RGD_WORD20_M3PE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 4 write enable
      M4WE : RGD_WORD20_M4WE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 4 read enable.
      M4RE : RGD_WORD20_M4RE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 5 write enable
      M5WE : RGD_WORD20_M5WE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 5 read enable.
      M5RE : RGD_WORD20_M5RE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 6 write enable
      M6WE : RGD_WORD20_M6WE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 6 read enable.
      M6RE : RGD_WORD20_M6RE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 7 write enable
      M7WE : RGD_WORD20_M7WE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 7 read enable.
      M7RE : RGD_WORD20_M7RE_Field := Interfaces.SAM.MPU.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RGD_WORD_Register_2 use record
      M0UM at 0 range 0 .. 2;
      M0SM at 0 range 3 .. 4;
      M0PE at 0 range 5 .. 5;
      M1UM at 0 range 6 .. 8;
      M1SM at 0 range 9 .. 10;
      M1PE at 0 range 11 .. 11;
      M2UM at 0 range 12 .. 14;
      M2SM at 0 range 15 .. 16;
      M2PE at 0 range 17 .. 17;
      M3UM at 0 range 18 .. 20;
      M3SM at 0 range 21 .. 22;
      M3PE at 0 range 23 .. 23;
      M4WE at 0 range 24 .. 24;
      M4RE at 0 range 25 .. 25;
      M5WE at 0 range 26 .. 26;
      M5RE at 0 range 27 .. 27;
      M6WE at 0 range 28 .. 28;
      M6RE at 0 range 29 .. 29;
      M7WE at 0 range 30 .. 30;
      M7RE at 0 range 31 .. 31;
   end record;

   --  Valid
   type RGD_WORD30_VLD_Field is
     (--  Region descriptor is invalid
      Val_0,
      --  Region descriptor is valid
      Val_1)
     with Size => 1;
   for RGD_WORD30_VLD_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype RGD_WORD_RESERVED_Field_1 is Interfaces.SAM.UInt15;
   subtype RGD_WORD_PIDMASK_Field is Interfaces.SAM.Byte;
   subtype RGD_WORD_PID_Field is Interfaces.SAM.Byte;

   --  Region Descriptor n, Word 3
   type RGD_WORD_Register_3 is record
      --  Valid
      VLD      : RGD_WORD30_VLD_Field := Interfaces.SAM.MPU.Val_1;
      --  Read-only. no description available
      RESERVED : RGD_WORD_RESERVED_Field_1 := 16#0#;
      --  Process identifier mask
      PIDMASK  : RGD_WORD_PIDMASK_Field := 16#0#;
      --  Process identifier
      PID      : RGD_WORD_PID_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RGD_WORD_Register_3 use record
      VLD      at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 15;
      PIDMASK  at 0 range 16 .. 23;
      PID      at 0 range 24 .. 31;
   end record;

   subtype MPU_RGDAAC_M0UM_Field is Interfaces.SAM.UInt3;
   subtype MPU_RGDAAC_M0SM_Field is Interfaces.SAM.UInt2;
   subtype MPU_RGDAAC_M0PE_Field is Interfaces.SAM.Bit;
   subtype MPU_RGDAAC_M1UM_Field is Interfaces.SAM.UInt3;
   subtype MPU_RGDAAC_M1SM_Field is Interfaces.SAM.UInt2;
   subtype MPU_RGDAAC_M1PE_Field is Interfaces.SAM.Bit;
   subtype MPU_RGDAAC_M2UM_Field is Interfaces.SAM.UInt3;
   subtype MPU_RGDAAC_M2SM_Field is Interfaces.SAM.UInt2;
   subtype MPU_RGDAAC_M2PE_Field is Interfaces.SAM.Bit;

   --  Bus master 3 user mode access control
   type RGDAAC_M3UM_Field is
     (--  An attempted access of that mode may be terminated with an access error (if
--  not allowed by another descriptor) and the access not performed.
      Val_0,
      --  Allows the given access type to occur
      Val_1)
     with Size => 3;
   for RGDAAC_M3UM_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 3 supervisor mode access control
   type RGDAAC_M3SM_Field is
     (--  r/w/x; read, write and execute allowed
      Val_00,
      --  r/x; read and execute allowed, but no write
      Val_01,
      --  r/w; read and write allowed, but no execute
      Val_10,
      --  Same as user mode defined in M3UM
      Val_11)
     with Size => 2;
   for RGDAAC_M3SM_Field use
     (Val_00 => 0,
      Val_01 => 1,
      Val_10 => 2,
      Val_11 => 3);

   --  Bus master 3 process identifier enable.
   type RGDAAC_M3PE_Field is
     (--  Do not include the process identifier in the evaluation
      Val_0,
      --  Include the process identifier and mask (RGDn.RGDAAC) in the region hit
--  evaluation
      Val_1)
     with Size => 1;
   for RGDAAC_M3PE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 4 write enable
   type RGDAAC_M4WE_Field is
     (--  Bus master 4 writes terminate with an access error and the write is not
--  performed
      Val_0,
      --  Bus master 4 writes allowed
      Val_1)
     with Size => 1;
   for RGDAAC_M4WE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 4 read enable.
   type RGDAAC_M4RE_Field is
     (--  Bus master 4 reads terminate with an access error and the read is not
--  performed
      Val_0,
      --  Bus master 4 reads allowed
      Val_1)
     with Size => 1;
   for RGDAAC_M4RE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 5 write enable
   type RGDAAC_M5WE_Field is
     (--  Bus master 5 writes terminate with an access error and the write is not
--  performed
      Val_0,
      --  Bus master 5 writes allowed
      Val_1)
     with Size => 1;
   for RGDAAC_M5WE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 5 read enable.
   type RGDAAC_M5RE_Field is
     (--  Bus master 5 reads terminate with an access error and the read is not
--  performed
      Val_0,
      --  Bus master 5 reads allowed
      Val_1)
     with Size => 1;
   for RGDAAC_M5RE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 6 write enable
   type RGDAAC_M6WE_Field is
     (--  Bus master 6 writes terminate with an access error and the write is not
--  performed
      Val_0,
      --  Bus master 6 writes allowed
      Val_1)
     with Size => 1;
   for RGDAAC_M6WE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 6 read enable.
   type RGDAAC_M6RE_Field is
     (--  Bus master 6 reads terminate with an access error and the read is not
--  performed
      Val_0,
      --  Bus master 6 reads allowed
      Val_1)
     with Size => 1;
   for RGDAAC_M6RE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 7 write enable
   type RGDAAC_M7WE_Field is
     (--  Bus master 7 writes terminate with an access error and the write is not
--  performed
      Val_0,
      --  Bus master 7 writes allowed
      Val_1)
     with Size => 1;
   for RGDAAC_M7WE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Bus master 7 read enable.
   type RGDAAC_M7RE_Field is
     (--  Bus master 7 reads terminate with an access error and the read is not
--  performed
      Val_0,
      --  Bus master 7 reads allowed
      Val_1)
     with Size => 1;
   for RGDAAC_M7RE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Region Descriptor Alternate Access Control n
   type MPU_RGDAAC_Register is record
      --  Bus master 0 user mode access control
      M0UM : MPU_RGDAAC_M0UM_Field := 16#7#;
      --  Bus master 0 supervisor mode access control
      M0SM : MPU_RGDAAC_M0SM_Field := 16#3#;
      --  Bus master 0 process identifier enable
      M0PE : MPU_RGDAAC_M0PE_Field := 16#0#;
      --  Bus master 1 user mode access control
      M1UM : MPU_RGDAAC_M1UM_Field := 16#7#;
      --  Bus master 1 supervisor mode access control
      M1SM : MPU_RGDAAC_M1SM_Field := 16#3#;
      --  Bus master 1 process identifier enable
      M1PE : MPU_RGDAAC_M1PE_Field := 16#0#;
      --  Bus master 2 user mode access control
      M2UM : MPU_RGDAAC_M2UM_Field := 16#7#;
      --  Bus master 2 supervisor mode access control
      M2SM : MPU_RGDAAC_M2SM_Field := 16#3#;
      --  Bus master 2 process identifier enable
      M2PE : MPU_RGDAAC_M2PE_Field := 16#0#;
      --  Bus master 3 user mode access control
      M3UM : RGDAAC_M3UM_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 3 supervisor mode access control
      M3SM : RGDAAC_M3SM_Field := Interfaces.SAM.MPU.Val_11;
      --  Bus master 3 process identifier enable.
      M3PE : RGDAAC_M3PE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 4 write enable
      M4WE : RGDAAC_M4WE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 4 read enable.
      M4RE : RGDAAC_M4RE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 5 write enable
      M5WE : RGDAAC_M5WE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 5 read enable.
      M5RE : RGDAAC_M5RE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 6 write enable
      M6WE : RGDAAC_M6WE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 6 read enable.
      M6RE : RGDAAC_M6RE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 7 write enable
      M7WE : RGDAAC_M7WE_Field := Interfaces.SAM.MPU.Val_0;
      --  Bus master 7 read enable.
      M7RE : RGDAAC_M7RE_Field := Interfaces.SAM.MPU.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_RGDAAC_Register use record
      M0UM at 0 range 0 .. 2;
      M0SM at 0 range 3 .. 4;
      M0PE at 0 range 5 .. 5;
      M1UM at 0 range 6 .. 8;
      M1SM at 0 range 9 .. 10;
      M1PE at 0 range 11 .. 11;
      M2UM at 0 range 12 .. 14;
      M2SM at 0 range 15 .. 16;
      M2PE at 0 range 17 .. 17;
      M3UM at 0 range 18 .. 20;
      M3SM at 0 range 21 .. 22;
      M3PE at 0 range 23 .. 23;
      M4WE at 0 range 24 .. 24;
      M4RE at 0 range 25 .. 25;
      M5WE at 0 range 26 .. 26;
      M5RE at 0 range 27 .. 27;
      M6WE at 0 range 28 .. 28;
      M6RE at 0 range 29 .. 29;
      M7WE at 0 range 30 .. 30;
      M7RE at 0 range 31 .. 31;
   end record;

   --  Region Descriptor Alternate Access Control n
   type MPU_RGDAAC_Registers is array (0 .. 11) of MPU_RGDAAC_Register;

   -----------------
   -- Peripherals --
   -----------------

   --  Memory Protection Unit (MPU)
   type MPU_Peripheral is record
      --  Control/Error Status Register
      CESR        : aliased MPU_CESR_Register;
      --  Error Address Register, Slave Port n
      EAR0        : aliased Interfaces.SAM.UInt32;
      --  Error Detail Register, Slave Port n
      EDR0        : aliased EDR_Register;
      --  Error Address Register, Slave Port n
      EAR1        : aliased Interfaces.SAM.UInt32;
      --  Error Detail Register, Slave Port n
      EDR1        : aliased EDR_Register;
      --  Error Address Register, Slave Port n
      EAR2        : aliased Interfaces.SAM.UInt32;
      --  Error Detail Register, Slave Port n
      EDR2        : aliased EDR_Register;
      --  Error Address Register, Slave Port n
      EAR3        : aliased Interfaces.SAM.UInt32;
      --  Error Detail Register, Slave Port n
      EDR3        : aliased EDR_Register;
      --  Error Address Register, Slave Port n
      EAR4        : aliased Interfaces.SAM.UInt32;
      --  Error Detail Register, Slave Port n
      EDR4        : aliased EDR_Register;
      --  Region Descriptor n, Word 0
      RGD_WORD00  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD10  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD20  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD30  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD01  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD11  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD21  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD31  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD02  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD12  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD22  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD32  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD03  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD13  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD23  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD33  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD04  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD14  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD24  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD34  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD05  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD15  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD25  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD35  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD06  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD16  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD26  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD36  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD07  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD17  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD27  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD37  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD08  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD18  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD28  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD38  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD09  : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD19  : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD29  : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD39  : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD010 : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD110 : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD210 : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD310 : aliased RGD_WORD_Register_3;
      --  Region Descriptor n, Word 0
      RGD_WORD011 : aliased RGD_WORD_Register;
      --  Region Descriptor n, Word 1
      RGD_WORD111 : aliased RGD_WORD_Register_1;
      --  Region Descriptor n, Word 2
      RGD_WORD211 : aliased RGD_WORD_Register_2;
      --  Region Descriptor n, Word 3
      RGD_WORD311 : aliased RGD_WORD_Register_3;
      --  Region Descriptor Alternate Access Control n
      RGDAAC      : aliased MPU_RGDAAC_Registers;
   end record
     with Volatile;

   for MPU_Peripheral use record
      CESR        at 16#0# range 0 .. 31;
      EAR0        at 16#10# range 0 .. 31;
      EDR0        at 16#14# range 0 .. 31;
      EAR1        at 16#18# range 0 .. 31;
      EDR1        at 16#1C# range 0 .. 31;
      EAR2        at 16#20# range 0 .. 31;
      EDR2        at 16#24# range 0 .. 31;
      EAR3        at 16#28# range 0 .. 31;
      EDR3        at 16#2C# range 0 .. 31;
      EAR4        at 16#30# range 0 .. 31;
      EDR4        at 16#34# range 0 .. 31;
      RGD_WORD00  at 16#400# range 0 .. 31;
      RGD_WORD10  at 16#404# range 0 .. 31;
      RGD_WORD20  at 16#408# range 0 .. 31;
      RGD_WORD30  at 16#40C# range 0 .. 31;
      RGD_WORD01  at 16#410# range 0 .. 31;
      RGD_WORD11  at 16#414# range 0 .. 31;
      RGD_WORD21  at 16#418# range 0 .. 31;
      RGD_WORD31  at 16#41C# range 0 .. 31;
      RGD_WORD02  at 16#420# range 0 .. 31;
      RGD_WORD12  at 16#424# range 0 .. 31;
      RGD_WORD22  at 16#428# range 0 .. 31;
      RGD_WORD32  at 16#42C# range 0 .. 31;
      RGD_WORD03  at 16#430# range 0 .. 31;
      RGD_WORD13  at 16#434# range 0 .. 31;
      RGD_WORD23  at 16#438# range 0 .. 31;
      RGD_WORD33  at 16#43C# range 0 .. 31;
      RGD_WORD04  at 16#440# range 0 .. 31;
      RGD_WORD14  at 16#444# range 0 .. 31;
      RGD_WORD24  at 16#448# range 0 .. 31;
      RGD_WORD34  at 16#44C# range 0 .. 31;
      RGD_WORD05  at 16#450# range 0 .. 31;
      RGD_WORD15  at 16#454# range 0 .. 31;
      RGD_WORD25  at 16#458# range 0 .. 31;
      RGD_WORD35  at 16#45C# range 0 .. 31;
      RGD_WORD06  at 16#460# range 0 .. 31;
      RGD_WORD16  at 16#464# range 0 .. 31;
      RGD_WORD26  at 16#468# range 0 .. 31;
      RGD_WORD36  at 16#46C# range 0 .. 31;
      RGD_WORD07  at 16#470# range 0 .. 31;
      RGD_WORD17  at 16#474# range 0 .. 31;
      RGD_WORD27  at 16#478# range 0 .. 31;
      RGD_WORD37  at 16#47C# range 0 .. 31;
      RGD_WORD08  at 16#480# range 0 .. 31;
      RGD_WORD18  at 16#484# range 0 .. 31;
      RGD_WORD28  at 16#488# range 0 .. 31;
      RGD_WORD38  at 16#48C# range 0 .. 31;
      RGD_WORD09  at 16#490# range 0 .. 31;
      RGD_WORD19  at 16#494# range 0 .. 31;
      RGD_WORD29  at 16#498# range 0 .. 31;
      RGD_WORD39  at 16#49C# range 0 .. 31;
      RGD_WORD010 at 16#4A0# range 0 .. 31;
      RGD_WORD110 at 16#4A4# range 0 .. 31;
      RGD_WORD210 at 16#4A8# range 0 .. 31;
      RGD_WORD310 at 16#4AC# range 0 .. 31;
      RGD_WORD011 at 16#4B0# range 0 .. 31;
      RGD_WORD111 at 16#4B4# range 0 .. 31;
      RGD_WORD211 at 16#4B8# range 0 .. 31;
      RGD_WORD311 at 16#4BC# range 0 .. 31;
      RGDAAC      at 16#800# range 0 .. 383;
   end record;

   --  Memory Protection Unit (MPU)
   MPU_Periph : aliased MPU_Peripheral
     with Import, Address => MPU_Base;

end Interfaces.SAM.MPU;
