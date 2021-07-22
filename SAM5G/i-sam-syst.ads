--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  System timer, SysTick
package Interfaces.SAM.SYST is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  no description available
   type CSR_ENABLE_Field is
     (--  counter disabled
      Val_0,
      --  counter enabled
      Val_1)
     with Size => 1;
   for CSR_ENABLE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CSR_TICKINT_Field is
     (--  counting down to 0 does not assert the SysTick exception request
      Val_0,
      --  counting down to 0 asserts the SysTick exception request
      Val_1)
     with Size => 1;
   for CSR_TICKINT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CSR_CLKSOURCE_Field is
     (--  external clock
      Val_0,
      --  processor clock
      Val_1)
     with Size => 1;
   for CSR_CLKSOURCE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SYST_CSR_RESERVED array element
   subtype SYST_CSR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SYST_CSR_RESERVED array
   type SYST_CSR_RESERVED_Field_Array is array (1 .. 13)
     of SYST_CSR_RESERVED_Element
     with Component_Size => 1, Size => 13;

   --  Type definition for SYST_CSR_RESERVED
   type SYST_CSR_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt13;
         when True =>
            --  RESERVED as an array
            Arr : SYST_CSR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 13;

   for SYST_CSR_RESERVED_Field use record
      Val at 0 range 0 .. 12;
      Arr at 0 range 0 .. 12;
   end record;

   subtype SYST_CSR_COUNTFLAG_Field is Interfaces.SAM.Bit;

   --  SYST_CSR_RESERVED array
   type SYST_CSR_RESERVED_Field_Array_1 is array (1 .. 15)
     of SYST_CSR_RESERVED_Element
     with Component_Size => 1, Size => 15;

   --  Type definition for SYST_CSR_RESERVED
   type SYST_CSR_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt15;
         when True =>
            --  RESERVED as an array
            Arr : SYST_CSR_RESERVED_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for SYST_CSR_RESERVED_Field_1 use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  SysTick Control and Status Register
   type SYST_CSR_Register is record
      --  no description available
      ENABLE     : CSR_ENABLE_Field := Interfaces.SAM.SYST.Val_0;
      --  no description available
      TICKINT    : CSR_TICKINT_Field := Interfaces.SAM.SYST.Val_0;
      --  no description available
      CLKSOURCE  : CSR_CLKSOURCE_Field := Interfaces.SAM.SYST.Val_1;
      --  Read-only. no description available
      RESERVED   : SYST_CSR_RESERVED_Field :=
                    (As_Array => False, Val => 16#0#);
      --  no description available
      COUNTFLAG  : SYST_CSR_COUNTFLAG_Field := 16#0#;
      --  Read-only. no description available
      RESERVED_1 : SYST_CSR_RESERVED_Field_1 :=
                    (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_CSR_Register use record
      ENABLE     at 0 range 0 .. 0;
      TICKINT    at 0 range 1 .. 1;
      CLKSOURCE  at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 15;
      COUNTFLAG  at 0 range 16 .. 16;
      RESERVED_1 at 0 range 17 .. 31;
   end record;

   subtype SYST_RVR_RELOAD_Field is Interfaces.SAM.UInt24;
   --  SYST_RVR_RESERVED array element
   subtype SYST_RVR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SYST_RVR_RESERVED array
   type SYST_RVR_RESERVED_Field_Array is array (1 .. 8)
     of SYST_RVR_RESERVED_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for SYST_RVR_RESERVED
   type SYST_RVR_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  RESERVED as an array
            Arr : SYST_RVR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for SYST_RVR_RESERVED_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  SysTick Reload Value Register
   type SYST_RVR_Register is record
      --  Value to load into the SysTick Current Value Register when the
      --  counter reaches 0
      RELOAD   : SYST_RVR_RELOAD_Field := 16#0#;
      --  Read-only. no description available
      RESERVED : SYST_RVR_RESERVED_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_RVR_Register use record
      RELOAD   at 0 range 0 .. 23;
      RESERVED at 0 range 24 .. 31;
   end record;

   subtype SYST_CVR_CURRENT_Field is Interfaces.SAM.UInt24;
   --  SYST_CVR_RESERVED array element
   subtype SYST_CVR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SYST_CVR_RESERVED array
   type SYST_CVR_RESERVED_Field_Array is array (1 .. 8)
     of SYST_CVR_RESERVED_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for SYST_CVR_RESERVED
   type SYST_CVR_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  RESERVED as an array
            Arr : SYST_CVR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for SYST_CVR_RESERVED_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  SysTick Current Value Register
   type SYST_CVR_Register is record
      --  Current value at the time the register is accessed
      CURRENT  : SYST_CVR_CURRENT_Field := 16#0#;
      --  Read-only. no description available
      RESERVED : SYST_CVR_RESERVED_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_CVR_Register use record
      CURRENT  at 0 range 0 .. 23;
      RESERVED at 0 range 24 .. 31;
   end record;

   subtype SYST_CALIB_TENMS_Field is Interfaces.SAM.UInt24;
   --  SYST_CALIB_RESERVED array element
   subtype SYST_CALIB_RESERVED_Element is Interfaces.SAM.Bit;

   --  SYST_CALIB_RESERVED array
   type SYST_CALIB_RESERVED_Field_Array is array (1 .. 6)
     of SYST_CALIB_RESERVED_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for SYST_CALIB_RESERVED
   type SYST_CALIB_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt6;
         when True =>
            --  RESERVED as an array
            Arr : SYST_CALIB_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for SYST_CALIB_RESERVED_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  no description available
   type CALIB_SKEW_Field is
     (--  10ms calibration value is exact
      Val_0,
      --  10ms calibration value is inexact, because of the clock frequency
      Val_1)
     with Size => 1;
   for CALIB_SKEW_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CALIB_NOREF_Field is
     (--  The reference clock is provided
      Val_0,
      --  The reference clock is not provided
      Val_1)
     with Size => 1;
   for CALIB_NOREF_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SysTick Calibration Value Register
   type SYST_CALIB_Register is record
      --  Read-only. Reload value to use for 10ms timing
      TENMS    : SYST_CALIB_TENMS_Field;
      --  Read-only. no description available
      RESERVED : SYST_CALIB_RESERVED_Field;
      --  Read-only. no description available
      SKEW     : CALIB_SKEW_Field;
      --  Read-only. no description available
      NOREF    : CALIB_NOREF_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_CALIB_Register use record
      TENMS    at 0 range 0 .. 23;
      RESERVED at 0 range 24 .. 29;
      SKEW     at 0 range 30 .. 30;
      NOREF    at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System timer, SysTick
   type SYST_Peripheral is record
      --  SysTick Control and Status Register
      CSR   : aliased SYST_CSR_Register;
      --  SysTick Reload Value Register
      RVR   : aliased SYST_RVR_Register;
      --  SysTick Current Value Register
      CVR   : aliased SYST_CVR_Register;
      --  SysTick Calibration Value Register
      CALIB : aliased SYST_CALIB_Register;
   end record
     with Volatile;

   for SYST_Peripheral use record
      CSR   at 16#0# range 0 .. 31;
      RVR   at 16#4# range 0 .. 31;
      CVR   at 16#8# range 0 .. 31;
      CALIB at 16#C# range 0 .. 31;
   end record;

   --  System timer, SysTick
   SYST_Periph : aliased SYST_Peripheral
     with Import, Address => SYST_Base;

end Interfaces.SAM.SYST;
