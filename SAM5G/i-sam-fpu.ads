--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  Floating Point Unit (FPU)
package Interfaces.SAM.FPU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Floating Point Unit (FPU)
   type FPU_Peripheral is record
      --  FP Context Control Register
      FPCCR  : aliased Interfaces.SAM.UInt32;
      --  FP Context Address Register
      FPCAR  : aliased Interfaces.SAM.UInt32;
      --  FP Default Status Control Register
      FPDSCR : aliased Interfaces.SAM.UInt32;
      --  Media and VFP Feature Register 0, MVFR0
      MVFR0  : aliased Interfaces.SAM.UInt32;
      --  Media and VFP Feature Register 1, MVFR1
      MVFR1  : aliased Interfaces.SAM.UInt32;
   end record
     with Volatile;

   for FPU_Peripheral use record
      FPCCR  at 16#0# range 0 .. 31;
      FPCAR  at 16#4# range 0 .. 31;
      FPDSCR at 16#8# range 0 .. 31;
      MVFR0  at 16#C# range 0 .. 31;
      MVFR1  at 16#10# range 0 .. 31;
   end record;

   --  Floating Point Unit (FPU)
   FPU_Periph : aliased FPU_Peripheral
     with Import, Address => FPU_Base;

end Interfaces.SAM.FPU;
