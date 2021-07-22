--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM4SD32C.svd


with System;

--  AHB Bus Matrix
package Interfaces.SAM.MATRIX is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype MATRIX_MCFG_ULBT_Field is Interfaces.SAM.UInt3;

   --  Master Configuration Register
   type MATRIX_MCFG_Register is record
      --  Undefined Length Burst Type
      ULBT          : MATRIX_MCFG_ULBT_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MCFG_Register use record
      ULBT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Master Configuration Register
   type MATRIX_MCFG_Registers is array (0 .. 3) of MATRIX_MCFG_Register;

   subtype MATRIX_SCFG_SLOT_CYCLE_Field is Interfaces.SAM.Byte;
   subtype MATRIX_SCFG_DEFMSTR_TYPE_Field is Interfaces.SAM.UInt2;
   subtype MATRIX_SCFG_FIXED_DEFMSTR_Field is Interfaces.SAM.UInt3;
   subtype MATRIX_SCFG_ARBT_Field is Interfaces.SAM.UInt2;

   --  Slave Configuration Register
   type MATRIX_SCFG_Register is record
      --  Maximum Number of Allowed Cycles for a Burst
      SLOT_CYCLE     : MATRIX_SCFG_SLOT_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.SAM.Byte := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : MATRIX_SCFG_DEFMSTR_TYPE_Field := 16#0#;
      --  Fixed Default Master
      FIXED_DEFMSTR  : MATRIX_SCFG_FIXED_DEFMSTR_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.SAM.UInt3 := 16#0#;
      --  Arbitration Type
      ARBT           : MATRIX_SCFG_ARBT_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.SAM.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_SCFG_Register use record
      SLOT_CYCLE     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DEFMSTR_TYPE   at 0 range 16 .. 17;
      FIXED_DEFMSTR  at 0 range 18 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ARBT           at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Slave Configuration Register
   type MATRIX_SCFG_Registers is array (0 .. 4) of MATRIX_SCFG_Register;

   subtype MATRIX_PRAS_M0PR_Field is Interfaces.SAM.UInt2;
   subtype MATRIX_PRAS_M1PR_Field is Interfaces.SAM.UInt2;
   subtype MATRIX_PRAS_M2PR_Field is Interfaces.SAM.UInt2;
   subtype MATRIX_PRAS_M3PR_Field is Interfaces.SAM.UInt2;
   subtype MATRIX_PRAS_M4PR_Field is Interfaces.SAM.UInt2;

   --  Priority Register A for Slave 0
   type MATRIX_PRAS_Register is record
      --  Master 0 Priority
      M0PR           : MATRIX_PRAS_M0PR_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Master 1 Priority
      M1PR           : MATRIX_PRAS_M1PR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2 := 16#0#;
      --  Master 2 Priority
      M2PR           : MATRIX_PRAS_M2PR_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.SAM.UInt2 := 16#0#;
      --  Master 3 Priority
      M3PR           : MATRIX_PRAS_M3PR_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2 := 16#0#;
      --  Master 4 Priority
      M4PR           : MATRIX_PRAS_M4PR_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.SAM.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PRAS_Register use record
      M0PR           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      M1PR           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      M2PR           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      M3PR           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      M4PR           at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  CCFG_SYSIO_SYSIO array element
   subtype CCFG_SYSIO_SYSIO_Element is Interfaces.SAM.Bit;

   --  CCFG_SYSIO_SYSIO array
   type CCFG_SYSIO_SYSIO_Field_Array is array (4 .. 7)
     of CCFG_SYSIO_SYSIO_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for CCFG_SYSIO_SYSIO
   type CCFG_SYSIO_SYSIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYSIO as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  SYSIO as an array
            Arr : CCFG_SYSIO_SYSIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CCFG_SYSIO_SYSIO_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  CCFG_SYSIO_SYSIO array
   type CCFG_SYSIO_SYSIO_Field_Array_1 is array (10 .. 12)
     of CCFG_SYSIO_SYSIO_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CCFG_SYSIO_SYSIO
   type CCFG_SYSIO_SYSIO_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYSIO as a value
            Val : Interfaces.SAM.UInt3;
         when True =>
            --  SYSIO as an array
            Arr : CCFG_SYSIO_SYSIO_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CCFG_SYSIO_SYSIO_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  System I/O Configuration register
   type CCFG_SYSIO_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.SAM.UInt4 := 16#0#;
      --  PB4 or TDI Assignment
      SYSIO          : CCFG_SYSIO_SYSIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_9   : Interfaces.SAM.UInt2 := 16#0#;
      --  PB10 or DDM Assignment
      SYSIO_1        : CCFG_SYSIO_SYSIO_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_31 : Interfaces.SAM.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_SYSIO_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      SYSIO          at 0 range 4 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      SYSIO_1        at 0 range 10 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  CCFG_SMCNFCS_SMC_NFCS array element
   subtype CCFG_SMCNFCS_SMC_NFCS_Element is Interfaces.SAM.Bit;

   --  CCFG_SMCNFCS_SMC_NFCS array
   type CCFG_SMCNFCS_SMC_NFCS_Field_Array is array (0 .. 3)
     of CCFG_SMCNFCS_SMC_NFCS_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for CCFG_SMCNFCS_SMC_NFCS
   type CCFG_SMCNFCS_SMC_NFCS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMC_NFCS as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  SMC_NFCS as an array
            Arr : CCFG_SMCNFCS_SMC_NFCS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CCFG_SMCNFCS_SMC_NFCS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SMC Chip Select NAND Flash Assignment Register
   type CCFG_SMCNFCS_Register is record
      --  SMC NAND Flash Chip Select 0 Assignment
      SMC_NFCS      : CCFG_SMCNFCS_SMC_NFCS_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_SMCNFCS_Register use record
      SMC_NFCS      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype MATRIX_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype MATRIX_WPMR_WPKEY_Field is Interfaces.SAM.UInt24;

   --  Write Protect Mode Register
   type MATRIX_WPMR_Register is record
      --  Write Protect ENable
      WPEN         : MATRIX_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protect KEY (Write-only)
      WPKEY        : MATRIX_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype MATRIX_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype MATRIX_WPSR_WPVSRC_Field is Interfaces.SAM.UInt16;

   --  Write Protect Status Register
   type MATRIX_WPSR_Register is record
      --  Read-only. Write Protect Violation Status
      WPVS           : MATRIX_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : MATRIX_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AHB Bus Matrix
   type MATRIX_Peripheral is record
      --  Master Configuration Register
      MATRIX_MCFG  : aliased MATRIX_MCFG_Registers;
      --  Slave Configuration Register
      MATRIX_SCFG  : aliased MATRIX_SCFG_Registers;
      --  Priority Register A for Slave 0
      MATRIX_PRAS0 : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 1
      MATRIX_PRAS1 : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 2
      MATRIX_PRAS2 : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 3
      MATRIX_PRAS3 : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 4
      MATRIX_PRAS4 : aliased MATRIX_PRAS_Register;
      --  System I/O Configuration register
      CCFG_SYSIO   : aliased CCFG_SYSIO_Register;
      --  SMC Chip Select NAND Flash Assignment Register
      CCFG_SMCNFCS : aliased CCFG_SMCNFCS_Register;
      --  Write Protect Mode Register
      MATRIX_WPMR  : aliased MATRIX_WPMR_Register;
      --  Write Protect Status Register
      MATRIX_WPSR  : aliased MATRIX_WPSR_Register;
   end record
     with Volatile;

   for MATRIX_Peripheral use record
      MATRIX_MCFG  at 16#0# range 0 .. 127;
      MATRIX_SCFG  at 16#40# range 0 .. 159;
      MATRIX_PRAS0 at 16#80# range 0 .. 31;
      MATRIX_PRAS1 at 16#88# range 0 .. 31;
      MATRIX_PRAS2 at 16#90# range 0 .. 31;
      MATRIX_PRAS3 at 16#98# range 0 .. 31;
      MATRIX_PRAS4 at 16#A0# range 0 .. 31;
      CCFG_SYSIO   at 16#114# range 0 .. 31;
      CCFG_SMCNFCS at 16#11C# range 0 .. 31;
      MATRIX_WPMR  at 16#1E4# range 0 .. 31;
      MATRIX_WPSR  at 16#1E8# range 0 .. 31;
   end record;

   --  AHB Bus Matrix
   MATRIX_Periph : aliased MATRIX_Peripheral
     with Import, Address => MATRIX_Base;

end Interfaces.SAM.MATRIX;
