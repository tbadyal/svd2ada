--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  System Control Block (SCB)
package Interfaces.SAM.SCB is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SCB_ACTLR_DISMCYCINT_Field is Interfaces.SAM.Bit;
   subtype SCB_ACTLR_DISDEFWBUF_Field is Interfaces.SAM.Bit;
   subtype SCB_ACTLR_DISFOLD_Field is Interfaces.SAM.Bit;
   --  SCB_ACTLR_RESERVED array element
   subtype SCB_ACTLR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_ACTLR_RESERVED array
   type SCB_ACTLR_RESERVED_Field_Array is array (1 .. 29)
     of SCB_ACTLR_RESERVED_Element
     with Component_Size => 1, Size => 29;

   --  Type definition for SCB_ACTLR_RESERVED
   type SCB_ACTLR_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt29;
         when True =>
            --  RESERVED as an array
            Arr : SCB_ACTLR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 29;

   for SCB_ACTLR_RESERVED_Field use record
      Val at 0 range 0 .. 28;
      Arr at 0 range 0 .. 28;
   end record;

   --  Auxiliary Control Register,
   type SCB_ACTLR_Register is record
      --  Disables interruption of multi-cycle instructions.
      DISMCYCINT : SCB_ACTLR_DISMCYCINT_Field := 16#0#;
      --  Disables write buffer use during default memory map accesses.
      DISDEFWBUF : SCB_ACTLR_DISDEFWBUF_Field := 16#0#;
      --  Disables folding of IT instructions.
      DISFOLD    : SCB_ACTLR_DISFOLD_Field := 16#0#;
      --  Read-only. Reserved
      RESERVED   : SCB_ACTLR_RESERVED_Field :=
                    (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ACTLR_Register use record
      DISMCYCINT at 0 range 0 .. 0;
      DISDEFWBUF at 0 range 1 .. 1;
      DISFOLD    at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 31;
   end record;

   subtype SCB_CPUID_REVISION_Field is Interfaces.SAM.UInt4;
   subtype SCB_CPUID_PARTNO_Field is Interfaces.SAM.UInt12;
   --  SCB_CPUID_RESERVED array element
   subtype SCB_CPUID_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_CPUID_RESERVED array
   type SCB_CPUID_RESERVED_Field_Array is array (1 .. 4)
     of SCB_CPUID_RESERVED_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SCB_CPUID_RESERVED
   type SCB_CPUID_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  RESERVED as an array
            Arr : SCB_CPUID_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SCB_CPUID_RESERVED_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SCB_CPUID_VARIANT_Field is Interfaces.SAM.UInt4;
   subtype SCB_CPUID_IMPLEMENTER_Field is Interfaces.SAM.Byte;

   --  CPUID Base Register
   type SCB_CPUID_Register is record
      --  Read-only. Indicates patch release: 0x0 = Patch 0
      REVISION    : SCB_CPUID_REVISION_Field;
      --  Read-only. Indicates part number
      PARTNO      : SCB_CPUID_PARTNO_Field;
      --  Read-only. (Constant) Reads as 1
      RESERVED    : SCB_CPUID_RESERVED_Field;
      --  Read-only. Indicates processor revision: 0x2 = Revision 2
      VARIANT     : SCB_CPUID_VARIANT_Field;
      --  Read-only. Implementer code
      IMPLEMENTER : SCB_CPUID_IMPLEMENTER_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CPUID_Register use record
      REVISION    at 0 range 0 .. 3;
      PARTNO      at 0 range 4 .. 15;
      RESERVED    at 0 range 16 .. 19;
      VARIANT     at 0 range 20 .. 23;
      IMPLEMENTER at 0 range 24 .. 31;
   end record;

   subtype SCB_ICSR_VECTACTIVE_Field is Interfaces.SAM.UInt9;
   --  SCB_ICSR_RESERVED array element
   subtype SCB_ICSR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_ICSR_RESERVED array
   type SCB_ICSR_RESERVED_Field_Array is array (1 .. 2)
     of SCB_ICSR_RESERVED_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for SCB_ICSR_RESERVED
   type SCB_ICSR_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  RESERVED as an array
            Arr : SCB_ICSR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SCB_ICSR_RESERVED_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  no description available
   type ICSR_RETTOBASE_Field is
     (--  there are preempted active exceptions to execute
      Val_0,
      --  there are no active exceptions, or the currently-executing exception is the
--  only active exception
      Val_1)
     with Size => 1;
   for ICSR_RETTOBASE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SCB_ICSR_VECTPENDING_Field is Interfaces.SAM.UInt6;

   --  SCB_ICSR_RESERVED array
   type SCB_ICSR_RESERVED_Field_Array_1 is array (1 .. 4)
     of SCB_ICSR_RESERVED_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SCB_ICSR_RESERVED
   type SCB_ICSR_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  RESERVED as an array
            Arr : SCB_ICSR_RESERVED_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SCB_ICSR_RESERVED_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype SCB_ICSR_ISRPENDING_Field is Interfaces.SAM.Bit;

   --  no description available
   type ICSR_ISRPREEMPT_Field is
     (--  Will not service
      Val_0,
      --  Will service a pending exception
      Val_1)
     with Size => 1;
   for ICSR_ISRPREEMPT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SCB_ICSR_RESERVED_Field_2 is Interfaces.SAM.Bit;

   --  no description available
   type ICSR_PENDSTCLR_Field is
     (--  no effect
      Val_0,
      --  removes the pending state from the SysTick exception
      Val_1)
     with Size => 1;
   for ICSR_PENDSTCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type ICSR_PENDSTSET_Field is
     (--  write: no effect; read: SysTick exception is not pending
      Val_0,
      --  write: changes SysTick exception state to pending; read: SysTick exception
--  is pending
      Val_1)
     with Size => 1;
   for ICSR_PENDSTSET_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type ICSR_PENDSVCLR_Field is
     (--  no effect
      Val_0,
      --  removes the pending state from the PendSV exception
      Val_1)
     with Size => 1;
   for ICSR_PENDSVCLR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type ICSR_PENDSVSET_Field is
     (--  write: no effect; read: PendSV exception is not pending
      Val_0,
      --  write: changes PendSV exception state to pending; read: PendSV exception is
--  pending
      Val_1)
     with Size => 1;
   for ICSR_PENDSVSET_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type ICSR_NMIPENDSET_Field is
     (--  write: no effect; read: NMI exception is not pending
      Val_0,
      --  write: changes NMI exception state to pending; read: NMI exception is
--  pending
      Val_1)
     with Size => 1;
   for ICSR_NMIPENDSET_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Interrupt Control and State Register
   type SCB_ICSR_Register is record
      --  Read-only. Active exception number
      VECTACTIVE  : SCB_ICSR_VECTACTIVE_Field := 16#0#;
      --  Read-only. Reserved
      RESERVED    : SCB_ICSR_RESERVED_Field :=
                     (As_Array => False, Val => 16#0#);
      --  Read-only. no description available
      RETTOBASE   : ICSR_RETTOBASE_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Exception number of the highest priority pending enabled
      --  exception
      VECTPENDING : SCB_ICSR_VECTPENDING_Field := 16#0#;
      --  Read-only. Reserved
      RESERVED_1  : SCB_ICSR_RESERVED_Field_1 :=
                     (As_Array => False, Val => 16#0#);
      --  Read-only. no description available
      ISRPENDING  : SCB_ICSR_ISRPENDING_Field := 16#0#;
      --  Read-only. no description available
      ISRPREEMPT  : ICSR_ISRPREEMPT_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED_2  : SCB_ICSR_RESERVED_Field_2 := 16#0#;
      --  Write-only. no description available
      PENDSTCLR   : ICSR_PENDSTCLR_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      PENDSTSET   : ICSR_PENDSTSET_Field := Interfaces.SAM.SCB.Val_0;
      --  Write-only. no description available
      PENDSVCLR   : ICSR_PENDSVCLR_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      PENDSVSET   : ICSR_PENDSVSET_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED_3  : SCB_ICSR_RESERVED_Field :=
                     (As_Array => False, Val => 16#0#);
      --  no description available
      NMIPENDSET  : ICSR_NMIPENDSET_Field := Interfaces.SAM.SCB.Val_0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ICSR_Register use record
      VECTACTIVE  at 0 range 0 .. 8;
      RESERVED    at 0 range 9 .. 10;
      RETTOBASE   at 0 range 11 .. 11;
      VECTPENDING at 0 range 12 .. 17;
      RESERVED_1  at 0 range 18 .. 21;
      ISRPENDING  at 0 range 22 .. 22;
      ISRPREEMPT  at 0 range 23 .. 23;
      RESERVED_2  at 0 range 24 .. 24;
      PENDSTCLR   at 0 range 25 .. 25;
      PENDSTSET   at 0 range 26 .. 26;
      PENDSVCLR   at 0 range 27 .. 27;
      PENDSVSET   at 0 range 28 .. 28;
      RESERVED_3  at 0 range 29 .. 30;
      NMIPENDSET  at 0 range 31 .. 31;
   end record;

   --  SCB_VTOR_RESERVED array element
   subtype SCB_VTOR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_VTOR_RESERVED array
   type SCB_VTOR_RESERVED_Field_Array is array (1 .. 7)
     of SCB_VTOR_RESERVED_Element
     with Component_Size => 1, Size => 7;

   --  Type definition for SCB_VTOR_RESERVED
   type SCB_VTOR_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt7;
         when True =>
            --  RESERVED as an array
            Arr : SCB_VTOR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for SCB_VTOR_RESERVED_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   subtype SCB_VTOR_TBLOFF_Field is Interfaces.SAM.UInt25;

   --  Vector Table Offset Register
   type SCB_VTOR_Register is record
      --  Reserved
      RESERVED : SCB_VTOR_RESERVED_Field := (As_Array => False, Val => 16#0#);
      --  Vector table base offset
      TBLOFF   : SCB_VTOR_TBLOFF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_VTOR_Register use record
      RESERVED at 0 range 0 .. 6;
      TBLOFF   at 0 range 7 .. 31;
   end record;

   subtype SCB_AIRCR_VECTRESET_Field is Interfaces.SAM.Bit;
   subtype SCB_AIRCR_VECTCLRACTIVE_Field is Interfaces.SAM.Bit;

   --  no description available
   type AIRCR_SYSRESETREQ_Field is
     (--  no system reset request
      Val_0,
      --  asserts a signal to the outer system that requests a reset
      Val_1)
     with Size => 1;
   for AIRCR_SYSRESETREQ_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SCB_AIRCR_RESERVED array element
   subtype SCB_AIRCR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_AIRCR_RESERVED array
   type SCB_AIRCR_RESERVED_Field_Array is array (1 .. 5)
     of SCB_AIRCR_RESERVED_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for SCB_AIRCR_RESERVED
   type SCB_AIRCR_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt5;
         when True =>
            --  RESERVED as an array
            Arr : SCB_AIRCR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for SCB_AIRCR_RESERVED_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype SCB_AIRCR_PRIGROUP_Field is Interfaces.SAM.UInt3;

   --  SCB_AIRCR_RESERVED array
   type SCB_AIRCR_RESERVED_Field_Array_1 is array (1 .. 4)
     of SCB_AIRCR_RESERVED_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SCB_AIRCR_RESERVED
   type SCB_AIRCR_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  RESERVED as an array
            Arr : SCB_AIRCR_RESERVED_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SCB_AIRCR_RESERVED_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  no description available
   type AIRCR_ENDIANNESS_Field is
     (--  Little-endian
      Val_0,
      --  Big-endian
      Val_1)
     with Size => 1;
   for AIRCR_ENDIANNESS_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SCB_AIRCR_VECTKEY_Field is Interfaces.SAM.UInt16;

   --  Application Interrupt and Reset Control Register
   type SCB_AIRCR_Register is record
      --  Write-only. no description available
      VECTRESET     : SCB_AIRCR_VECTRESET_Field := 16#0#;
      --  Write-only. no description available
      VECTCLRACTIVE : SCB_AIRCR_VECTCLRACTIVE_Field := 16#0#;
      --  Write-only. no description available
      SYSRESETREQ   : AIRCR_SYSRESETREQ_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED      : SCB_AIRCR_RESERVED_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Interrupt priority grouping field. This field determines the split of
      --  group priority from subpriority.
      PRIGROUP      : SCB_AIRCR_PRIGROUP_Field := 16#0#;
      --  Read-only. Reserved
      RESERVED_1    : SCB_AIRCR_RESERVED_Field_1 :=
                       (As_Array => False, Val => 16#0#);
      --  Read-only. no description available
      ENDIANNESS    : AIRCR_ENDIANNESS_Field := Interfaces.SAM.SCB.Val_0;
      --  Register key
      VECTKEY       : SCB_AIRCR_VECTKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_AIRCR_Register use record
      VECTRESET     at 0 range 0 .. 0;
      VECTCLRACTIVE at 0 range 1 .. 1;
      SYSRESETREQ   at 0 range 2 .. 2;
      RESERVED      at 0 range 3 .. 7;
      PRIGROUP      at 0 range 8 .. 10;
      RESERVED_1    at 0 range 11 .. 14;
      ENDIANNESS    at 0 range 15 .. 15;
      VECTKEY       at 0 range 16 .. 31;
   end record;

   subtype SCB_SCR_RESERVED_Field is Interfaces.SAM.Bit;

   --  no description available
   type SCR_SLEEPONEXIT_Field is
     (--  o not sleep when returning to Thread mode
      Val_0,
      --  enter sleep, or deep sleep, on return from an ISR
      Val_1)
     with Size => 1;
   for SCR_SLEEPONEXIT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SCR_SLEEPDEEP_Field is
     (--  sleep
      Val_0,
      --  deep sleep
      Val_1)
     with Size => 1;
   for SCR_SLEEPDEEP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SCR_SEVONPEND_Field is
     (--  only enabled interrupts or events can wakeup the processor, disabled
--  interrupts are excluded
      Val_0,
      --  enabled events and all interrupts, including disabled interrupts, can
--  wakeup the processor
      Val_1)
     with Size => 1;
   for SCR_SEVONPEND_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SCB_SCR_RESERVED array element
   subtype SCB_SCR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_SCR_RESERVED array
   type SCB_SCR_RESERVED_Field_Array is array (1 .. 27)
     of SCB_SCR_RESERVED_Element
     with Component_Size => 1, Size => 27;

   --  Type definition for SCB_SCR_RESERVED
   type SCB_SCR_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt27;
         when True =>
            --  RESERVED as an array
            Arr : SCB_SCR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for SCB_SCR_RESERVED_Field_1 use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  System Control Register
   type SCB_SCR_Register is record
      --  Read-only. Reserved
      RESERVED    : SCB_SCR_RESERVED_Field := 16#0#;
      --  no description available
      SLEEPONEXIT : SCR_SLEEPONEXIT_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      SLEEPDEEP   : SCR_SLEEPDEEP_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED_1  : SCB_SCR_RESERVED_Field := 16#0#;
      --  no description available
      SEVONPEND   : SCR_SEVONPEND_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED_2  : SCB_SCR_RESERVED_Field_1 :=
                     (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SCR_Register use record
      RESERVED    at 0 range 0 .. 0;
      SLEEPONEXIT at 0 range 1 .. 1;
      SLEEPDEEP   at 0 range 2 .. 2;
      RESERVED_1  at 0 range 3 .. 3;
      SEVONPEND   at 0 range 4 .. 4;
      RESERVED_2  at 0 range 5 .. 31;
   end record;

   --  no description available
   type CCR_NONBASETHRDENA_Field is
     (--  processor can enter Thread mode only when no exception is active
      Val_0,
      --  processor can enter Thread mode from any level under the control of an
--  EXC_RETURN value
      Val_1)
     with Size => 1;
   for CCR_NONBASETHRDENA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Enables unprivileged software access to the STIR
   type CCR_USERSETMPEND_Field is
     (--  disable
      Val_0,
      --  enable
      Val_1)
     with Size => 1;
   for CCR_USERSETMPEND_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SCB_CCR_RESERVED_Field is Interfaces.SAM.Bit;

   --  Enables unaligned access traps
   type CCR_UNALIGN_TRP_Field is
     (--  do not trap unaligned halfword and word accesses
      Val_0,
      --  trap unaligned halfword and word accesses
      Val_1)
     with Size => 1;
   for CCR_UNALIGN_TRP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Enables faulting or halting when the processor executes an SDIV or UDIV
   --  instruction with a divisor of 0
   type CCR_DIV_0_TRP_Field is
     (--  do not trap divide by 0
      Val_0,
      --  trap divide by 0
      Val_1)
     with Size => 1;
   for CCR_DIV_0_TRP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SCB_CCR_RESERVED array element
   subtype SCB_CCR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_CCR_RESERVED array
   type SCB_CCR_RESERVED_Field_Array is array (1 .. 3)
     of SCB_CCR_RESERVED_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for SCB_CCR_RESERVED
   type SCB_CCR_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt3;
         when True =>
            --  RESERVED as an array
            Arr : SCB_CCR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SCB_CCR_RESERVED_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Enables handlers with priority -1 or -2 to ignore data BusFaults caused
   --  by load and store instructions.
   type CCR_BFHFNMIGN_Field is
     (--  data bus faults caused by load and store instructions cause a lock-up
      Val_0,
      --  handlers running at priority -1 and -2 ignore data bus faults caused by
--  load and store instructions
      Val_1)
     with Size => 1;
   for CCR_BFHFNMIGN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  Indicates stack alignment on exception entry
   type CCR_STKALIGN_Field is
     (--  4-byte aligned
      Val_0,
      --  8-byte aligned
      Val_1)
     with Size => 1;
   for CCR_STKALIGN_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SCB_CCR_RESERVED array
   type SCB_CCR_RESERVED_Field_Array_1 is array (1 .. 22)
     of SCB_CCR_RESERVED_Element
     with Component_Size => 1, Size => 22;

   --  Type definition for SCB_CCR_RESERVED
   type SCB_CCR_RESERVED_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt22;
         when True =>
            --  RESERVED as an array
            Arr : SCB_CCR_RESERVED_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 22;

   for SCB_CCR_RESERVED_Field_2 use record
      Val at 0 range 0 .. 21;
      Arr at 0 range 0 .. 21;
   end record;

   --  Configuration and Control Register
   type SCB_CCR_Register is record
      --  no description available
      NONBASETHRDENA : CCR_NONBASETHRDENA_Field := Interfaces.SAM.SCB.Val_0;
      --  Enables unprivileged software access to the STIR
      USERSETMPEND   : CCR_USERSETMPEND_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED       : SCB_CCR_RESERVED_Field := 16#0#;
      --  Enables unaligned access traps
      UNALIGN_TRP    : CCR_UNALIGN_TRP_Field := Interfaces.SAM.SCB.Val_0;
      --  Enables faulting or halting when the processor executes an SDIV or
      --  UDIV instruction with a divisor of 0
      DIV_0_TRP      : CCR_DIV_0_TRP_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED_1     : SCB_CCR_RESERVED_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  Enables handlers with priority -1 or -2 to ignore data BusFaults
      --  caused by load and store instructions.
      BFHFNMIGN      : CCR_BFHFNMIGN_Field := Interfaces.SAM.SCB.Val_0;
      --  Indicates stack alignment on exception entry
      STKALIGN       : CCR_STKALIGN_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED_2     : SCB_CCR_RESERVED_Field_2 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CCR_Register use record
      NONBASETHRDENA at 0 range 0 .. 0;
      USERSETMPEND   at 0 range 1 .. 1;
      RESERVED       at 0 range 2 .. 2;
      UNALIGN_TRP    at 0 range 3 .. 3;
      DIV_0_TRP      at 0 range 4 .. 4;
      RESERVED_1     at 0 range 5 .. 7;
      BFHFNMIGN      at 0 range 8 .. 8;
      STKALIGN       at 0 range 9 .. 9;
      RESERVED_2     at 0 range 10 .. 31;
   end record;

   subtype SCB_SHPR1_PRI_4_Field is Interfaces.SAM.Byte;
   subtype SCB_SHPR1_PRI_5_Field is Interfaces.SAM.Byte;
   subtype SCB_SHPR1_PRI_6_Field is Interfaces.SAM.Byte;
   --  SCB_SHPR1_RESERVED array element
   subtype SCB_SHPR1_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_SHPR1_RESERVED array
   type SCB_SHPR1_RESERVED_Field_Array is array (1 .. 8)
     of SCB_SHPR1_RESERVED_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for SCB_SHPR1_RESERVED
   type SCB_SHPR1_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  RESERVED as an array
            Arr : SCB_SHPR1_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for SCB_SHPR1_RESERVED_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  System Handler Priority Register 1
   type SCB_SHPR1_Register is record
      --  Priority of system handler 4, MemManage
      PRI_4    : SCB_SHPR1_PRI_4_Field := 16#0#;
      --  Priority of system handler 5, BusFault
      PRI_5    : SCB_SHPR1_PRI_5_Field := 16#0#;
      --  Priority of system handler 6, UsageFault
      PRI_6    : SCB_SHPR1_PRI_6_Field := 16#0#;
      --  Read-only. Reserved
      RESERVED : SCB_SHPR1_RESERVED_Field :=
                  (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHPR1_Register use record
      PRI_4    at 0 range 0 .. 7;
      PRI_5    at 0 range 8 .. 15;
      PRI_6    at 0 range 16 .. 23;
      RESERVED at 0 range 24 .. 31;
   end record;

   --  SCB_SHPR2_RESERVED array element
   subtype SCB_SHPR2_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_SHPR2_RESERVED array
   type SCB_SHPR2_RESERVED_Field_Array is array (1 .. 24)
     of SCB_SHPR2_RESERVED_Element
     with Component_Size => 1, Size => 24;

   --  Type definition for SCB_SHPR2_RESERVED
   type SCB_SHPR2_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt24;
         when True =>
            --  RESERVED as an array
            Arr : SCB_SHPR2_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for SCB_SHPR2_RESERVED_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   subtype SCB_SHPR2_PRI_11_Field is Interfaces.SAM.Byte;

   --  System Handler Priority Register 2
   type SCB_SHPR2_Register is record
      --  Read-only. Reserved
      RESERVED : SCB_SHPR2_RESERVED_Field :=
                  (As_Array => False, Val => 16#0#);
      --  Priority of system handler 11, SVCall
      PRI_11   : SCB_SHPR2_PRI_11_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHPR2_Register use record
      RESERVED at 0 range 0 .. 23;
      PRI_11   at 0 range 24 .. 31;
   end record;

   --  SCB_SHPR3_RESERVED array element
   subtype SCB_SHPR3_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_SHPR3_RESERVED array
   type SCB_SHPR3_RESERVED_Field_Array is array (1 .. 16)
     of SCB_SHPR3_RESERVED_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for SCB_SHPR3_RESERVED
   type SCB_SHPR3_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt16;
         when True =>
            --  RESERVED as an array
            Arr : SCB_SHPR3_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SCB_SHPR3_RESERVED_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype SCB_SHPR3_PRI_14_Field is Interfaces.SAM.Byte;
   subtype SCB_SHPR3_PRI_15_Field is Interfaces.SAM.Byte;

   --  System Handler Priority Register 3
   type SCB_SHPR3_Register is record
      --  Read-only. Reserved
      RESERVED : SCB_SHPR3_RESERVED_Field :=
                  (As_Array => False, Val => 16#0#);
      --  Priority of system handler 14, PendSV
      PRI_14   : SCB_SHPR3_PRI_14_Field := 16#0#;
      --  Priority of system handler 15, SysTick exception
      PRI_15   : SCB_SHPR3_PRI_15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHPR3_Register use record
      RESERVED at 0 range 0 .. 15;
      PRI_14   at 0 range 16 .. 23;
      PRI_15   at 0 range 24 .. 31;
   end record;

   --  no description available
   type SHCSR_MEMFAULTACT_Field is
     (--  exception is not active
      Val_0,
      --  exception is active
      Val_1)
     with Size => 1;
   for SHCSR_MEMFAULTACT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SHCSR_BUSFAULTACT_Field is
     (--  exception is not active
      Val_0,
      --  exception is active
      Val_1)
     with Size => 1;
   for SHCSR_BUSFAULTACT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SCB_SHCSR_RESERVED_Field is Interfaces.SAM.Bit;

   --  no description available
   type SHCSR_USGFAULTACT_Field is
     (--  exception is not active
      Val_0,
      --  exception is active
      Val_1)
     with Size => 1;
   for SHCSR_USGFAULTACT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SCB_SHCSR_RESERVED array element
   subtype SCB_SHCSR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_SHCSR_RESERVED array
   type SCB_SHCSR_RESERVED_Field_Array is array (1 .. 3)
     of SCB_SHCSR_RESERVED_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for SCB_SHCSR_RESERVED
   type SCB_SHCSR_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt3;
         when True =>
            --  RESERVED as an array
            Arr : SCB_SHCSR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SCB_SHCSR_RESERVED_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  no description available
   type SHCSR_SVCALLACT_Field is
     (--  exception is not active
      Val_0,
      --  exception is active
      Val_1)
     with Size => 1;
   for SHCSR_SVCALLACT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SHCSR_MONITORACT_Field is
     (--  exception is not active
      Val_0,
      --  exception is active
      Val_1)
     with Size => 1;
   for SHCSR_MONITORACT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SHCSR_PENDSVACT_Field is
     (--  exception is not active
      Val_0,
      --  exception is active
      Val_1)
     with Size => 1;
   for SHCSR_PENDSVACT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SHCSR_SYSTICKACT_Field is
     (--  exception is not active
      Val_0,
      --  exception is active
      Val_1)
     with Size => 1;
   for SHCSR_SYSTICKACT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SHCSR_USGFAULTPENDED_Field is
     (--  exception is not pending
      Val_0,
      --  exception is pending
      Val_1)
     with Size => 1;
   for SHCSR_USGFAULTPENDED_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SHCSR_MEMFAULTPENDED_Field is
     (--  exception is not pending
      Val_0,
      --  exception is pending
      Val_1)
     with Size => 1;
   for SHCSR_MEMFAULTPENDED_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SHCSR_BUSFAULTPENDED_Field is
     (--  exception is not pending
      Val_0,
      --  exception is pending
      Val_1)
     with Size => 1;
   for SHCSR_BUSFAULTPENDED_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SHCSR_SVCALLPENDED_Field is
     (--  exception is not pending
      Val_0,
      --  exception is pending
      Val_1)
     with Size => 1;
   for SHCSR_SVCALLPENDED_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SHCSR_MEMFAULTENA_Field is
     (--  disable the exception
      Val_0,
      --  enable the exception
      Val_1)
     with Size => 1;
   for SHCSR_MEMFAULTENA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SHCSR_BUSFAULTENA_Field is
     (--  disable the exception
      Val_0,
      --  enable the exception
      Val_1)
     with Size => 1;
   for SHCSR_BUSFAULTENA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type SHCSR_USGFAULTENA_Field is
     (--  disable the exception
      Val_0,
      --  enable the exception
      Val_1)
     with Size => 1;
   for SHCSR_USGFAULTENA_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SCB_SHCSR_RESERVED array
   type SCB_SHCSR_RESERVED_Field_Array_1 is array (1 .. 13)
     of SCB_SHCSR_RESERVED_Element
     with Component_Size => 1, Size => 13;

   --  Type definition for SCB_SHCSR_RESERVED
   type SCB_SHCSR_RESERVED_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt13;
         when True =>
            --  RESERVED as an array
            Arr : SCB_SHCSR_RESERVED_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 13;

   for SCB_SHCSR_RESERVED_Field_2 use record
      Val at 0 range 0 .. 12;
      Arr at 0 range 0 .. 12;
   end record;

   --  System Handler Control and State Register
   type SCB_SHCSR_Register is record
      --  no description available
      MEMFAULTACT    : SHCSR_MEMFAULTACT_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      BUSFAULTACT    : SHCSR_BUSFAULTACT_Field := Interfaces.SAM.SCB.Val_0;
      --  Reserved
      RESERVED       : SCB_SHCSR_RESERVED_Field := 16#0#;
      --  no description available
      USGFAULTACT    : SHCSR_USGFAULTACT_Field := Interfaces.SAM.SCB.Val_0;
      --  Reserved
      RESERVED_1     : SCB_SHCSR_RESERVED_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  no description available
      SVCALLACT      : SHCSR_SVCALLACT_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      MONITORACT     : SHCSR_MONITORACT_Field := Interfaces.SAM.SCB.Val_0;
      --  Reserved
      RESERVED_2     : SCB_SHCSR_RESERVED_Field := 16#0#;
      --  no description available
      PENDSVACT      : SHCSR_PENDSVACT_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      SYSTICKACT     : SHCSR_SYSTICKACT_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      USGFAULTPENDED : SHCSR_USGFAULTPENDED_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      MEMFAULTPENDED : SHCSR_MEMFAULTPENDED_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      BUSFAULTPENDED : SHCSR_BUSFAULTPENDED_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      SVCALLPENDED   : SHCSR_SVCALLPENDED_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      MEMFAULTENA    : SHCSR_MEMFAULTENA_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      BUSFAULTENA    : SHCSR_BUSFAULTENA_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      USGFAULTENA    : SHCSR_USGFAULTENA_Field := Interfaces.SAM.SCB.Val_0;
      --  Reserved
      RESERVED_3     : SCB_SHCSR_RESERVED_Field_2 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHCSR_Register use record
      MEMFAULTACT    at 0 range 0 .. 0;
      BUSFAULTACT    at 0 range 1 .. 1;
      RESERVED       at 0 range 2 .. 2;
      USGFAULTACT    at 0 range 3 .. 3;
      RESERVED_1     at 0 range 4 .. 6;
      SVCALLACT      at 0 range 7 .. 7;
      MONITORACT     at 0 range 8 .. 8;
      RESERVED_2     at 0 range 9 .. 9;
      PENDSVACT      at 0 range 10 .. 10;
      SYSTICKACT     at 0 range 11 .. 11;
      USGFAULTPENDED at 0 range 12 .. 12;
      MEMFAULTPENDED at 0 range 13 .. 13;
      BUSFAULTPENDED at 0 range 14 .. 14;
      SVCALLPENDED   at 0 range 15 .. 15;
      MEMFAULTENA    at 0 range 16 .. 16;
      BUSFAULTENA    at 0 range 17 .. 17;
      USGFAULTENA    at 0 range 18 .. 18;
      RESERVED_3     at 0 range 19 .. 31;
   end record;

   --  no description available
   type CFSR_IACCVIOL_Field is
     (--  no instruction access violation fault
      Val_0,
      --  the processor attempted an instruction fetch from a location that does not
--  permit execution
      Val_1)
     with Size => 1;
   for CFSR_IACCVIOL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_DACCVIOL_Field is
     (--  no data access violation fault
      Val_0,
      --  the processor attempted a load or store at a location that does not permit
--  the operation
      Val_1)
     with Size => 1;
   for CFSR_DACCVIOL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SCB_CFSR_RESERVED_Field is Interfaces.SAM.Bit;

   --  no description available
   type CFSR_MUNSTKERR_Field is
     (--  no unstacking fault
      Val_0,
      --  unstack for an exception return has caused one or more access violations
      Val_1)
     with Size => 1;
   for CFSR_MUNSTKERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_MSTKERR_Field is
     (--  no stacking fault
      Val_0,
      --  stacking for an exception entry has caused one or more access violations
      Val_1)
     with Size => 1;
   for CFSR_MSTKERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_MLSPERR_Field is
     (--  No MemManage fault occurred during floating-point lazy state preservation
      Val_0,
      --  A MemManage fault occurred during floating-point lazy state preservation
      Val_1)
     with Size => 1;
   for CFSR_MLSPERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_MMARVALID_Field is
     (--  value in MMAR is not a valid fault address
      Val_0,
      --  MMAR holds a valid fault address
      Val_1)
     with Size => 1;
   for CFSR_MMARVALID_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_IBUSERR_Field is
     (--  no instruction bus error
      Val_0,
      --  instruction bus error
      Val_1)
     with Size => 1;
   for CFSR_IBUSERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_PRECISERR_Field is
     (--  no precise data bus error
      Val_0,
      --  a data bus error has occurred, and the PC value stacked for the exception
--  return points to the instruction that caused the fault
      Val_1)
     with Size => 1;
   for CFSR_PRECISERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_IMPRECISERR_Field is
     (--  no imprecise data bus error
      Val_0,
      --  a data bus error has occurred, but the return address in the stack frame is
--  not related to the instruction that caused the error
      Val_1)
     with Size => 1;
   for CFSR_IMPRECISERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_UNSTKERR_Field is
     (--  no unstacking fault
      Val_0,
      --  unstack for an exception return has caused one or more BusFaults
      Val_1)
     with Size => 1;
   for CFSR_UNSTKERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_STKERR_Field is
     (--  no stacking fault
      Val_0,
      --  stacking for an exception entry has caused one or more BusFaults
      Val_1)
     with Size => 1;
   for CFSR_STKERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_LSPERR_Field is
     (--  No bus fault occurred during floating-point lazy state preservation
      Val_0,
      --  A bus fault occurred during floating-point lazy state preservation
      Val_1)
     with Size => 1;
   for CFSR_LSPERR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_BFARVALID_Field is
     (--  value in BFAR is not a valid fault address
      Val_0,
      --  BFAR holds a valid fault address
      Val_1)
     with Size => 1;
   for CFSR_BFARVALID_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_UNDEFINSTR_Field is
     (--  no undefined instruction UsageFault
      Val_0,
      --  the processor has attempted to execute an undefined instruction
      Val_1)
     with Size => 1;
   for CFSR_UNDEFINSTR_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_INVSTATE_Field is
     (--  no invalid state UsageFault
      Val_0,
      --  the processor has attempted to execute an instruction that makes illegal
--  use of the EPSR
      Val_1)
     with Size => 1;
   for CFSR_INVSTATE_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_INVPC_Field is
     (--  no invalid PC load UsageFault
      Val_0,
      --  the processor has attempted an illegal load of EXC_RETURN to the PC
      Val_1)
     with Size => 1;
   for CFSR_INVPC_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_NOCP_Field is
     (--  no UsageFault caused by attempting to access a coprocessor
      Val_0,
      --  the processor has attempted to access a coprocessor
      Val_1)
     with Size => 1;
   for CFSR_NOCP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SCB_CFSR_RESERVED array element
   subtype SCB_CFSR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_CFSR_RESERVED array
   type SCB_CFSR_RESERVED_Field_Array is array (1 .. 4)
     of SCB_CFSR_RESERVED_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SCB_CFSR_RESERVED
   type SCB_CFSR_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  RESERVED as an array
            Arr : SCB_CFSR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SCB_CFSR_RESERVED_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  no description available
   type CFSR_UNALIGNED_Field is
     (--  no unaligned access fault, or unaligned access trapping not enabled
      Val_0,
      --  the processor has made an unaligned memory access
      Val_1)
     with Size => 1;
   for CFSR_UNALIGNED_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type CFSR_DIVBYZERO_Field is
     (--  no divide by zero fault, or divide by zero trapping not enabled
      Val_0,
      --  the processor has executed an SDIV or UDIV instruction with a divisor of 0
      Val_1)
     with Size => 1;
   for CFSR_DIVBYZERO_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SCB_CFSR_RESERVED array
   type SCB_CFSR_RESERVED_Field_Array_1 is array (1 .. 6)
     of SCB_CFSR_RESERVED_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for SCB_CFSR_RESERVED
   type SCB_CFSR_RESERVED_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt6;
         when True =>
            --  RESERVED as an array
            Arr : SCB_CFSR_RESERVED_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for SCB_CFSR_RESERVED_Field_2 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Configurable Fault Status Registers
   type SCB_CFSR_Register is record
      --  no description available
      IACCVIOL    : CFSR_IACCVIOL_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      DACCVIOL    : CFSR_DACCVIOL_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED    : SCB_CFSR_RESERVED_Field := 16#0#;
      --  no description available
      MUNSTKERR   : CFSR_MUNSTKERR_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      MSTKERR     : CFSR_MSTKERR_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      MLSPERR     : CFSR_MLSPERR_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED_1  : SCB_CFSR_RESERVED_Field := 16#0#;
      --  no description available
      MMARVALID   : CFSR_MMARVALID_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      IBUSERR     : CFSR_IBUSERR_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      PRECISERR   : CFSR_PRECISERR_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      IMPRECISERR : CFSR_IMPRECISERR_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      UNSTKERR    : CFSR_UNSTKERR_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      STKERR      : CFSR_STKERR_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      LSPERR      : CFSR_LSPERR_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED_2  : SCB_CFSR_RESERVED_Field := 16#0#;
      --  no description available
      BFARVALID   : CFSR_BFARVALID_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      UNDEFINSTR  : CFSR_UNDEFINSTR_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      INVSTATE    : CFSR_INVSTATE_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      INVPC       : CFSR_INVPC_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      NOCP        : CFSR_NOCP_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED_3  : SCB_CFSR_RESERVED_Field_1 :=
                     (As_Array => False, Val => 16#0#);
      --  no description available
      UNALIGNED   : CFSR_UNALIGNED_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      DIVBYZERO   : CFSR_DIVBYZERO_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED_4  : SCB_CFSR_RESERVED_Field_2 :=
                     (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CFSR_Register use record
      IACCVIOL    at 0 range 0 .. 0;
      DACCVIOL    at 0 range 1 .. 1;
      RESERVED    at 0 range 2 .. 2;
      MUNSTKERR   at 0 range 3 .. 3;
      MSTKERR     at 0 range 4 .. 4;
      MLSPERR     at 0 range 5 .. 5;
      RESERVED_1  at 0 range 6 .. 6;
      MMARVALID   at 0 range 7 .. 7;
      IBUSERR     at 0 range 8 .. 8;
      PRECISERR   at 0 range 9 .. 9;
      IMPRECISERR at 0 range 10 .. 10;
      UNSTKERR    at 0 range 11 .. 11;
      STKERR      at 0 range 12 .. 12;
      LSPERR      at 0 range 13 .. 13;
      RESERVED_2  at 0 range 14 .. 14;
      BFARVALID   at 0 range 15 .. 15;
      UNDEFINSTR  at 0 range 16 .. 16;
      INVSTATE    at 0 range 17 .. 17;
      INVPC       at 0 range 18 .. 18;
      NOCP        at 0 range 19 .. 19;
      RESERVED_3  at 0 range 20 .. 23;
      UNALIGNED   at 0 range 24 .. 24;
      DIVBYZERO   at 0 range 25 .. 25;
      RESERVED_4  at 0 range 26 .. 31;
   end record;

   subtype SCB_HFSR_RESERVED_Field is Interfaces.SAM.Bit;

   --  no description available
   type HFSR_VECTTBL_Field is
     (--  no BusFault on vector table read
      Val_0,
      --  BusFault on vector table read
      Val_1)
     with Size => 1;
   for HFSR_VECTTBL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SCB_HFSR_RESERVED array element
   subtype SCB_HFSR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_HFSR_RESERVED array
   type SCB_HFSR_RESERVED_Field_Array is array (1 .. 28)
     of SCB_HFSR_RESERVED_Element
     with Component_Size => 1, Size => 28;

   --  Type definition for SCB_HFSR_RESERVED
   type SCB_HFSR_RESERVED_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt28;
         when True =>
            --  RESERVED as an array
            Arr : SCB_HFSR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for SCB_HFSR_RESERVED_Field_1 use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  no description available
   type HFSR_FORCED_Field is
     (--  no forced HardFault
      Val_0,
      --  forced HardFault
      Val_1)
     with Size => 1;
   for HFSR_FORCED_Field use
     (Val_0 => 0,
      Val_1 => 1);

   subtype SCB_HFSR_DEBUGEVT_Field is Interfaces.SAM.Bit;

   --  HardFault Status register
   type SCB_HFSR_Register is record
      --  Read-only. Reserved
      RESERVED   : SCB_HFSR_RESERVED_Field := 16#0#;
      --  no description available
      VECTTBL    : HFSR_VECTTBL_Field := Interfaces.SAM.SCB.Val_0;
      --  Read-only. Reserved
      RESERVED_1 : SCB_HFSR_RESERVED_Field_1 :=
                    (As_Array => False, Val => 16#0#);
      --  no description available
      FORCED     : HFSR_FORCED_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      DEBUGEVT   : SCB_HFSR_DEBUGEVT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_HFSR_Register use record
      RESERVED   at 0 range 0 .. 0;
      VECTTBL    at 0 range 1 .. 1;
      RESERVED_1 at 0 range 2 .. 29;
      FORCED     at 0 range 30 .. 30;
      DEBUGEVT   at 0 range 31 .. 31;
   end record;

   --  no description available
   type DFSR_HALTED_Field is
     (--  No active halt request debug event
      Val_0,
      --  Halt request debug event active
      Val_1)
     with Size => 1;
   for DFSR_HALTED_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type DFSR_BKPT_Field is
     (--  No current breakpoint debug event
      Val_0,
      --  At least one current breakpoint debug event
      Val_1)
     with Size => 1;
   for DFSR_BKPT_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type DFSR_DWTTRAP_Field is
     (--  No current debug events generated by the DWT
      Val_0,
      --  At least one current debug event generated by the DWT
      Val_1)
     with Size => 1;
   for DFSR_DWTTRAP_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type DFSR_VCATCH_Field is
     (--  No Vector catch triggered
      Val_0,
      --  Vector catch triggered
      Val_1)
     with Size => 1;
   for DFSR_VCATCH_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  no description available
   type DFSR_EXTERNAL_Field is
     (--  No EDBGRQ debug event
      Val_0,
      --  EDBGRQ debug event
      Val_1)
     with Size => 1;
   for DFSR_EXTERNAL_Field use
     (Val_0 => 0,
      Val_1 => 1);

   --  SCB_DFSR_RESERVED array element
   subtype SCB_DFSR_RESERVED_Element is Interfaces.SAM.Bit;

   --  SCB_DFSR_RESERVED array
   type SCB_DFSR_RESERVED_Field_Array is array (1 .. 27)
     of SCB_DFSR_RESERVED_Element
     with Component_Size => 1, Size => 27;

   --  Type definition for SCB_DFSR_RESERVED
   type SCB_DFSR_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt27;
         when True =>
            --  RESERVED as an array
            Arr : SCB_DFSR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for SCB_DFSR_RESERVED_Field use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  Debug Fault Status Register
   type SCB_DFSR_Register is record
      --  no description available
      HALTED   : DFSR_HALTED_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      BKPT     : DFSR_BKPT_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      DWTTRAP  : DFSR_DWTTRAP_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      VCATCH   : DFSR_VCATCH_Field := Interfaces.SAM.SCB.Val_0;
      --  no description available
      EXTERNAL : DFSR_EXTERNAL_Field := Interfaces.SAM.SCB.Val_0;
      --  Reserved
      RESERVED : SCB_DFSR_RESERVED_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_DFSR_Register use record
      HALTED   at 0 range 0 .. 0;
      BKPT     at 0 range 1 .. 1;
      DWTTRAP  at 0 range 2 .. 2;
      VCATCH   at 0 range 3 .. 3;
      EXTERNAL at 0 range 4 .. 4;
      RESERVED at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Block (SCB)
   type SCB_Peripheral is record
      --  Auxiliary Control Register,
      ACTLR : aliased SCB_ACTLR_Register;
      --  CPUID Base Register
      CPUID : aliased SCB_CPUID_Register;
      --  Interrupt Control and State Register
      ICSR  : aliased SCB_ICSR_Register;
      --  Vector Table Offset Register
      VTOR  : aliased SCB_VTOR_Register;
      --  Application Interrupt and Reset Control Register
      AIRCR : aliased SCB_AIRCR_Register;
      --  System Control Register
      SCR   : aliased SCB_SCR_Register;
      --  Configuration and Control Register
      CCR   : aliased SCB_CCR_Register;
      --  System Handler Priority Register 1
      SHPR1 : aliased SCB_SHPR1_Register;
      --  System Handler Priority Register 2
      SHPR2 : aliased SCB_SHPR2_Register;
      --  System Handler Priority Register 3
      SHPR3 : aliased SCB_SHPR3_Register;
      --  System Handler Control and State Register
      SHCSR : aliased SCB_SHCSR_Register;
      --  Configurable Fault Status Registers
      CFSR  : aliased SCB_CFSR_Register;
      --  HardFault Status register
      HFSR  : aliased SCB_HFSR_Register;
      --  Debug Fault Status Register
      DFSR  : aliased SCB_DFSR_Register;
      --  MemManage Address Register
      MMFAR : aliased Interfaces.SAM.UInt32;
      --  BusFault Address Register
      BFAR  : aliased Interfaces.SAM.UInt32;
      --  Auxiliary Fault Status Register
      AFSR  : aliased Interfaces.SAM.UInt32;
   end record
     with Volatile;

   for SCB_Peripheral use record
      ACTLR at 16#8# range 0 .. 31;
      CPUID at 16#D00# range 0 .. 31;
      ICSR  at 16#D04# range 0 .. 31;
      VTOR  at 16#D08# range 0 .. 31;
      AIRCR at 16#D0C# range 0 .. 31;
      SCR   at 16#D10# range 0 .. 31;
      CCR   at 16#D14# range 0 .. 31;
      SHPR1 at 16#D18# range 0 .. 31;
      SHPR2 at 16#D1C# range 0 .. 31;
      SHPR3 at 16#D20# range 0 .. 31;
      SHCSR at 16#D24# range 0 .. 31;
      CFSR  at 16#D28# range 0 .. 31;
      HFSR  at 16#D2C# range 0 .. 31;
      DFSR  at 16#D30# range 0 .. 31;
      MMFAR at 16#D34# range 0 .. 31;
      BFAR  at 16#D38# range 0 .. 31;
      AFSR  at 16#D3C# range 0 .. 31;
   end record;

   --  System Control Block (SCB)
   SCB_Periph : aliased SCB_Peripheral
     with Import, Address => SCB_Base;

end Interfaces.SAM.SCB;
