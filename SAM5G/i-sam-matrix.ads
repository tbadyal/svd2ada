--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  AHB Bus Matrix
package Interfaces.SAM.MATRIX is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Undefined Length Burst Type
   type MATRIX_MCFG_ULBT_Field is
     (--  No predicted end of burst is generated and therefore INCR bursts coming
--  from this master cannot be broken.
      INFINITE,
      --  The undefined length burst is treated as a succession of single access
--  allowing rearbitration at each beat of the INCR burst.
      SINGLE,
      --  The undefined length burst is split into a 4-beat bursts allowing
--  rearbitration at each 4-beat burst end.
      FOUR_BEAT,
      --  The undefined length burst is split into 8-beat bursts allowing
--  rearbitration at each 8-beat burst end.
      EIGHT_BEAT,
      --  The undefined length burst is split into 16-beat bursts allowing
--  rearbitration at each 16-beat burst end.
      SIXTEEN_BEAT)
     with Size => 3;
   for MATRIX_MCFG_ULBT_Field use
     (INFINITE => 0,
      SINGLE => 1,
      FOUR_BEAT => 2,
      EIGHT_BEAT => 3,
      SIXTEEN_BEAT => 4);

   --  Master Configuration Register
   type MATRIX_MCFG_Register is record
      --  Undefined Length Burst Type
      ULBT          : MATRIX_MCFG_ULBT_Field :=
                       Interfaces.SAM.MATRIX.INFINITE;
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
   type MATRIX_MCFG_Registers is array (0 .. 2) of MATRIX_MCFG_Register;

   subtype MATRIX_SCFG_SLOT_CYCLE_Field is Interfaces.SAM.Byte;

   --  Default Master Type
   type MATRIX_SCFG_DEFMSTR_TYPE_Field is
     (--  At the end of current slave access, if no other master request is pending,
--  the slave is disconnected from all masters.This results in having a one
--  cycle latency for the first access of a burst transfer or for a single
--  access.
      NO_DEFAULT,
      --  At the end of current slave access, if no other master request is pending,
--  the slave stays connected to the last master having accessed it.This
--  results in not having the one cycle latency when the last master tries to
--  access the slave again.
      LAST,
      --  At the end of the current slave access, if no other master request is
--  pending, the slave connects to the fixed master the number that has been
--  written in the FIXED_DEFMSTR field.This results in not having the one cycle
--  latency when the fixed master tries to access the slave again.
      FIXED)
     with Size => 2;
   for MATRIX_SCFG_DEFMSTR_TYPE_Field use
     (NO_DEFAULT => 0,
      LAST => 1,
      FIXED => 2);

   subtype MATRIX_SCFG_FIXED_DEFMSTR_Field is Interfaces.SAM.UInt3;

   --  Slave Configuration Register
   type MATRIX_SCFG_Register is record
      --  Maximum Number of Allowed Cycles for a Burst
      SLOT_CYCLE     : MATRIX_SCFG_SLOT_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.SAM.Byte := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : MATRIX_SCFG_DEFMSTR_TYPE_Field :=
                        Interfaces.SAM.MATRIX.NO_DEFAULT;
      --  Fixed Default Master
      FIXED_DEFMSTR  : MATRIX_SCFG_FIXED_DEFMSTR_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.SAM.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_SCFG_Register use record
      SLOT_CYCLE     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DEFMSTR_TYPE   at 0 range 16 .. 17;
      FIXED_DEFMSTR  at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Slave Configuration Register
   type MATRIX_SCFG_Registers is array (0 .. 3) of MATRIX_SCFG_Register;

   subtype MATRIX_PRAS_M0PR_Field is Interfaces.SAM.UInt2;
   subtype MATRIX_PRAS_M1PR_Field is Interfaces.SAM.UInt2;
   subtype MATRIX_PRAS_M2PR_Field is Interfaces.SAM.UInt2;
   subtype MATRIX_PRAS_M3PR_Field is Interfaces.SAM.UInt2;

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
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
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
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype CCFG_RDMMEM_READ_MARGIN_ROM_Field is Interfaces.SAM.UInt4;
   subtype CCFG_RDMMEM_READ_MARGIN_DPRAM_Field is Interfaces.SAM.UInt4;
   subtype CCFG_RDMMEM_READ_MARGIN_RAM32k_Field is Interfaces.SAM.UInt4;
   subtype CCFG_RDMMEM_READ_MARGIN_RAM16k_Field is Interfaces.SAM.UInt4;
   subtype CCFG_RDMMEM_READ_MARGIN_RAM8k_Field is Interfaces.SAM.UInt4;
   subtype CCFG_RDMMEM_READ_MARGIN_RAM4k_Field is Interfaces.SAM.UInt4;
   --  CCFG_RDMMEM_READ_MARGIN_REGFILE array element
   subtype CCFG_RDMMEM_READ_MARGIN_REGFILE_Element is Interfaces.SAM.UInt4;

   --  CCFG_RDMMEM_READ_MARGIN_REGFILE array
   type CCFG_RDMMEM_READ_MARGIN_REGFILE_Field_Array is array (0 .. 1)
     of CCFG_RDMMEM_READ_MARGIN_REGFILE_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for CCFG_RDMMEM_READ_MARGIN_REGFILE
   type CCFG_RDMMEM_READ_MARGIN_REGFILE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  READ_MARGIN_REGFILE as a value
            Val : Interfaces.SAM.Byte;
         when True =>
            --  READ_MARGIN_REGFILE as an array
            Arr : CCFG_RDMMEM_READ_MARGIN_REGFILE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CCFG_RDMMEM_READ_MARGIN_REGFILE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Embedded Memories Read Margin Values Register
   type CCFG_RDMMEM_Register is record
      --  ROM Read Margin Value Selection
      READ_MARGIN_ROM     : CCFG_RDMMEM_READ_MARGIN_ROM_Field := 16#4#;
      --  DPRAM Read Margin Value Selection
      READ_MARGIN_DPRAM   : CCFG_RDMMEM_READ_MARGIN_DPRAM_Field := 16#2#;
      --  RAM32k Read Margin Value Selection
      READ_MARGIN_RAM32k  : CCFG_RDMMEM_READ_MARGIN_RAM32k_Field := 16#2#;
      --  RAM16k Read Margin Value Selection
      READ_MARGIN_RAM16k  : CCFG_RDMMEM_READ_MARGIN_RAM16k_Field := 16#2#;
      --  RAM8k Read Margin Value Selection
      READ_MARGIN_RAM8k   : CCFG_RDMMEM_READ_MARGIN_RAM8k_Field := 16#2#;
      --  RAM4k Read Margin Value Selection
      READ_MARGIN_RAM4k   : CCFG_RDMMEM_READ_MARGIN_RAM4k_Field := 16#2#;
      --  REGFILE0 Read Margin Value Selection
      READ_MARGIN_REGFILE : CCFG_RDMMEM_READ_MARGIN_REGFILE_Field :=
                             (As_Array => False, Val => 16#2#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_RDMMEM_Register use record
      READ_MARGIN_ROM     at 0 range 0 .. 3;
      READ_MARGIN_DPRAM   at 0 range 4 .. 7;
      READ_MARGIN_RAM32k  at 0 range 8 .. 11;
      READ_MARGIN_RAM16k  at 0 range 12 .. 15;
      READ_MARGIN_RAM8k   at 0 range 16 .. 19;
      READ_MARGIN_RAM4k   at 0 range 20 .. 23;
      READ_MARGIN_REGFILE at 0 range 24 .. 31;
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

   --  System I/O Configuration Register
   type CCFG_SYSIO_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.SAM.UInt4 := 16#0#;
      --  PB4 or TDI Assignment
      SYSIO          : CCFG_SYSIO_SYSIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_9   : Interfaces.SAM.UInt2 := 16#0#;
      --  PA21 or DM Assignment
      SYSIO_1        : CCFG_SYSIO_SYSIO_Field_1 :=
                        (As_Array => False, Val => 16#1#);
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

   subtype CCFG_DYNCKG_MATCKG_Field is Interfaces.SAM.Bit;
   subtype CCFG_DYNCKG_BRIDCKG_Field is Interfaces.SAM.Bit;
   subtype CCFG_DYNCKG_EFCCKG_Field is Interfaces.SAM.Bit;

   --  Dynamic Clock Gating Register
   type CCFG_DYNCKG_Register is record
      --  MATRIX Dynamic Clock Gating
      MATCKG        : CCFG_DYNCKG_MATCKG_Field := 16#1#;
      --  Bridge Dynamic Clock Gating Enable
      BRIDCKG       : CCFG_DYNCKG_BRIDCKG_Field := 16#1#;
      --  EFC Dynamic Clock Gating Enable
      EFCCKG        : CCFG_DYNCKG_EFCCKG_Field := 16#1#;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_DYNCKG_Register use record
      MATCKG        at 0 range 0 .. 0;
      BRIDCKG       at 0 range 1 .. 1;
      EFCCKG        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  CCFG_I2SCLKSEL_CLKSEL array element
   subtype CCFG_I2SCLKSEL_CLKSEL_Element is Interfaces.SAM.Bit;

   --  CCFG_I2SCLKSEL_CLKSEL array
   type CCFG_I2SCLKSEL_CLKSEL_Field_Array is array (0 .. 1)
     of CCFG_I2SCLKSEL_CLKSEL_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CCFG_I2SCLKSEL_CLKSEL
   type CCFG_I2SCLKSEL_CLKSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CLKSEL as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  CLKSEL as an array
            Arr : CCFG_I2SCLKSEL_CLKSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCFG_I2SCLKSEL_CLKSEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  I2S Clock Source Selection Register
   type CCFG_I2SCLKSEL_Register is record
      --  I2S0 clock source
      CLKSEL        : CCFG_I2SCLKSEL_CLKSEL_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_I2SCLKSEL_Register use record
      CLKSEL        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CCFG_USBMR_USBMODE_Field is Interfaces.SAM.Bit;
   subtype CCFG_USBMR_USBHTSSC_Field is Interfaces.SAM.Bit;
   subtype CCFG_USBMR_USBHTSC_Field is Interfaces.SAM.Bit;

   --  USB Management Register
   type CCFG_USBMR_Register is record
      --  USB mode selection
      USBMODE       : CCFG_USBMR_USBMODE_Field := 16#0#;
      --  USB Transceiver Suspend Software Control
      USBHTSSC      : CCFG_USBMR_USBHTSSC_Field := 16#0#;
      --  USB Host Transceiver Suspend Control
      USBHTSC       : CCFG_USBMR_USBHTSC_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCFG_USBMR_Register use record
      USBMODE       at 0 range 0 .. 0;
      USBHTSSC      at 0 range 1 .. 1;
      USBHTSC       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype MATRIX_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type MATRIX_WPMR_WPKEY_Field is
     (--  Reset value for the field
      MATRIX_WPMR_WPKEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit. Always reads as 0.
      PASSWD)
     with Size => 24;
   for MATRIX_WPMR_WPKEY_Field use
     (MATRIX_WPMR_WPKEY_Field_Reset => 0,
      PASSWD => 5062996);

   --  Write Protection Mode Register
   type MATRIX_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : MATRIX_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : MATRIX_WPMR_WPKEY_Field := MATRIX_WPMR_WPKEY_Field_Reset;
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

   --  Write Protection Status Register
   type MATRIX_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : MATRIX_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
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
      MATRIX_MCFG    : aliased MATRIX_MCFG_Registers;
      --  Slave Configuration Register
      MATRIX_SCFG    : aliased MATRIX_SCFG_Registers;
      --  Priority Register A for Slave 0
      MATRIX_PRAS0   : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 1
      MATRIX_PRAS1   : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 2
      MATRIX_PRAS2   : aliased MATRIX_PRAS_Register;
      --  Priority Register A for Slave 3
      MATRIX_PRAS3   : aliased MATRIX_PRAS_Register;
      --  Embedded Memories Read Margin Values Register
      CCFG_RDMMEM    : aliased CCFG_RDMMEM_Register;
      --  System I/O Configuration Register
      CCFG_SYSIO     : aliased CCFG_SYSIO_Register;
      --  Dynamic Clock Gating Register
      CCFG_DYNCKG    : aliased CCFG_DYNCKG_Register;
      --  I2S Clock Source Selection Register
      CCFG_I2SCLKSEL : aliased CCFG_I2SCLKSEL_Register;
      --  USB Management Register
      CCFG_USBMR     : aliased CCFG_USBMR_Register;
      --  Write Protection Mode Register
      MATRIX_WPMR    : aliased MATRIX_WPMR_Register;
      --  Write Protection Status Register
      MATRIX_WPSR    : aliased MATRIX_WPSR_Register;
   end record
     with Volatile;

   for MATRIX_Peripheral use record
      MATRIX_MCFG    at 16#0# range 0 .. 95;
      MATRIX_SCFG    at 16#40# range 0 .. 127;
      MATRIX_PRAS0   at 16#80# range 0 .. 31;
      MATRIX_PRAS1   at 16#88# range 0 .. 31;
      MATRIX_PRAS2   at 16#90# range 0 .. 31;
      MATRIX_PRAS3   at 16#98# range 0 .. 31;
      CCFG_RDMMEM    at 16#110# range 0 .. 31;
      CCFG_SYSIO     at 16#114# range 0 .. 31;
      CCFG_DYNCKG    at 16#118# range 0 .. 31;
      CCFG_I2SCLKSEL at 16#11C# range 0 .. 31;
      CCFG_USBMR     at 16#120# range 0 .. 31;
      MATRIX_WPMR    at 16#1E4# range 0 .. 31;
      MATRIX_WPSR    at 16#1E8# range 0 .. 31;
   end record;

   --  AHB Bus Matrix
   MATRIX_Periph : aliased MATRIX_Peripheral
     with Import, Address => MATRIX_Base;

end Interfaces.SAM.MATRIX;
