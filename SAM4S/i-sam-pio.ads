--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM4SD32C.svd


with System;

package Interfaces.SAM.PIO is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  PIOA_PER_P array element
   subtype PIOA_PER_P_Element is Interfaces.SAM.Bit;

   --  PIOA_PER_P array
   type PIOA_PER_P_Field_Array is array (0 .. 31) of PIOA_PER_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Enable Register
   type PIOA_PER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PDR_P array element
   subtype PIOA_PDR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_PDR_P array
   type PIOA_PDR_P_Field_Array is array (0 .. 31) of PIOA_PDR_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Disable Register
   type PIOA_PDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PSR_P array element
   subtype PIOA_PSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_PSR_P array
   type PIOA_PSR_P_Field_Array is array (0 .. 31) of PIOA_PSR_P_Element
     with Component_Size => 1, Size => 32;

   --  PIO Status Register
   type PIOA_PSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_OER_P array element
   subtype PIOA_OER_P_Element is Interfaces.SAM.Bit;

   --  PIOA_OER_P array
   type PIOA_OER_P_Field_Array is array (0 .. 31) of PIOA_OER_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Enable Register
   type PIOA_OER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_OER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_OER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ODR_P array element
   subtype PIOA_ODR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_ODR_P array
   type PIOA_ODR_P_Field_Array is array (0 .. 31) of PIOA_ODR_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Disable Register
   type PIOA_ODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_ODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_OSR_P array element
   subtype PIOA_OSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_OSR_P array
   type PIOA_OSR_P_Field_Array is array (0 .. 31) of PIOA_OSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Status Register
   type PIOA_OSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_OSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_OSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IFER_P array element
   subtype PIOA_IFER_P_Element is Interfaces.SAM.Bit;

   --  PIOA_IFER_P array
   type PIOA_IFER_P_Field_Array is array (0 .. 31) of PIOA_IFER_P_Element
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Enable Register
   type PIOA_IFER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IFDR_P array element
   subtype PIOA_IFDR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_IFDR_P array
   type PIOA_IFDR_P_Field_Array is array (0 .. 31) of PIOA_IFDR_P_Element
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Disable Register
   type PIOA_IFDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IFSR_P array element
   subtype PIOA_IFSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_IFSR_P array
   type PIOA_IFSR_P_Field_Array is array (0 .. 31) of PIOA_IFSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Status Register
   type PIOA_IFSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_SODR_P array element
   subtype PIOA_SODR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_SODR_P array
   type PIOA_SODR_P_Field_Array is array (0 .. 31) of PIOA_SODR_P_Element
     with Component_Size => 1, Size => 32;

   --  Set Output Data Register
   type PIOA_SODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_SODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_SODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_CODR_P array element
   subtype PIOA_CODR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_CODR_P array
   type PIOA_CODR_P_Field_Array is array (0 .. 31) of PIOA_CODR_P_Element
     with Component_Size => 1, Size => 32;

   --  Clear Output Data Register
   type PIOA_CODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_CODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_CODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ODSR_P array element
   subtype PIOA_ODSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_ODSR_P array
   type PIOA_ODSR_P_Field_Array is array (0 .. 31) of PIOA_ODSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Data Status Register
   type PIOA_ODSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ODSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_ODSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PDSR_P array element
   subtype PIOA_PDSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_PDSR_P array
   type PIOA_PDSR_P_Field_Array is array (0 .. 31) of PIOA_PDSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Pin Data Status Register
   type PIOA_PDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IER_P array element
   subtype PIOA_IER_P_Element is Interfaces.SAM.Bit;

   --  PIOA_IER_P array
   type PIOA_IER_P_Field_Array is array (0 .. 31) of PIOA_IER_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register
   type PIOA_IER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_IER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IDR_P array element
   subtype PIOA_IDR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_IDR_P array
   type PIOA_IDR_P_Field_Array is array (0 .. 31) of PIOA_IDR_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Disable Register
   type PIOA_IDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_IDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IMR_P array element
   subtype PIOA_IMR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_IMR_P array
   type PIOA_IMR_P_Field_Array is array (0 .. 31) of PIOA_IMR_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Mask Register
   type PIOA_IMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IMR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_IMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ISR_P array element
   subtype PIOA_ISR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_ISR_P array
   type PIOA_ISR_P_Field_Array is array (0 .. 31) of PIOA_ISR_P_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Status Register
   type PIOA_ISR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ISR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_ISR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_MDER_P array element
   subtype PIOA_MDER_P_Element is Interfaces.SAM.Bit;

   --  PIOA_MDER_P array
   type PIOA_MDER_P_Field_Array is array (0 .. 31) of PIOA_MDER_P_Element
     with Component_Size => 1, Size => 32;

   --  Multi-driver Enable Register
   type PIOA_MDER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_MDER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_MDER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_MDDR_P array element
   subtype PIOA_MDDR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_MDDR_P array
   type PIOA_MDDR_P_Field_Array is array (0 .. 31) of PIOA_MDDR_P_Element
     with Component_Size => 1, Size => 32;

   --  Multi-driver Disable Register
   type PIOA_MDDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_MDDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_MDDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_MDSR_P array element
   subtype PIOA_MDSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_MDSR_P array
   type PIOA_MDSR_P_Field_Array is array (0 .. 31) of PIOA_MDSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Multi-driver Status Register
   type PIOA_MDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_MDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_MDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PUDR_P array element
   subtype PIOA_PUDR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_PUDR_P array
   type PIOA_PUDR_P_Field_Array is array (0 .. 31) of PIOA_PUDR_P_Element
     with Component_Size => 1, Size => 32;

   --  Pull-up Disable Register
   type PIOA_PUDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PUDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PUDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PUER_P array element
   subtype PIOA_PUER_P_Element is Interfaces.SAM.Bit;

   --  PIOA_PUER_P array
   type PIOA_PUER_P_Field_Array is array (0 .. 31) of PIOA_PUER_P_Element
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register
   type PIOA_PUER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PUER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PUER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PUSR_P array element
   subtype PIOA_PUSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_PUSR_P array
   type PIOA_PUSR_P_Field_Array is array (0 .. 31) of PIOA_PUSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Pad Pull-up Status Register
   type PIOA_PUSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PUSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PUSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ABCDSR_P array element
   subtype PIOA_ABCDSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_ABCDSR_P array
   type PIOA_ABCDSR_P_Field_Array is array (0 .. 31) of PIOA_ABCDSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Peripheral Select Register
   type PIOA_ABCDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ABCDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_ABCDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Peripheral Select Register
   type PIOA_ABCDSR_Registers is array (0 .. 1) of PIOA_ABCDSR_Register;

   --  PIOA_IFSCDR_P array element
   subtype PIOA_IFSCDR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_IFSCDR_P array
   type PIOA_IFSCDR_P_Field_Array is array (0 .. 31) of PIOA_IFSCDR_P_Element
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Disable Register
   type PIOA_IFSCDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFSCDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFSCDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IFSCER_P array element
   subtype PIOA_IFSCER_P_Element is Interfaces.SAM.Bit;

   --  PIOA_IFSCER_P array
   type PIOA_IFSCER_P_Field_Array is array (0 .. 31) of PIOA_IFSCER_P_Element
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Enable Register
   type PIOA_IFSCER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFSCER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFSCER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_IFSCSR_P array element
   subtype PIOA_IFSCSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_IFSCSR_P array
   type PIOA_IFSCSR_P_Field_Array is array (0 .. 31) of PIOA_IFSCSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Status Register
   type PIOA_IFSCSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_IFSCSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_IFSCSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PIOA_SCDR_DIV_Field is Interfaces.SAM.UInt14;

   --  Slow Clock Divider Debouncing Register
   type PIOA_SCDR_Register is record
      DIV            : PIOA_SCDR_DIV_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_SCDR_Register use record
      DIV            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  PIOA_PPDDR_P array element
   subtype PIOA_PPDDR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_PPDDR_P array
   type PIOA_PPDDR_P_Field_Array is array (0 .. 31) of PIOA_PPDDR_P_Element
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Disable Register
   type PIOA_PPDDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PPDDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PPDDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PPDER_P array element
   subtype PIOA_PPDER_P_Element is Interfaces.SAM.Bit;

   --  PIOA_PPDER_P array
   type PIOA_PPDER_P_Field_Array is array (0 .. 31) of PIOA_PPDER_P_Element
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Enable Register
   type PIOA_PPDER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PPDER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PPDER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_PPDSR_P array element
   subtype PIOA_PPDSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_PPDSR_P array
   type PIOA_PPDSR_P_Field_Array is array (0 .. 31) of PIOA_PPDSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Status Register
   type PIOA_PPDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_PPDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PPDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_OWER_P array element
   subtype PIOA_OWER_P_Element is Interfaces.SAM.Bit;

   --  PIOA_OWER_P array
   type PIOA_OWER_P_Field_Array is array (0 .. 31) of PIOA_OWER_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Write Enable
   type PIOA_OWER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_OWER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_OWER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_OWDR_P array element
   subtype PIOA_OWDR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_OWDR_P array
   type PIOA_OWDR_P_Field_Array is array (0 .. 31) of PIOA_OWDR_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Write Disable
   type PIOA_OWDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_OWDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_OWDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_OWSR_P array element
   subtype PIOA_OWSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_OWSR_P array
   type PIOA_OWSR_P_Field_Array is array (0 .. 31) of PIOA_OWSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Output Write Status Register
   type PIOA_OWSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_OWSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_OWSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_AIMER_P array element
   subtype PIOA_AIMER_P_Element is Interfaces.SAM.Bit;

   --  PIOA_AIMER_P array
   type PIOA_AIMER_P_Field_Array is array (0 .. 31) of PIOA_AIMER_P_Element
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Enable Register
   type PIOA_AIMER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_AIMER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_AIMER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_AIMDR_P array element
   subtype PIOA_AIMDR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_AIMDR_P array
   type PIOA_AIMDR_P_Field_Array is array (0 .. 31) of PIOA_AIMDR_P_Element
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Disables Register
   type PIOA_AIMDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_AIMDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_AIMDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_AIMMR_P array element
   subtype PIOA_AIMMR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_AIMMR_P array
   type PIOA_AIMMR_P_Field_Array is array (0 .. 31) of PIOA_AIMMR_P_Element
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Mask Register
   type PIOA_AIMMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_AIMMR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_AIMMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ESR_P array element
   subtype PIOA_ESR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_ESR_P array
   type PIOA_ESR_P_Field_Array is array (0 .. 31) of PIOA_ESR_P_Element
     with Component_Size => 1, Size => 32;

   --  Edge Select Register
   type PIOA_ESR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ESR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_ESR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_LSR_P array element
   subtype PIOA_LSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_LSR_P array
   type PIOA_LSR_P_Field_Array is array (0 .. 31) of PIOA_LSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Level Select Register
   type PIOA_LSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_LSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_LSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_ELSR_P array element
   subtype PIOA_ELSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_ELSR_P array
   type PIOA_ELSR_P_Field_Array is array (0 .. 31) of PIOA_ELSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Edge/Level Status Register
   type PIOA_ELSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_ELSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_ELSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_FELLSR_P array element
   subtype PIOA_FELLSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_FELLSR_P array
   type PIOA_FELLSR_P_Field_Array is array (0 .. 31) of PIOA_FELLSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Falling Edge/Low Level Select Register
   type PIOA_FELLSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_FELLSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_FELLSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_REHLSR_P array element
   subtype PIOA_REHLSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_REHLSR_P array
   type PIOA_REHLSR_P_Field_Array is array (0 .. 31) of PIOA_REHLSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Rising Edge/ High Level Select Register
   type PIOA_REHLSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_REHLSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_REHLSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_FRLHSR_P array element
   subtype PIOA_FRLHSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_FRLHSR_P array
   type PIOA_FRLHSR_P_Field_Array is array (0 .. 31) of PIOA_FRLHSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Fall/Rise - Low/High Status Register
   type PIOA_FRLHSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_FRLHSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_FRLHSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIOA_LOCKSR_P array element
   subtype PIOA_LOCKSR_P_Element is Interfaces.SAM.Bit;

   --  PIOA_LOCKSR_P array
   type PIOA_LOCKSR_P_Field_Array is array (0 .. 31) of PIOA_LOCKSR_P_Element
     with Component_Size => 1, Size => 32;

   --  Lock Status
   type PIOA_LOCKSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  P as an array
            Arr : PIOA_LOCKSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_LOCKSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PIOA_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype PIOA_WPMR_WPKEY_Field is Interfaces.SAM.UInt24;

   --  Write Protect Mode Register
   type PIOA_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : PIOA_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : PIOA_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype PIOA_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype PIOA_WPSR_WPVSRC_Field is Interfaces.SAM.UInt16;

   --  Write Protect Status Register
   type PIOA_WPSR_Register is record
      --  Read-only. Write Protect Violation Status
      WPVS           : PIOA_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protect Violation Source
      WPVSRC         : PIOA_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PIOA_SCHMITT_SCHMITT array element
   subtype PIOA_SCHMITT_SCHMITT_Element is Interfaces.SAM.Bit;

   --  PIOA_SCHMITT_SCHMITT array
   type PIOA_SCHMITT_SCHMITT_Field_Array is array (0 .. 31)
     of PIOA_SCHMITT_SCHMITT_Element
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Register
   type PIOA_SCHMITT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SCHMITT as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  SCHMITT as an array
            Arr : PIOA_SCHMITT_SCHMITT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_SCHMITT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PIOA_PCMR_PCEN_Field is Interfaces.SAM.Bit;

   --  Parallel Capture Mode Data Size
   type PCMR_DSIZE_Field is
     (--  The reception data in the PIO_PCRHR register is a BYTE (8-bit)
      BYTE,
      --  The reception data in the PIO_PCRHR register is a HALF-WORD (16-bit)
      HALFWORD,
      --  The reception data in the PIO_PCRHR register is a WORD (32-bit)
      WORD)
     with Size => 2;
   for PCMR_DSIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   subtype PIOA_PCMR_ALWYS_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCMR_HALFS_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCMR_FRSTS_Field is Interfaces.SAM.Bit;

   --  Parallel Capture Mode Register
   type PIOA_PCMR_Register is record
      --  Parallel Capture Mode Enable
      PCEN           : PIOA_PCMR_PCEN_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : Interfaces.SAM.UInt3 := 16#0#;
      --  Parallel Capture Mode Data Size
      DSIZE          : PCMR_DSIZE_Field := Interfaces.SAM.PIO.BYTE;
      --  unspecified
      Reserved_6_8   : Interfaces.SAM.UInt3 := 16#0#;
      --  Parallel Capture Mode Always Sampling
      ALWYS          : PIOA_PCMR_ALWYS_Field := 16#0#;
      --  Parallel Capture Mode Half Sampling
      HALFS          : PIOA_PCMR_HALFS_Field := 16#0#;
      --  Parallel Capture Mode First Sample
      FRSTS          : PIOA_PCMR_FRSTS_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PCMR_Register use record
      PCEN           at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DSIZE          at 0 range 4 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      ALWYS          at 0 range 9 .. 9;
      HALFS          at 0 range 10 .. 10;
      FRSTS          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype PIOA_PCIER_DRDY_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCIER_OVRE_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCIER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCIER_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Parallel Capture Interrupt Enable Register
   type PIOA_PCIER_Register is record
      --  Write-only. Parallel Capture Mode Data Ready Interrupt Enable
      DRDY          : PIOA_PCIER_DRDY_Field := 16#0#;
      --  Write-only. Parallel Capture Mode Overrun Error Interrupt Enable
      OVRE          : PIOA_PCIER_OVRE_Field := 16#0#;
      --  Write-only. End of Reception Transfer Interrupt Enable
      ENDRX         : PIOA_PCIER_ENDRX_Field := 16#0#;
      --  Write-only. Reception Buffer Full Interrupt Enable
      RXBUFF        : PIOA_PCIER_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PCIER_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      ENDRX         at 0 range 2 .. 2;
      RXBUFF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PIOA_PCIDR_DRDY_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCIDR_OVRE_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCIDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCIDR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Parallel Capture Interrupt Disable Register
   type PIOA_PCIDR_Register is record
      --  Write-only. Parallel Capture Mode Data Ready Interrupt Disable
      DRDY          : PIOA_PCIDR_DRDY_Field := 16#0#;
      --  Write-only. Parallel Capture Mode Overrun Error Interrupt Disable
      OVRE          : PIOA_PCIDR_OVRE_Field := 16#0#;
      --  Write-only. End of Reception Transfer Interrupt Disable
      ENDRX         : PIOA_PCIDR_ENDRX_Field := 16#0#;
      --  Write-only. Reception Buffer Full Interrupt Disable
      RXBUFF        : PIOA_PCIDR_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PCIDR_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      ENDRX         at 0 range 2 .. 2;
      RXBUFF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PIOA_PCIMR_DRDY_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCIMR_OVRE_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCIMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCIMR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Parallel Capture Interrupt Mask Register
   type PIOA_PCIMR_Register is record
      --  Read-only. Parallel Capture Mode Data Ready Interrupt Mask
      DRDY          : PIOA_PCIMR_DRDY_Field;
      --  Read-only. Parallel Capture Mode Overrun Error Interrupt Mask
      OVRE          : PIOA_PCIMR_OVRE_Field;
      --  Read-only. End of Reception Transfer Interrupt Mask
      ENDRX         : PIOA_PCIMR_ENDRX_Field;
      --  Read-only. Reception Buffer Full Interrupt Mask
      RXBUFF        : PIOA_PCIMR_RXBUFF_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PCIMR_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      ENDRX         at 0 range 2 .. 2;
      RXBUFF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PIOA_PCISR_DRDY_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCISR_OVRE_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCISR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype PIOA_PCISR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Parallel Capture Interrupt Status Register
   type PIOA_PCISR_Register is record
      --  Read-only. Parallel Capture Mode Data Ready
      DRDY          : PIOA_PCISR_DRDY_Field;
      --  Read-only. Parallel Capture Mode Overrun Error.
      OVRE          : PIOA_PCISR_OVRE_Field;
      --  Read-only. End of Reception Transfer.
      ENDRX         : PIOA_PCISR_ENDRX_Field;
      --  Read-only. Reception Buffer Full
      RXBUFF        : PIOA_PCISR_RXBUFF_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PCISR_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      ENDRX         at 0 range 2 .. 2;
      RXBUFF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PIOA_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type PIOA_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : PIOA_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PIOA_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type PIOA_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : PIOA_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PIOA_PTCR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype PIOA_PTCR_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype PIOA_PTCR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype PIOA_PTCR_TXTDIS_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register
   type PIOA_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : PIOA_PTCR_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : PIOA_PTCR_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : PIOA_PTCR_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : PIOA_PTCR_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype PIOA_PTSR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype PIOA_PTSR_TXTEN_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register
   type PIOA_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN         : PIOA_PTSR_RXTEN_Field;
      --  unspecified
      Reserved_1_7  : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN         : PIOA_PTSR_TXTEN_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIOA_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Parallel Input/Output Controller A
   type PIOA_Peripheral is record
      --  PIO Enable Register
      PER     : aliased PIOA_PER_Register;
      --  PIO Disable Register
      PDR     : aliased PIOA_PDR_Register;
      --  PIO Status Register
      PSR     : aliased PIOA_PSR_Register;
      --  Output Enable Register
      OER     : aliased PIOA_OER_Register;
      --  Output Disable Register
      ODR     : aliased PIOA_ODR_Register;
      --  Output Status Register
      OSR     : aliased PIOA_OSR_Register;
      --  Glitch Input Filter Enable Register
      IFER    : aliased PIOA_IFER_Register;
      --  Glitch Input Filter Disable Register
      IFDR    : aliased PIOA_IFDR_Register;
      --  Glitch Input Filter Status Register
      IFSR    : aliased PIOA_IFSR_Register;
      --  Set Output Data Register
      SODR    : aliased PIOA_SODR_Register;
      --  Clear Output Data Register
      CODR    : aliased PIOA_CODR_Register;
      --  Output Data Status Register
      ODSR    : aliased PIOA_ODSR_Register;
      --  Pin Data Status Register
      PDSR    : aliased PIOA_PDSR_Register;
      --  Interrupt Enable Register
      IER     : aliased PIOA_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased PIOA_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased PIOA_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased PIOA_ISR_Register;
      --  Multi-driver Enable Register
      MDER    : aliased PIOA_MDER_Register;
      --  Multi-driver Disable Register
      MDDR    : aliased PIOA_MDDR_Register;
      --  Multi-driver Status Register
      MDSR    : aliased PIOA_MDSR_Register;
      --  Pull-up Disable Register
      PUDR    : aliased PIOA_PUDR_Register;
      --  Pull-up Enable Register
      PUER    : aliased PIOA_PUER_Register;
      --  Pad Pull-up Status Register
      PUSR    : aliased PIOA_PUSR_Register;
      --  Peripheral Select Register
      ABCDSR  : aliased PIOA_ABCDSR_Registers;
      --  Input Filter Slow Clock Disable Register
      IFSCDR  : aliased PIOA_IFSCDR_Register;
      --  Input Filter Slow Clock Enable Register
      IFSCER  : aliased PIOA_IFSCER_Register;
      --  Input Filter Slow Clock Status Register
      IFSCSR  : aliased PIOA_IFSCSR_Register;
      --  Slow Clock Divider Debouncing Register
      SCDR    : aliased PIOA_SCDR_Register;
      --  Pad Pull-down Disable Register
      PPDDR   : aliased PIOA_PPDDR_Register;
      --  Pad Pull-down Enable Register
      PPDER   : aliased PIOA_PPDER_Register;
      --  Pad Pull-down Status Register
      PPDSR   : aliased PIOA_PPDSR_Register;
      --  Output Write Enable
      OWER    : aliased PIOA_OWER_Register;
      --  Output Write Disable
      OWDR    : aliased PIOA_OWDR_Register;
      --  Output Write Status Register
      OWSR    : aliased PIOA_OWSR_Register;
      --  Additional Interrupt Modes Enable Register
      AIMER   : aliased PIOA_AIMER_Register;
      --  Additional Interrupt Modes Disables Register
      AIMDR   : aliased PIOA_AIMDR_Register;
      --  Additional Interrupt Modes Mask Register
      AIMMR   : aliased PIOA_AIMMR_Register;
      --  Edge Select Register
      ESR     : aliased PIOA_ESR_Register;
      --  Level Select Register
      LSR     : aliased PIOA_LSR_Register;
      --  Edge/Level Status Register
      ELSR    : aliased PIOA_ELSR_Register;
      --  Falling Edge/Low Level Select Register
      FELLSR  : aliased PIOA_FELLSR_Register;
      --  Rising Edge/ High Level Select Register
      REHLSR  : aliased PIOA_REHLSR_Register;
      --  Fall/Rise - Low/High Status Register
      FRLHSR  : aliased PIOA_FRLHSR_Register;
      --  Lock Status
      LOCKSR  : aliased PIOA_LOCKSR_Register;
      --  Write Protect Mode Register
      WPMR    : aliased PIOA_WPMR_Register;
      --  Write Protect Status Register
      WPSR    : aliased PIOA_WPSR_Register;
      --  Schmitt Trigger Register
      SCHMITT : aliased PIOA_SCHMITT_Register;
      --  Parallel Capture Mode Register
      PCMR    : aliased PIOA_PCMR_Register;
      --  Parallel Capture Interrupt Enable Register
      PCIER   : aliased PIOA_PCIER_Register;
      --  Parallel Capture Interrupt Disable Register
      PCIDR   : aliased PIOA_PCIDR_Register;
      --  Parallel Capture Interrupt Mask Register
      PCIMR   : aliased PIOA_PCIMR_Register;
      --  Parallel Capture Interrupt Status Register
      PCISR   : aliased PIOA_PCISR_Register;
      --  Parallel Capture Reception Holding Register
      PCRHR   : aliased Interfaces.SAM.UInt32;
      --  Receive Pointer Register
      RPR     : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR     : aliased PIOA_RCR_Register;
      --  Receive Next Pointer Register
      RNPR    : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR    : aliased PIOA_RNCR_Register;
      --  Transfer Control Register
      PTCR    : aliased PIOA_PTCR_Register;
      --  Transfer Status Register
      PTSR    : aliased PIOA_PTSR_Register;
   end record
     with Volatile;

   for PIOA_Peripheral use record
      PER     at 16#0# range 0 .. 31;
      PDR     at 16#4# range 0 .. 31;
      PSR     at 16#8# range 0 .. 31;
      OER     at 16#10# range 0 .. 31;
      ODR     at 16#14# range 0 .. 31;
      OSR     at 16#18# range 0 .. 31;
      IFER    at 16#20# range 0 .. 31;
      IFDR    at 16#24# range 0 .. 31;
      IFSR    at 16#28# range 0 .. 31;
      SODR    at 16#30# range 0 .. 31;
      CODR    at 16#34# range 0 .. 31;
      ODSR    at 16#38# range 0 .. 31;
      PDSR    at 16#3C# range 0 .. 31;
      IER     at 16#40# range 0 .. 31;
      IDR     at 16#44# range 0 .. 31;
      IMR     at 16#48# range 0 .. 31;
      ISR     at 16#4C# range 0 .. 31;
      MDER    at 16#50# range 0 .. 31;
      MDDR    at 16#54# range 0 .. 31;
      MDSR    at 16#58# range 0 .. 31;
      PUDR    at 16#60# range 0 .. 31;
      PUER    at 16#64# range 0 .. 31;
      PUSR    at 16#68# range 0 .. 31;
      ABCDSR  at 16#70# range 0 .. 63;
      IFSCDR  at 16#80# range 0 .. 31;
      IFSCER  at 16#84# range 0 .. 31;
      IFSCSR  at 16#88# range 0 .. 31;
      SCDR    at 16#8C# range 0 .. 31;
      PPDDR   at 16#90# range 0 .. 31;
      PPDER   at 16#94# range 0 .. 31;
      PPDSR   at 16#98# range 0 .. 31;
      OWER    at 16#A0# range 0 .. 31;
      OWDR    at 16#A4# range 0 .. 31;
      OWSR    at 16#A8# range 0 .. 31;
      AIMER   at 16#B0# range 0 .. 31;
      AIMDR   at 16#B4# range 0 .. 31;
      AIMMR   at 16#B8# range 0 .. 31;
      ESR     at 16#C0# range 0 .. 31;
      LSR     at 16#C4# range 0 .. 31;
      ELSR    at 16#C8# range 0 .. 31;
      FELLSR  at 16#D0# range 0 .. 31;
      REHLSR  at 16#D4# range 0 .. 31;
      FRLHSR  at 16#D8# range 0 .. 31;
      LOCKSR  at 16#E0# range 0 .. 31;
      WPMR    at 16#E4# range 0 .. 31;
      WPSR    at 16#E8# range 0 .. 31;
      SCHMITT at 16#100# range 0 .. 31;
      PCMR    at 16#150# range 0 .. 31;
      PCIER   at 16#154# range 0 .. 31;
      PCIDR   at 16#158# range 0 .. 31;
      PCIMR   at 16#15C# range 0 .. 31;
      PCISR   at 16#160# range 0 .. 31;
      PCRHR   at 16#164# range 0 .. 31;
      RPR     at 16#168# range 0 .. 31;
      RCR     at 16#16C# range 0 .. 31;
      RNPR    at 16#178# range 0 .. 31;
      RNCR    at 16#17C# range 0 .. 31;
      PTCR    at 16#188# range 0 .. 31;
      PTSR    at 16#18C# range 0 .. 31;
   end record;

   --  Parallel Input/Output Controller A
   PIOA_Periph : aliased PIOA_Peripheral
     with Import, Address => PIOA_Base;

   --  Parallel Input/Output Controller B
   type PIO_Peripheral is record
      --  PIO Enable Register
      PER     : aliased PIOA_PER_Register;
      --  PIO Disable Register
      PDR     : aliased PIOA_PDR_Register;
      --  PIO Status Register
      PSR     : aliased PIOA_PSR_Register;
      --  Output Enable Register
      OER     : aliased PIOA_OER_Register;
      --  Output Disable Register
      ODR     : aliased PIOA_ODR_Register;
      --  Output Status Register
      OSR     : aliased PIOA_OSR_Register;
      --  Glitch Input Filter Enable Register
      IFER    : aliased PIOA_IFER_Register;
      --  Glitch Input Filter Disable Register
      IFDR    : aliased PIOA_IFDR_Register;
      --  Glitch Input Filter Status Register
      IFSR    : aliased PIOA_IFSR_Register;
      --  Set Output Data Register
      SODR    : aliased PIOA_SODR_Register;
      --  Clear Output Data Register
      CODR    : aliased PIOA_CODR_Register;
      --  Output Data Status Register
      ODSR    : aliased PIOA_ODSR_Register;
      --  Pin Data Status Register
      PDSR    : aliased PIOA_PDSR_Register;
      --  Interrupt Enable Register
      IER     : aliased PIOA_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased PIOA_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased PIOA_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased PIOA_ISR_Register;
      --  Multi-driver Enable Register
      MDER    : aliased PIOA_MDER_Register;
      --  Multi-driver Disable Register
      MDDR    : aliased PIOA_MDDR_Register;
      --  Multi-driver Status Register
      MDSR    : aliased PIOA_MDSR_Register;
      --  Pull-up Disable Register
      PUDR    : aliased PIOA_PUDR_Register;
      --  Pull-up Enable Register
      PUER    : aliased PIOA_PUER_Register;
      --  Pad Pull-up Status Register
      PUSR    : aliased PIOA_PUSR_Register;
      --  Peripheral Select Register
      ABCDSR  : aliased PIOA_ABCDSR_Registers;
      --  Input Filter Slow Clock Disable Register
      IFSCDR  : aliased PIOA_IFSCDR_Register;
      --  Input Filter Slow Clock Enable Register
      IFSCER  : aliased PIOA_IFSCER_Register;
      --  Input Filter Slow Clock Status Register
      IFSCSR  : aliased PIOA_IFSCSR_Register;
      --  Slow Clock Divider Debouncing Register
      SCDR    : aliased PIOA_SCDR_Register;
      --  Pad Pull-down Disable Register
      PPDDR   : aliased PIOA_PPDDR_Register;
      --  Pad Pull-down Enable Register
      PPDER   : aliased PIOA_PPDER_Register;
      --  Pad Pull-down Status Register
      PPDSR   : aliased PIOA_PPDSR_Register;
      --  Output Write Enable
      OWER    : aliased PIOA_OWER_Register;
      --  Output Write Disable
      OWDR    : aliased PIOA_OWDR_Register;
      --  Output Write Status Register
      OWSR    : aliased PIOA_OWSR_Register;
      --  Additional Interrupt Modes Enable Register
      AIMER   : aliased PIOA_AIMER_Register;
      --  Additional Interrupt Modes Disables Register
      AIMDR   : aliased PIOA_AIMDR_Register;
      --  Additional Interrupt Modes Mask Register
      AIMMR   : aliased PIOA_AIMMR_Register;
      --  Edge Select Register
      ESR     : aliased PIOA_ESR_Register;
      --  Level Select Register
      LSR     : aliased PIOA_LSR_Register;
      --  Edge/Level Status Register
      ELSR    : aliased PIOA_ELSR_Register;
      --  Falling Edge/Low Level Select Register
      FELLSR  : aliased PIOA_FELLSR_Register;
      --  Rising Edge/ High Level Select Register
      REHLSR  : aliased PIOA_REHLSR_Register;
      --  Fall/Rise - Low/High Status Register
      FRLHSR  : aliased PIOA_FRLHSR_Register;
      --  Lock Status
      LOCKSR  : aliased PIOA_LOCKSR_Register;
      --  Write Protect Mode Register
      WPMR    : aliased PIOA_WPMR_Register;
      --  Write Protect Status Register
      WPSR    : aliased PIOA_WPSR_Register;
      --  Schmitt Trigger Register
      SCHMITT : aliased PIOA_SCHMITT_Register;
      --  Parallel Capture Mode Register
      PCMR    : aliased PIOA_PCMR_Register;
      --  Parallel Capture Interrupt Enable Register
      PCIER   : aliased PIOA_PCIER_Register;
      --  Parallel Capture Interrupt Disable Register
      PCIDR   : aliased PIOA_PCIDR_Register;
      --  Parallel Capture Interrupt Mask Register
      PCIMR   : aliased PIOA_PCIMR_Register;
      --  Parallel Capture Interrupt Status Register
      PCISR   : aliased PIOA_PCISR_Register;
      --  Parallel Capture Reception Holding Register
      PCRHR   : aliased Interfaces.SAM.UInt32;
   end record
     with Volatile;

   for PIO_Peripheral use record
      PER     at 16#0# range 0 .. 31;
      PDR     at 16#4# range 0 .. 31;
      PSR     at 16#8# range 0 .. 31;
      OER     at 16#10# range 0 .. 31;
      ODR     at 16#14# range 0 .. 31;
      OSR     at 16#18# range 0 .. 31;
      IFER    at 16#20# range 0 .. 31;
      IFDR    at 16#24# range 0 .. 31;
      IFSR    at 16#28# range 0 .. 31;
      SODR    at 16#30# range 0 .. 31;
      CODR    at 16#34# range 0 .. 31;
      ODSR    at 16#38# range 0 .. 31;
      PDSR    at 16#3C# range 0 .. 31;
      IER     at 16#40# range 0 .. 31;
      IDR     at 16#44# range 0 .. 31;
      IMR     at 16#48# range 0 .. 31;
      ISR     at 16#4C# range 0 .. 31;
      MDER    at 16#50# range 0 .. 31;
      MDDR    at 16#54# range 0 .. 31;
      MDSR    at 16#58# range 0 .. 31;
      PUDR    at 16#60# range 0 .. 31;
      PUER    at 16#64# range 0 .. 31;
      PUSR    at 16#68# range 0 .. 31;
      ABCDSR  at 16#70# range 0 .. 63;
      IFSCDR  at 16#80# range 0 .. 31;
      IFSCER  at 16#84# range 0 .. 31;
      IFSCSR  at 16#88# range 0 .. 31;
      SCDR    at 16#8C# range 0 .. 31;
      PPDDR   at 16#90# range 0 .. 31;
      PPDER   at 16#94# range 0 .. 31;
      PPDSR   at 16#98# range 0 .. 31;
      OWER    at 16#A0# range 0 .. 31;
      OWDR    at 16#A4# range 0 .. 31;
      OWSR    at 16#A8# range 0 .. 31;
      AIMER   at 16#B0# range 0 .. 31;
      AIMDR   at 16#B4# range 0 .. 31;
      AIMMR   at 16#B8# range 0 .. 31;
      ESR     at 16#C0# range 0 .. 31;
      LSR     at 16#C4# range 0 .. 31;
      ELSR    at 16#C8# range 0 .. 31;
      FELLSR  at 16#D0# range 0 .. 31;
      REHLSR  at 16#D4# range 0 .. 31;
      FRLHSR  at 16#D8# range 0 .. 31;
      LOCKSR  at 16#E0# range 0 .. 31;
      WPMR    at 16#E4# range 0 .. 31;
      WPSR    at 16#E8# range 0 .. 31;
      SCHMITT at 16#100# range 0 .. 31;
      PCMR    at 16#150# range 0 .. 31;
      PCIER   at 16#154# range 0 .. 31;
      PCIDR   at 16#158# range 0 .. 31;
      PCIMR   at 16#15C# range 0 .. 31;
      PCISR   at 16#160# range 0 .. 31;
      PCRHR   at 16#164# range 0 .. 31;
   end record;

   --  Parallel Input/Output Controller B
   PIOB_Periph : aliased PIO_Peripheral
     with Import, Address => PIOB_Base;

   --  Parallel Input/Output Controller C
   PIOC_Periph : aliased PIO_Peripheral
     with Import, Address => PIOC_Base;

end Interfaces.SAM.PIO;
