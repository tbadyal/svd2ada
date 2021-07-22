--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  Power Management Controller
package Interfaces.SAM.PMC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype PMC_SCER_UHP_Field is Interfaces.SAM.Bit;
   subtype PMC_SCER_UDP_Field is Interfaces.SAM.Bit;
   --  PMC_SCER_PCK array element
   subtype PMC_SCER_PCK_Element is Interfaces.SAM.Bit;

   --  PMC_SCER_PCK array
   type PMC_SCER_PCK_Field_Array is array (0 .. 7) of PMC_SCER_PCK_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PMC_SCER_PCK
   type PMC_SCER_PCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCK as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  PCK as an array
            Arr : PMC_SCER_PCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PMC_SCER_PCK_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  System Clock Enable Register
   type PMC_SCER_Register is record
      --  unspecified
      Reserved_0_5   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. USB Host Port Clock Enable
      UHP            : PMC_SCER_UHP_Field := 16#0#;
      --  Write-only. USB Device Port Clock Enable
      UDP            : PMC_SCER_UDP_Field := 16#0#;
      --  Write-only. Programmable Clock 0 Output Enable
      PCK            : PMC_SCER_PCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SCER_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      UHP            at 0 range 6 .. 6;
      UDP            at 0 range 7 .. 7;
      PCK            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PMC_SCDR_UHP_Field is Interfaces.SAM.Bit;
   subtype PMC_SCDR_UDP_Field is Interfaces.SAM.Bit;
   --  PMC_SCDR_PCK array element
   subtype PMC_SCDR_PCK_Element is Interfaces.SAM.Bit;

   --  PMC_SCDR_PCK array
   type PMC_SCDR_PCK_Field_Array is array (0 .. 7) of PMC_SCDR_PCK_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PMC_SCDR_PCK
   type PMC_SCDR_PCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCK as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  PCK as an array
            Arr : PMC_SCDR_PCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PMC_SCDR_PCK_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  System Clock Disable Register
   type PMC_SCDR_Register is record
      --  unspecified
      Reserved_0_5   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. USB Host Port Clock Disable
      UHP            : PMC_SCDR_UHP_Field := 16#0#;
      --  Write-only.
      UDP            : PMC_SCDR_UDP_Field := 16#0#;
      --  Write-only. Programmable Clock 0 Output Disable
      PCK            : PMC_SCDR_PCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SCDR_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      UHP            at 0 range 6 .. 6;
      UDP            at 0 range 7 .. 7;
      PCK            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PMC_SCSR_UHP_Field is Interfaces.SAM.Bit;
   subtype PMC_SCSR_UDP_Field is Interfaces.SAM.Bit;
   --  PMC_SCSR_PCK array element
   subtype PMC_SCSR_PCK_Element is Interfaces.SAM.Bit;

   --  PMC_SCSR_PCK array
   type PMC_SCSR_PCK_Field_Array is array (0 .. 7) of PMC_SCSR_PCK_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PMC_SCSR_PCK
   type PMC_SCSR_PCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCK as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  PCK as an array
            Arr : PMC_SCSR_PCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PMC_SCSR_PCK_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  System Clock Status Register
   type PMC_SCSR_Register is record
      --  unspecified
      Reserved_0_5   : Interfaces.SAM.UInt6;
      --  Read-only. USB Host Port Clock Status
      UHP            : PMC_SCSR_UHP_Field;
      --  Read-only.
      UDP            : PMC_SCSR_UDP_Field;
      --  Read-only. Programmable Clock 0 Output Status
      PCK            : PMC_SCSR_PCK_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SCSR_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      UHP            at 0 range 6 .. 6;
      UDP            at 0 range 7 .. 7;
      PCK            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PMC_PCER0_PID array element
   subtype PMC_PCER0_PID_Element is Interfaces.SAM.Bit;

   --  PMC_PCER0_PID array
   type PMC_PCER0_PID_Field_Array is array (8 .. 29) of PMC_PCER0_PID_Element
     with Component_Size => 1, Size => 22;

   --  Type definition for PMC_PCER0_PID
   type PMC_PCER0_PID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PID as a value
            Val : Interfaces.SAM.UInt22;
         when True =>
            --  PID as an array
            Arr : PMC_PCER0_PID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 22;

   for PMC_PCER0_PID_Field use record
      Val at 0 range 0 .. 21;
      Arr at 0 range 0 .. 21;
   end record;

   --  Peripheral Clock Enable Register 0
   type PMC_PCER0_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte := 16#0#;
      --  Write-only. Peripheral Clock 8 Enable
      PID            : PMC_PCER0_PID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_PCER0_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PID            at 0 range 8 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  PMC_PCDR0_PID array element
   subtype PMC_PCDR0_PID_Element is Interfaces.SAM.Bit;

   --  PMC_PCDR0_PID array
   type PMC_PCDR0_PID_Field_Array is array (8 .. 29) of PMC_PCDR0_PID_Element
     with Component_Size => 1, Size => 22;

   --  Type definition for PMC_PCDR0_PID
   type PMC_PCDR0_PID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PID as a value
            Val : Interfaces.SAM.UInt22;
         when True =>
            --  PID as an array
            Arr : PMC_PCDR0_PID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 22;

   for PMC_PCDR0_PID_Field use record
      Val at 0 range 0 .. 21;
      Arr at 0 range 0 .. 21;
   end record;

   --  Peripheral Clock Disable Register 0
   type PMC_PCDR0_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte := 16#0#;
      --  Write-only. Peripheral Clock 8 Disable
      PID            : PMC_PCDR0_PID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_PCDR0_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PID            at 0 range 8 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  PMC_PCSR0_PID array element
   subtype PMC_PCSR0_PID_Element is Interfaces.SAM.Bit;

   --  PMC_PCSR0_PID array
   type PMC_PCSR0_PID_Field_Array is array (8 .. 29) of PMC_PCSR0_PID_Element
     with Component_Size => 1, Size => 22;

   --  Type definition for PMC_PCSR0_PID
   type PMC_PCSR0_PID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PID as a value
            Val : Interfaces.SAM.UInt22;
         when True =>
            --  PID as an array
            Arr : PMC_PCSR0_PID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 22;

   for PMC_PCSR0_PID_Field use record
      Val at 0 range 0 .. 21;
      Arr at 0 range 0 .. 21;
   end record;

   --  Peripheral Clock Status Register 0
   type PMC_PCSR0_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte;
      --  Read-only. Peripheral Clock 8 Status
      PID            : PMC_PCSR0_PID_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_PCSR0_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PID            at 0 range 8 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CKGR_MOR_MOSCXTEN_Field is Interfaces.SAM.Bit;
   subtype CKGR_MOR_MOSCXTBY_Field is Interfaces.SAM.Bit;
   subtype CKGR_MOR_WAITMODE_Field is Interfaces.SAM.Bit;
   subtype CKGR_MOR_MOSCRCEN_Field is Interfaces.SAM.Bit;

   --  Main On-Chip RC Oscillator Frequency Selection
   type CKGR_MOR_MOSCRCF_Field is
     (--  The Fast RC Oscillator Frequency is at 8 MHz (default)
      Val_8_MHz,
      --  The Fast RC Oscillator Frequency is at 16 MHz
      Val_16_MHz,
      --  The Fast RC Oscillator Frequency is at 24 MHz
      Val_24_MHz)
     with Size => 3;
   for CKGR_MOR_MOSCRCF_Field use
     (Val_8_MHz => 0,
      Val_16_MHz => 1,
      Val_24_MHz => 2);

   subtype CKGR_MOR_MOSCXTST_Field is Interfaces.SAM.Byte;

   --  Write Access Password
   type CKGR_MOR_KEY_Field is
     (--  Reset value for the field
      CKGR_MOR_KEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation.Always
--  reads as 0.
      PASSWD)
     with Size => 8;
   for CKGR_MOR_KEY_Field use
     (CKGR_MOR_KEY_Field_Reset => 0,
      PASSWD => 55);

   subtype CKGR_MOR_MOSCSEL_Field is Interfaces.SAM.Bit;
   subtype CKGR_MOR_CFDEN_Field is Interfaces.SAM.Bit;

   --  Main Oscillator Register
   type CKGR_MOR_Register is record
      --  Main Crystal Oscillator Enable
      MOSCXTEN       : CKGR_MOR_MOSCXTEN_Field := 16#0#;
      --  Main Crystal Oscillator Bypass
      MOSCXTBY       : CKGR_MOR_MOSCXTBY_Field := 16#0#;
      --  Wait Mode Command (Write-only)
      WAITMODE       : CKGR_MOR_WAITMODE_Field := 16#0#;
      --  Main On-Chip RC Oscillator Enable
      MOSCRCEN       : CKGR_MOR_MOSCRCEN_Field := 16#1#;
      --  Main On-Chip RC Oscillator Frequency Selection
      MOSCRCF        : CKGR_MOR_MOSCRCF_Field := Interfaces.SAM.PMC.Val_8_MHz;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Main Crystal Oscillator Start-up Time
      MOSCXTST       : CKGR_MOR_MOSCXTST_Field := 16#0#;
      --  Write Access Password
      KEY            : CKGR_MOR_KEY_Field := CKGR_MOR_KEY_Field_Reset;
      --  Main Oscillator Selection
      MOSCSEL        : CKGR_MOR_MOSCSEL_Field := 16#0#;
      --  Clock Failure Detector Enable
      CFDEN          : CKGR_MOR_CFDEN_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.SAM.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CKGR_MOR_Register use record
      MOSCXTEN       at 0 range 0 .. 0;
      MOSCXTBY       at 0 range 1 .. 1;
      WAITMODE       at 0 range 2 .. 2;
      MOSCRCEN       at 0 range 3 .. 3;
      MOSCRCF        at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MOSCXTST       at 0 range 8 .. 15;
      KEY            at 0 range 16 .. 23;
      MOSCSEL        at 0 range 24 .. 24;
      CFDEN          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CKGR_MCFR_MAINF_Field is Interfaces.SAM.UInt16;
   subtype CKGR_MCFR_MAINFRDY_Field is Interfaces.SAM.Bit;
   subtype CKGR_MCFR_RCMEAS_Field is Interfaces.SAM.Bit;

   --  Main Clock Frequency Register
   type CKGR_MCFR_Register is record
      --  Main Clock Frequency
      MAINF          : CKGR_MCFR_MAINF_Field := 16#0#;
      --  Main Clock Frequency Measure Ready
      MAINFRDY       : CKGR_MCFR_MAINFRDY_Field := 16#0#;
      --  unspecified
      Reserved_17_19 : Interfaces.SAM.UInt3 := 16#0#;
      --  RC Oscillator Frequency Measure (write-only)
      RCMEAS         : CKGR_MCFR_RCMEAS_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.SAM.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CKGR_MCFR_Register use record
      MAINF          at 0 range 0 .. 15;
      MAINFRDY       at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      RCMEAS         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype CKGR_PLLAR_PLLAEN_Field is Interfaces.SAM.Byte;
   subtype CKGR_PLLAR_PLLACOUNT_Field is Interfaces.SAM.UInt6;
   subtype CKGR_PLLAR_MULA_Field is Interfaces.SAM.UInt12;
   subtype CKGR_PLLAR_ZERO_Field is Interfaces.SAM.Bit;

   --  PLLA Register
   type CKGR_PLLAR_Register is record
      --  PLLA Control
      PLLAEN         : CKGR_PLLAR_PLLAEN_Field := 16#0#;
      --  PLLA Counter
      PLLACOUNT      : CKGR_PLLAR_PLLACOUNT_Field := 16#3F#;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2 := 16#0#;
      --  PLLA Multiplier
      MULA           : CKGR_PLLAR_MULA_Field := 16#0#;
      --  unspecified
      Reserved_28_28 : Interfaces.SAM.Bit := 16#0#;
      --  Must be written to 0
      ZERO           : CKGR_PLLAR_ZERO_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CKGR_PLLAR_Register use record
      PLLAEN         at 0 range 0 .. 7;
      PLLACOUNT      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      MULA           at 0 range 16 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      ZERO           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CKGR_PLLBR_PLLBEN_Field is Interfaces.SAM.Byte;
   subtype CKGR_PLLBR_PLLBCOUNT_Field is Interfaces.SAM.UInt6;
   subtype CKGR_PLLBR_MULB_Field is Interfaces.SAM.UInt11;
   subtype CKGR_PLLBR_ZERO_Field is Interfaces.SAM.Bit;

   --  PLLB Register
   type CKGR_PLLBR_Register is record
      --  PLLB Control
      PLLBEN         : CKGR_PLLBR_PLLBEN_Field := 16#0#;
      --  PLLB Counter
      PLLBCOUNT      : CKGR_PLLBR_PLLBCOUNT_Field := 16#3F#;
      --  unspecified
      Reserved_14_15 : Interfaces.SAM.UInt2 := 16#0#;
      --  PLLB Multiplier
      MULB           : CKGR_PLLBR_MULB_Field := 16#0#;
      --  unspecified
      Reserved_27_28 : Interfaces.SAM.UInt2 := 16#0#;
      --  Must be written to 0
      ZERO           : CKGR_PLLBR_ZERO_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CKGR_PLLBR_Register use record
      PLLBEN         at 0 range 0 .. 7;
      PLLBCOUNT      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      MULB           at 0 range 16 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      ZERO           at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Master Clock Source Selection
   type PMC_MCKR_CSS_Field is
     (--  Slow Clock is selected
      SLOW_CLK,
      --  Main Clock is selected
      MAIN_CLK,
      --  PLLA Clock is selected
      PLLA_CLK,
      --  PLLBClock is selected
      PLLB_CLK)
     with Size => 2;
   for PMC_MCKR_CSS_Field use
     (SLOW_CLK => 0,
      MAIN_CLK => 1,
      PLLA_CLK => 2,
      PLLB_CLK => 3);

   --  Processor Clock Prescaler
   type PMC_MCKR_PRES_Field is
     (--  Selected clock
      CLK_1,
      --  Selected clock divided by 2
      CLK_2,
      --  Selected clock divided by 4
      CLK_4,
      --  Selected clock divided by 8
      CLK_8,
      --  Selected clock divided by 16
      CLK_16,
      --  Selected clock divided by 32
      CLK_32,
      --  Selected clock divided by 64
      CLK_64,
      --  Selected clock divided by 3
      CLK_3)
     with Size => 3;
   for PMC_MCKR_PRES_Field use
     (CLK_1 => 0,
      CLK_2 => 1,
      CLK_4 => 2,
      CLK_8 => 3,
      CLK_16 => 4,
      CLK_32 => 5,
      CLK_64 => 6,
      CLK_3 => 7);

   subtype PMC_MCKR_PLLADIV2_Field is Interfaces.SAM.Bit;
   subtype PMC_MCKR_PLLBDIV2_Field is Interfaces.SAM.Bit;

   --  Master Clock Register
   type PMC_MCKR_Register is record
      --  Master Clock Source Selection
      CSS            : PMC_MCKR_CSS_Field := Interfaces.SAM.PMC.MAIN_CLK;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  Processor Clock Prescaler
      PRES           : PMC_MCKR_PRES_Field := Interfaces.SAM.PMC.CLK_1;
      --  unspecified
      Reserved_7_11  : Interfaces.SAM.UInt5 := 16#0#;
      --  PLLA Divisor by 2
      PLLADIV2       : PMC_MCKR_PLLADIV2_Field := 16#0#;
      PLLBDIV2       : PMC_MCKR_PLLBDIV2_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_MCKR_Register use record
      CSS            at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PRES           at 0 range 4 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      PLLADIV2       at 0 range 12 .. 12;
      PLLBDIV2       at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype PMC_USB_USBS_Field is Interfaces.SAM.Bit;
   subtype PMC_USB_USBDIV_Field is Interfaces.SAM.UInt4;

   --  USB Clock Register
   type PMC_USB_Register is record
      --  USB Input Clock Selection
      USBS           : PMC_USB_USBS_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7 := 16#0#;
      --  Divider for USB Clock
      USBDIV         : PMC_USB_USBDIV_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_USB_Register use record
      USBS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      USBDIV         at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Master Clock Source Selection
   type PMC_PCK_CSS_Field is
     (--  Slow Clock is selected
      SLOW_CLK,
      --  Main Clock is selected
      MAIN_CLK,
      --  PLLA Clock is selected
      PLLA_CLK,
      --  PLLB Clock is selected
      PLLB_CLK,
      --  Master Clock is selected
      MCK)
     with Size => 3;
   for PMC_PCK_CSS_Field use
     (SLOW_CLK => 0,
      MAIN_CLK => 1,
      PLLA_CLK => 2,
      PLLB_CLK => 3,
      MCK => 4);

   subtype PMC_PCK_PRES_Field is Interfaces.SAM.Byte;

   --  Programmable Clock 0 Register
   type PMC_PCK_Register is record
      --  Master Clock Source Selection
      CSS            : PMC_PCK_CSS_Field := Interfaces.SAM.PMC.SLOW_CLK;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  Programmable Clock Prescaler
      PRES           : PMC_PCK_PRES_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_PCK_Register use record
      CSS            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PRES           at 0 range 4 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Programmable Clock 0 Register
   type PMC_PCK_Registers is array (0 .. 7) of PMC_PCK_Register;

   subtype PMC_IER_MOSCXTS_Field is Interfaces.SAM.Bit;
   subtype PMC_IER_LOCKA_Field is Interfaces.SAM.Bit;
   subtype PMC_IER_LOCKB_Field is Interfaces.SAM.Bit;
   subtype PMC_IER_MCKRDY_Field is Interfaces.SAM.Bit;
   --  PMC_IER_PCKRDY array element
   subtype PMC_IER_PCKRDY_Element is Interfaces.SAM.Bit;

   --  PMC_IER_PCKRDY array
   type PMC_IER_PCKRDY_Field_Array is array (0 .. 7)
     of PMC_IER_PCKRDY_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PMC_IER_PCKRDY
   type PMC_IER_PCKRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCKRDY as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  PCKRDY as an array
            Arr : PMC_IER_PCKRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PMC_IER_PCKRDY_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype PMC_IER_MOSCSELS_Field is Interfaces.SAM.Bit;
   subtype PMC_IER_MOSCRCS_Field is Interfaces.SAM.Bit;
   subtype PMC_IER_CFDEV_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type PMC_IER_Register is record
      --  Write-only. Main Crystal Oscillator Status Interrupt Enable
      MOSCXTS        : PMC_IER_MOSCXTS_Field := 16#0#;
      --  Write-only. PLLA Lock Interrupt Enable
      LOCKA          : PMC_IER_LOCKA_Field := 16#0#;
      --  Write-only. PLLB Lock Interrupt Enable
      LOCKB          : PMC_IER_LOCKB_Field := 16#0#;
      --  Write-only. Master Clock Ready Interrupt Enable
      MCKRDY         : PMC_IER_MCKRDY_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Programmable Clock Ready 0 Interrupt Enable
      PCKRDY         : PMC_IER_PCKRDY_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Main Oscillator Selection Status Interrupt Enable
      MOSCSELS       : PMC_IER_MOSCSELS_Field := 16#0#;
      --  Write-only. Main On-Chip RC Status Interrupt Enable
      MOSCRCS        : PMC_IER_MOSCRCS_Field := 16#0#;
      --  Write-only. Clock Failure Detector Event Interrupt Enable
      CFDEV          : PMC_IER_CFDEV_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_IER_Register use record
      MOSCXTS        at 0 range 0 .. 0;
      LOCKA          at 0 range 1 .. 1;
      LOCKB          at 0 range 2 .. 2;
      MCKRDY         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PCKRDY         at 0 range 8 .. 15;
      MOSCSELS       at 0 range 16 .. 16;
      MOSCRCS        at 0 range 17 .. 17;
      CFDEV          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype PMC_IDR_MOSCXTS_Field is Interfaces.SAM.Bit;
   subtype PMC_IDR_LOCKA_Field is Interfaces.SAM.Bit;
   subtype PMC_IDR_LOCKB_Field is Interfaces.SAM.Bit;
   subtype PMC_IDR_MCKRDY_Field is Interfaces.SAM.Bit;
   --  PMC_IDR_PCKRDY array element
   subtype PMC_IDR_PCKRDY_Element is Interfaces.SAM.Bit;

   --  PMC_IDR_PCKRDY array
   type PMC_IDR_PCKRDY_Field_Array is array (0 .. 7)
     of PMC_IDR_PCKRDY_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PMC_IDR_PCKRDY
   type PMC_IDR_PCKRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCKRDY as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  PCKRDY as an array
            Arr : PMC_IDR_PCKRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PMC_IDR_PCKRDY_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype PMC_IDR_MOSCSELS_Field is Interfaces.SAM.Bit;
   subtype PMC_IDR_MOSCRCS_Field is Interfaces.SAM.Bit;
   subtype PMC_IDR_CFDEV_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type PMC_IDR_Register is record
      --  Write-only. Main Crystal Oscillator Status Interrupt Disable
      MOSCXTS        : PMC_IDR_MOSCXTS_Field := 16#0#;
      --  Write-only. PLLA Lock Interrupt Disable
      LOCKA          : PMC_IDR_LOCKA_Field := 16#0#;
      --  Write-only. PLLB Lock Interrupt Disable
      LOCKB          : PMC_IDR_LOCKB_Field := 16#0#;
      --  Write-only. Master Clock Ready Interrupt Disable
      MCKRDY         : PMC_IDR_MCKRDY_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Programmable Clock Ready 0 Interrupt Disable
      PCKRDY         : PMC_IDR_PCKRDY_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Main Oscillator Selection Status Interrupt Disable
      MOSCSELS       : PMC_IDR_MOSCSELS_Field := 16#0#;
      --  Write-only. Main On-Chip RC Status Interrupt Disable
      MOSCRCS        : PMC_IDR_MOSCRCS_Field := 16#0#;
      --  Write-only. Clock Failure Detector Event Interrupt Disable
      CFDEV          : PMC_IDR_CFDEV_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_IDR_Register use record
      MOSCXTS        at 0 range 0 .. 0;
      LOCKA          at 0 range 1 .. 1;
      LOCKB          at 0 range 2 .. 2;
      MCKRDY         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PCKRDY         at 0 range 8 .. 15;
      MOSCSELS       at 0 range 16 .. 16;
      MOSCRCS        at 0 range 17 .. 17;
      CFDEV          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype PMC_SR_MOSCXTS_Field is Interfaces.SAM.Bit;
   subtype PMC_SR_LOCKA_Field is Interfaces.SAM.Bit;
   subtype PMC_SR_LOCKB_Field is Interfaces.SAM.Bit;
   subtype PMC_SR_MCKRDY_Field is Interfaces.SAM.Bit;
   subtype PMC_SR_OSCSELS_Field is Interfaces.SAM.Bit;
   --  PMC_SR_PCKRDY array element
   subtype PMC_SR_PCKRDY_Element is Interfaces.SAM.Bit;

   --  PMC_SR_PCKRDY array
   type PMC_SR_PCKRDY_Field_Array is array (0 .. 7) of PMC_SR_PCKRDY_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PMC_SR_PCKRDY
   type PMC_SR_PCKRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCKRDY as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  PCKRDY as an array
            Arr : PMC_SR_PCKRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PMC_SR_PCKRDY_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype PMC_SR_MOSCSELS_Field is Interfaces.SAM.Bit;
   subtype PMC_SR_MOSCRCS_Field is Interfaces.SAM.Bit;
   subtype PMC_SR_CFDEV_Field is Interfaces.SAM.Bit;
   subtype PMC_SR_CFDS_Field is Interfaces.SAM.Bit;
   subtype PMC_SR_FOS_Field is Interfaces.SAM.Bit;

   --  Status Register
   type PMC_SR_Register is record
      --  Read-only. Main Crystal Oscillator Status
      MOSCXTS        : PMC_SR_MOSCXTS_Field;
      --  Read-only. PLLA Lock Status
      LOCKA          : PMC_SR_LOCKA_Field;
      --  Read-only. PLLB Lock Status
      LOCKB          : PMC_SR_LOCKB_Field;
      --  Read-only. Master Clock Status
      MCKRDY         : PMC_SR_MCKRDY_Field;
      --  unspecified
      Reserved_4_6   : Interfaces.SAM.UInt3;
      --  Read-only. Slow Clock Oscillator Selection
      OSCSELS        : PMC_SR_OSCSELS_Field;
      --  Read-only. Programmable Clock Ready Status
      PCKRDY         : PMC_SR_PCKRDY_Field;
      --  Read-only. Main Oscillator Selection Status
      MOSCSELS       : PMC_SR_MOSCSELS_Field;
      --  Read-only. Main On-Chip RC Oscillator Status
      MOSCRCS        : PMC_SR_MOSCRCS_Field;
      --  Read-only. Clock Failure Detector Event
      CFDEV          : PMC_SR_CFDEV_Field;
      --  Read-only. Clock Failure Detector Status
      CFDS           : PMC_SR_CFDS_Field;
      --  Read-only. Clock Failure Detector Fault Output Status
      FOS            : PMC_SR_FOS_Field;
      --  unspecified
      Reserved_21_31 : Interfaces.SAM.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SR_Register use record
      MOSCXTS        at 0 range 0 .. 0;
      LOCKA          at 0 range 1 .. 1;
      LOCKB          at 0 range 2 .. 2;
      MCKRDY         at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      OSCSELS        at 0 range 7 .. 7;
      PCKRDY         at 0 range 8 .. 15;
      MOSCSELS       at 0 range 16 .. 16;
      MOSCRCS        at 0 range 17 .. 17;
      CFDEV          at 0 range 18 .. 18;
      CFDS           at 0 range 19 .. 19;
      FOS            at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype PMC_IMR_MOSCXTS_Field is Interfaces.SAM.Bit;
   subtype PMC_IMR_LOCKA_Field is Interfaces.SAM.Bit;
   subtype PMC_IMR_LOCKB_Field is Interfaces.SAM.Bit;
   subtype PMC_IMR_MCKRDY_Field is Interfaces.SAM.Bit;
   --  PMC_IMR_PCKRDY array element
   subtype PMC_IMR_PCKRDY_Element is Interfaces.SAM.Bit;

   --  PMC_IMR_PCKRDY array
   type PMC_IMR_PCKRDY_Field_Array is array (0 .. 2)
     of PMC_IMR_PCKRDY_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for PMC_IMR_PCKRDY
   type PMC_IMR_PCKRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCKRDY as a value
            Val : Interfaces.SAM.UInt3;
         when True =>
            --  PCKRDY as an array
            Arr : PMC_IMR_PCKRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PMC_IMR_PCKRDY_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype PMC_IMR_MOSCSELS_Field is Interfaces.SAM.Bit;
   subtype PMC_IMR_MOSCRCS_Field is Interfaces.SAM.Bit;
   subtype PMC_IMR_CFDEV_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type PMC_IMR_Register is record
      --  Read-only. Main Crystal Oscillator Status Interrupt Mask
      MOSCXTS        : PMC_IMR_MOSCXTS_Field;
      --  Read-only. PLLA Lock Interrupt Mask
      LOCKA          : PMC_IMR_LOCKA_Field;
      --  Read-only. PLLB Lock Interrupt Mask
      LOCKB          : PMC_IMR_LOCKB_Field;
      --  Read-only. Master Clock Ready Interrupt Mask
      MCKRDY         : PMC_IMR_MCKRDY_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4;
      --  Read-only. Programmable Clock Ready 0 Interrupt Mask
      PCKRDY         : PMC_IMR_PCKRDY_Field;
      --  unspecified
      Reserved_11_15 : Interfaces.SAM.UInt5;
      --  Read-only. Main Oscillator Selection Status Interrupt Mask
      MOSCSELS       : PMC_IMR_MOSCSELS_Field;
      --  Read-only. Main On-Chip RC Status Interrupt Mask
      MOSCRCS        : PMC_IMR_MOSCRCS_Field;
      --  Read-only. Clock Failure Detector Event Interrupt Mask
      CFDEV          : PMC_IMR_CFDEV_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_IMR_Register use record
      MOSCXTS        at 0 range 0 .. 0;
      LOCKA          at 0 range 1 .. 1;
      LOCKB          at 0 range 2 .. 2;
      MCKRDY         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PCKRDY         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      MOSCSELS       at 0 range 16 .. 16;
      MOSCRCS        at 0 range 17 .. 17;
      CFDEV          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  PMC_FSMR_FSTT array element
   subtype PMC_FSMR_FSTT_Element is Interfaces.SAM.Bit;

   --  PMC_FSMR_FSTT array
   type PMC_FSMR_FSTT_Field_Array is array (0 .. 15) of PMC_FSMR_FSTT_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PMC_FSMR_FSTT
   type PMC_FSMR_FSTT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FSTT as a value
            Val : Interfaces.SAM.UInt16;
         when True =>
            --  FSTT as an array
            Arr : PMC_FSMR_FSTT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PMC_FSMR_FSTT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype PMC_FSMR_RTTAL_Field is Interfaces.SAM.Bit;
   subtype PMC_FSMR_RTCAL_Field is Interfaces.SAM.Bit;
   subtype PMC_FSMR_USBAL_Field is Interfaces.SAM.Bit;
   subtype PMC_FSMR_LPM_Field is Interfaces.SAM.Bit;

   --  Flash Low-power Mode
   type PMC_FSMR_FLPM_Field is
     (--  Flash is in Standby Mode when system enters Wait Mode
      FLASH_STANDBY,
      --  Flash is in Deep-power-down mode when system enters Wait Mode
      FLASH_DEEP_POWERDOWN,
      --  Idle mode
      FLASH_IDLE)
     with Size => 2;
   for PMC_FSMR_FLPM_Field use
     (FLASH_STANDBY => 0,
      FLASH_DEEP_POWERDOWN => 1,
      FLASH_IDLE => 2);

   --  Fast Startup Mode Register
   type PMC_FSMR_Register is record
      --  Fast Startup Input Enable 0
      FSTT           : PMC_FSMR_FSTT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  RTT Alarm Enable
      RTTAL          : PMC_FSMR_RTTAL_Field := 16#0#;
      --  RTC Alarm Enable
      RTCAL          : PMC_FSMR_RTCAL_Field := 16#0#;
      --  USB Alarm Enable
      USBAL          : PMC_FSMR_USBAL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.SAM.Bit := 16#0#;
      --  Low-power Mode
      LPM            : PMC_FSMR_LPM_Field := 16#0#;
      --  Flash Low-power Mode
      FLPM           : PMC_FSMR_FLPM_Field :=
                        Interfaces.SAM.PMC.FLASH_STANDBY;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_FSMR_Register use record
      FSTT           at 0 range 0 .. 15;
      RTTAL          at 0 range 16 .. 16;
      RTCAL          at 0 range 17 .. 17;
      USBAL          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      LPM            at 0 range 20 .. 20;
      FLPM           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  PMC_FSPR_FSTP array element
   subtype PMC_FSPR_FSTP_Element is Interfaces.SAM.Bit;

   --  PMC_FSPR_FSTP array
   type PMC_FSPR_FSTP_Field_Array is array (0 .. 15) of PMC_FSPR_FSTP_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PMC_FSPR_FSTP
   type PMC_FSPR_FSTP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FSTP as a value
            Val : Interfaces.SAM.UInt16;
         when True =>
            --  FSTP as an array
            Arr : PMC_FSPR_FSTP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PMC_FSPR_FSTP_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Fast Startup Polarity Register
   type PMC_FSPR_Register is record
      --  Fast Startup Input Polarityx
      FSTP           : PMC_FSPR_FSTP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_FSPR_Register use record
      FSTP           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PMC_FOCR_FOCLR_Field is Interfaces.SAM.Bit;

   --  Fault Output Clear Register
   type PMC_FOCR_Register is record
      --  Write-only. Fault Output Clear
      FOCLR         : PMC_FOCR_FOCLR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_FOCR_Register use record
      FOCLR         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype PMC_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type PMC_WPMR_WPKEY_Field is
     (--  Reset value for the field
      PMC_WPMR_WPKEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit. Always reads as 0.
      PASSWD)
     with Size => 24;
   for PMC_WPMR_WPKEY_Field use
     (PMC_WPMR_WPKEY_Field_Reset => 0,
      PASSWD => 5262659);

   --  Write Protection Mode Register
   type PMC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : PMC_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : PMC_WPMR_WPKEY_Field := PMC_WPMR_WPKEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype PMC_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype PMC_WPSR_WPVSRC_Field is Interfaces.SAM.UInt16;

   --  Write Protection Status Register
   type PMC_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : PMC_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : PMC_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PMC_PCR_PID_Field is Interfaces.SAM.UInt6;
   subtype PMC_PCR_CMD_Field is Interfaces.SAM.Bit;

   --  Divisor Value
   type PMC_PCR_DIV_Field is
     (--  Peripheral clock is MCK
      PERIPH_DIV_MCK,
      --  Peripheral clock is MCK/2
      PERIPH_DIV2_MCK,
      --  Peripheral clock is MCK/4
      PERIPH_DIV4_MCK,
      --  Peripheral clock is MCK/8
      PERIPH_DIV8_MCK)
     with Size => 2;
   for PMC_PCR_DIV_Field use
     (PERIPH_DIV_MCK => 0,
      PERIPH_DIV2_MCK => 1,
      PERIPH_DIV4_MCK => 2,
      PERIPH_DIV8_MCK => 3);

   subtype PMC_PCR_EN_Field is Interfaces.SAM.Bit;

   --  Peripheral Control Register
   type PMC_PCR_Register is record
      --  Peripheral ID
      PID            : PMC_PCR_PID_Field := 16#0#;
      --  unspecified
      Reserved_6_11  : Interfaces.SAM.UInt6 := 16#0#;
      --  Command
      CMD            : PMC_PCR_CMD_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Divisor Value
      DIV            : PMC_PCR_DIV_Field := Interfaces.SAM.PMC.PERIPH_DIV_MCK;
      --  unspecified
      Reserved_18_27 : Interfaces.SAM.UInt10 := 16#0#;
      --  Enable
      EN             : PMC_PCR_EN_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_PCR_Register use record
      PID            at 0 range 0 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      CMD            at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DIV            at 0 range 16 .. 17;
      Reserved_18_27 at 0 range 18 .. 27;
      EN             at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype PMC_OCR_CAL8_Field is Interfaces.SAM.UInt7;
   subtype PMC_OCR_SEL8_Field is Interfaces.SAM.Bit;
   subtype PMC_OCR_CAL16_Field is Interfaces.SAM.UInt7;
   subtype PMC_OCR_SEL16_Field is Interfaces.SAM.Bit;
   subtype PMC_OCR_CAL24_Field is Interfaces.SAM.UInt7;
   subtype PMC_OCR_SEL24_Field is Interfaces.SAM.Bit;

   --  Oscillator Calibration Register
   type PMC_OCR_Register is record
      --  RC Oscillator Calibration bits for 8 MHz
      CAL8           : PMC_OCR_CAL8_Field := 16#40#;
      --  Selection of RC Oscillator Calibration bits for 8 MHz
      SEL8           : PMC_OCR_SEL8_Field := 16#0#;
      --  RC Oscillator Calibration bits for 16 MHz
      CAL16          : PMC_OCR_CAL16_Field := 16#40#;
      --  Selection of RC Oscillator Calibration bits for 16 MHz
      SEL16          : PMC_OCR_SEL16_Field := 16#0#;
      --  RC Oscillator Calibration bits for 24 MHz
      CAL24          : PMC_OCR_CAL24_Field := 16#40#;
      --  Selection of RC Oscillator Calibration bits for 24 MHz
      SEL24          : PMC_OCR_SEL24_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_OCR_Register use record
      CAL8           at 0 range 0 .. 6;
      SEL8           at 0 range 7 .. 7;
      CAL16          at 0 range 8 .. 14;
      SEL16          at 0 range 15 .. 15;
      CAL24          at 0 range 16 .. 22;
      SEL24          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PMC_SLPWK_ER0_PID array element
   subtype PMC_SLPWK_ER0_PID_Element is Interfaces.SAM.Bit;

   --  PMC_SLPWK_ER0_PID array
   type PMC_SLPWK_ER0_PID_Field_Array is array (8 .. 29)
     of PMC_SLPWK_ER0_PID_Element
     with Component_Size => 1, Size => 22;

   --  Type definition for PMC_SLPWK_ER0_PID
   type PMC_SLPWK_ER0_PID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PID as a value
            Val : Interfaces.SAM.UInt22;
         when True =>
            --  PID as an array
            Arr : PMC_SLPWK_ER0_PID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 22;

   for PMC_SLPWK_ER0_PID_Field use record
      Val at 0 range 0 .. 21;
      Arr at 0 range 0 .. 21;
   end record;

   --  SleepWalking Enable Register 0
   type PMC_SLPWK_ER0_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte := 16#0#;
      --  Write-only. Peripheral 8 SleepWalking Enable
      PID            : PMC_SLPWK_ER0_PID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SLPWK_ER0_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PID            at 0 range 8 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  PMC_SLPWK_DR0_PID array element
   subtype PMC_SLPWK_DR0_PID_Element is Interfaces.SAM.Bit;

   --  PMC_SLPWK_DR0_PID array
   type PMC_SLPWK_DR0_PID_Field_Array is array (8 .. 29)
     of PMC_SLPWK_DR0_PID_Element
     with Component_Size => 1, Size => 22;

   --  Type definition for PMC_SLPWK_DR0_PID
   type PMC_SLPWK_DR0_PID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PID as a value
            Val : Interfaces.SAM.UInt22;
         when True =>
            --  PID as an array
            Arr : PMC_SLPWK_DR0_PID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 22;

   for PMC_SLPWK_DR0_PID_Field use record
      Val at 0 range 0 .. 21;
      Arr at 0 range 0 .. 21;
   end record;

   --  SleepWalking Disable Register 0
   type PMC_SLPWK_DR0_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte := 16#0#;
      --  Write-only. Peripheral 8 SleepWalking Disable
      PID            : PMC_SLPWK_DR0_PID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SLPWK_DR0_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PID            at 0 range 8 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  PMC_SLPWK_SR0_PID array element
   subtype PMC_SLPWK_SR0_PID_Element is Interfaces.SAM.Bit;

   --  PMC_SLPWK_SR0_PID array
   type PMC_SLPWK_SR0_PID_Field_Array is array (8 .. 29)
     of PMC_SLPWK_SR0_PID_Element
     with Component_Size => 1, Size => 22;

   --  Type definition for PMC_SLPWK_SR0_PID
   type PMC_SLPWK_SR0_PID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PID as a value
            Val : Interfaces.SAM.UInt22;
         when True =>
            --  PID as an array
            Arr : PMC_SLPWK_SR0_PID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 22;

   for PMC_SLPWK_SR0_PID_Field use record
      Val at 0 range 0 .. 21;
      Arr at 0 range 0 .. 21;
   end record;

   --  SleepWalking Status Register 0
   type PMC_SLPWK_SR0_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte;
      --  Read-only. Peripheral 8 SleepWalking Status
      PID            : PMC_SLPWK_SR0_PID_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SLPWK_SR0_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PID            at 0 range 8 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  PMC_SLPWK_ASR0_PID array element
   subtype PMC_SLPWK_ASR0_PID_Element is Interfaces.SAM.Bit;

   --  PMC_SLPWK_ASR0_PID array
   type PMC_SLPWK_ASR0_PID_Field_Array is array (8 .. 29)
     of PMC_SLPWK_ASR0_PID_Element
     with Component_Size => 1, Size => 22;

   --  Type definition for PMC_SLPWK_ASR0_PID
   type PMC_SLPWK_ASR0_PID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PID as a value
            Val : Interfaces.SAM.UInt22;
         when True =>
            --  PID as an array
            Arr : PMC_SLPWK_ASR0_PID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 22;

   for PMC_SLPWK_ASR0_PID_Field use record
      Val at 0 range 0 .. 21;
      Arr at 0 range 0 .. 21;
   end record;

   --  SleepWalking Activity Status Register 0
   type PMC_SLPWK_ASR0_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte;
      --  Read-only. Peripheral 8 Activity Status
      PID            : PMC_SLPWK_ASR0_PID_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_SLPWK_ASR0_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PID            at 0 range 8 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype PMC_PMMR_PLLA_MMAX_Field is Interfaces.SAM.UInt11;

   --  PLL Maximum Multiplier Value Register
   type PMC_PMMR_Register is record
      --  PLLA Maximum Allowed Multiplier Value
      PLLA_MMAX      : PMC_PMMR_PLLA_MMAX_Field := 16#7FF#;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#FFE0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_PMMR_Register use record
      PLLA_MMAX      at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power Management Controller
   type PMC_Peripheral is record
      --  System Clock Enable Register
      PMC_SCER       : aliased PMC_SCER_Register;
      --  System Clock Disable Register
      PMC_SCDR       : aliased PMC_SCDR_Register;
      --  System Clock Status Register
      PMC_SCSR       : aliased PMC_SCSR_Register;
      --  Peripheral Clock Enable Register 0
      PMC_PCER0      : aliased PMC_PCER0_Register;
      --  Peripheral Clock Disable Register 0
      PMC_PCDR0      : aliased PMC_PCDR0_Register;
      --  Peripheral Clock Status Register 0
      PMC_PCSR0      : aliased PMC_PCSR0_Register;
      --  Main Oscillator Register
      CKGR_MOR       : aliased CKGR_MOR_Register;
      --  Main Clock Frequency Register
      CKGR_MCFR      : aliased CKGR_MCFR_Register;
      --  PLLA Register
      CKGR_PLLAR     : aliased CKGR_PLLAR_Register;
      --  PLLB Register
      CKGR_PLLBR     : aliased CKGR_PLLBR_Register;
      --  Master Clock Register
      PMC_MCKR       : aliased PMC_MCKR_Register;
      --  USB Clock Register
      PMC_USB        : aliased PMC_USB_Register;
      --  Programmable Clock 0 Register
      PMC_PCK        : aliased PMC_PCK_Registers;
      --  Interrupt Enable Register
      PMC_IER        : aliased PMC_IER_Register;
      --  Interrupt Disable Register
      PMC_IDR        : aliased PMC_IDR_Register;
      --  Status Register
      PMC_SR         : aliased PMC_SR_Register;
      --  Interrupt Mask Register
      PMC_IMR        : aliased PMC_IMR_Register;
      --  Fast Startup Mode Register
      PMC_FSMR       : aliased PMC_FSMR_Register;
      --  Fast Startup Polarity Register
      PMC_FSPR       : aliased PMC_FSPR_Register;
      --  Fault Output Clear Register
      PMC_FOCR       : aliased PMC_FOCR_Register;
      --  Write Protection Mode Register
      PMC_WPMR       : aliased PMC_WPMR_Register;
      --  Write Protection Status Register
      PMC_WPSR       : aliased PMC_WPSR_Register;
      --  Peripheral Control Register
      PMC_PCR        : aliased PMC_PCR_Register;
      --  Oscillator Calibration Register
      PMC_OCR        : aliased PMC_OCR_Register;
      --  SleepWalking Enable Register 0
      PMC_SLPWK_ER0  : aliased PMC_SLPWK_ER0_Register;
      --  SleepWalking Disable Register 0
      PMC_SLPWK_DR0  : aliased PMC_SLPWK_DR0_Register;
      --  SleepWalking Status Register 0
      PMC_SLPWK_SR0  : aliased PMC_SLPWK_SR0_Register;
      --  SleepWalking Activity Status Register 0
      PMC_SLPWK_ASR0 : aliased PMC_SLPWK_ASR0_Register;
      --  PLL Maximum Multiplier Value Register
      PMC_PMMR       : aliased PMC_PMMR_Register;
   end record
     with Volatile;

   for PMC_Peripheral use record
      PMC_SCER       at 16#0# range 0 .. 31;
      PMC_SCDR       at 16#4# range 0 .. 31;
      PMC_SCSR       at 16#8# range 0 .. 31;
      PMC_PCER0      at 16#10# range 0 .. 31;
      PMC_PCDR0      at 16#14# range 0 .. 31;
      PMC_PCSR0      at 16#18# range 0 .. 31;
      CKGR_MOR       at 16#20# range 0 .. 31;
      CKGR_MCFR      at 16#24# range 0 .. 31;
      CKGR_PLLAR     at 16#28# range 0 .. 31;
      CKGR_PLLBR     at 16#2C# range 0 .. 31;
      PMC_MCKR       at 16#30# range 0 .. 31;
      PMC_USB        at 16#38# range 0 .. 31;
      PMC_PCK        at 16#40# range 0 .. 255;
      PMC_IER        at 16#60# range 0 .. 31;
      PMC_IDR        at 16#64# range 0 .. 31;
      PMC_SR         at 16#68# range 0 .. 31;
      PMC_IMR        at 16#6C# range 0 .. 31;
      PMC_FSMR       at 16#70# range 0 .. 31;
      PMC_FSPR       at 16#74# range 0 .. 31;
      PMC_FOCR       at 16#78# range 0 .. 31;
      PMC_WPMR       at 16#E4# range 0 .. 31;
      PMC_WPSR       at 16#E8# range 0 .. 31;
      PMC_PCR        at 16#10C# range 0 .. 31;
      PMC_OCR        at 16#110# range 0 .. 31;
      PMC_SLPWK_ER0  at 16#114# range 0 .. 31;
      PMC_SLPWK_DR0  at 16#118# range 0 .. 31;
      PMC_SLPWK_SR0  at 16#11C# range 0 .. 31;
      PMC_SLPWK_ASR0 at 16#120# range 0 .. 31;
      PMC_PMMR       at 16#130# range 0 .. 31;
   end record;

   --  Power Management Controller
   PMC_Periph : aliased PMC_Peripheral
     with Import, Address => PMC_Base;

end Interfaces.SAM.PMC;
