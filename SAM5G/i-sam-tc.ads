--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

package Interfaces.SAM.TC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CCR_CLKEN_Field is Interfaces.SAM.Bit;
   subtype CCR_CLKDIS_Field is Interfaces.SAM.Bit;
   subtype CCR_SWTRG_Field is Interfaces.SAM.Bit;

   --  Channel Control Register (channel = 0)
   type CCR_Register is record
      --  Write-only. Counter Clock Enable Command
      CLKEN         : CCR_CLKEN_Field := 16#0#;
      --  Write-only. Counter Clock Disable Command
      CLKDIS        : CCR_CLKDIS_Field := 16#0#;
      --  Write-only. Software Trigger Command
      SWTRG         : CCR_SWTRG_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      CLKEN         at 0 range 0 .. 0;
      CLKDIS        at 0 range 1 .. 1;
      SWTRG         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Selection
   type CMR0_TCCLKS_Field is
     (--  Clock selected: internal TIMER_CLOCK1 clock signal (from PMC)
      TIMER_CLOCK1,
      --  Clock selected: internal TIMER_CLOCK2 clock signal (from PMC)
      TIMER_CLOCK2,
      --  Clock selected: internal TIMER_CLOCK3 clock signal (from PMC)
      TIMER_CLOCK3,
      --  Clock selected: internal TIMER_CLOCK4 clock signal (from PMC)
      TIMER_CLOCK4,
      --  Clock selected: internal TIMER_CLOCK5 clock signal (from PMC)
      TIMER_CLOCK5,
      --  Clock selected: XC0
      XC0,
      --  Clock selected: XC1
      XC1,
      --  Clock selected: XC2
      XC2)
     with Size => 3;
   for CMR0_TCCLKS_Field use
     (TIMER_CLOCK1 => 0,
      TIMER_CLOCK2 => 1,
      TIMER_CLOCK3 => 2,
      TIMER_CLOCK4 => 3,
      TIMER_CLOCK5 => 4,
      XC0 => 5,
      XC1 => 6,
      XC2 => 7);

   subtype CMR_CLKI_Field is Interfaces.SAM.Bit;

   --  Burst Signal Selection
   type CMR0_BURST_Field is
     (--  The clock is not gated by an external signal.
      NONE,
      --  XC0 is ANDed with the selected clock.
      XC0,
      --  XC1 is ANDed with the selected clock.
      XC1,
      --  XC2 is ANDed with the selected clock.
      XC2)
     with Size => 2;
   for CMR0_BURST_Field use
     (NONE => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   subtype CMR_LDBSTOP_Field is Interfaces.SAM.Bit;
   subtype CMR_LDBDIS_Field is Interfaces.SAM.Bit;

   --  External Trigger Edge Selection
   type CMR0_ETRGEDG_Field is
     (--  The clock is not gated by an external signal.
      NONE,
      --  Rising edge
      RISING,
      --  Falling edge
      FALLING,
      --  Each edge
      EDGE)
     with Size => 2;
   for CMR0_ETRGEDG_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   subtype CMR_ABETRG_Field is Interfaces.SAM.Bit;
   subtype CMR_CPCTRG_Field is Interfaces.SAM.Bit;
   subtype CMR_WAVE_Field is Interfaces.SAM.Bit;

   --  RA Loading Edge Selection
   type CMR0_LDRA_Field is
     (--  None
      NONE,
      --  Rising edge of TIOA
      RISING,
      --  Falling edge of TIOA
      FALLING,
      --  Each edge of TIOA
      EDGE)
     with Size => 2;
   for CMR0_LDRA_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  RB Loading Edge Selection
   type CMR0_LDRB_Field is
     (--  None
      NONE,
      --  Rising edge of TIOA
      RISING,
      --  Falling edge of TIOA
      FALLING,
      --  Each edge of TIOA
      EDGE)
     with Size => 2;
   for CMR0_LDRB_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  Channel Mode Register (channel = 0)
   type CMR_Register is record
      --  Clock Selection
      TCCLKS         : CMR0_TCCLKS_Field := Interfaces.SAM.TC.TIMER_CLOCK1;
      --  Clock Invert
      CLKI           : CMR_CLKI_Field := 16#0#;
      --  Burst Signal Selection
      BURST          : CMR0_BURST_Field := Interfaces.SAM.TC.NONE;
      --  Counter Clock Stopped with RB Loading
      LDBSTOP        : CMR_LDBSTOP_Field := 16#0#;
      --  Counter Clock Disable with RB Loading
      LDBDIS         : CMR_LDBDIS_Field := 16#0#;
      --  External Trigger Edge Selection
      ETRGEDG        : CMR0_ETRGEDG_Field := Interfaces.SAM.TC.NONE;
      --  TIOA or TIOB External Trigger Selection
      ABETRG         : CMR_ABETRG_Field := 16#0#;
      --  unspecified
      Reserved_11_13 : Interfaces.SAM.UInt3 := 16#0#;
      --  RC Compare Trigger Enable
      CPCTRG         : CMR_CPCTRG_Field := 16#0#;
      --  Waveform Mode
      WAVE           : CMR_WAVE_Field := 16#0#;
      --  RA Loading Edge Selection
      LDRA           : CMR0_LDRA_Field := Interfaces.SAM.TC.NONE;
      --  RB Loading Edge Selection
      LDRB           : CMR0_LDRB_Field := Interfaces.SAM.TC.NONE;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_Register use record
      TCCLKS         at 0 range 0 .. 2;
      CLKI           at 0 range 3 .. 3;
      BURST          at 0 range 4 .. 5;
      LDBSTOP        at 0 range 6 .. 6;
      LDBDIS         at 0 range 7 .. 7;
      ETRGEDG        at 0 range 8 .. 9;
      ABETRG         at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      CPCTRG         at 0 range 14 .. 14;
      WAVE           at 0 range 15 .. 15;
      LDRA           at 0 range 16 .. 17;
      LDRB           at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Clock Selection
   type CMR0_WAVE_EQ_1_TCCLKS_Field is
     (--  Clock selected: internal TIMER_CLOCK1 clock signal (from PMC)
      TIMER_CLOCK1,
      --  Clock selected: internal TIMER_CLOCK2 clock signal (from PMC)
      TIMER_CLOCK2,
      --  Clock selected: internal TIMER_CLOCK3 clock signal (from PMC)
      TIMER_CLOCK3,
      --  Clock selected: internal TIMER_CLOCK4 clock signal (from PMC)
      TIMER_CLOCK4,
      --  Clock selected: internal TIMER_CLOCK5 clock signal (from PMC)
      TIMER_CLOCK5,
      --  Clock selected: XC0
      XC0,
      --  Clock selected: XC1
      XC1,
      --  Clock selected: XC2
      XC2)
     with Size => 3;
   for CMR0_WAVE_EQ_1_TCCLKS_Field use
     (TIMER_CLOCK1 => 0,
      TIMER_CLOCK2 => 1,
      TIMER_CLOCK3 => 2,
      TIMER_CLOCK4 => 3,
      TIMER_CLOCK5 => 4,
      XC0 => 5,
      XC1 => 6,
      XC2 => 7);

   subtype TC0_CMR0_WAVE_EQ_1_CLKI_Field is Interfaces.SAM.Bit;

   --  Burst Signal Selection
   type CMR0_WAVE_EQ_1_BURST_Field is
     (--  The clock is not gated by an external signal.
      NONE,
      --  XC0 is ANDed with the selected clock.
      XC0,
      --  XC1 is ANDed with the selected clock.
      XC1,
      --  XC2 is ANDed with the selected clock.
      XC2)
     with Size => 2;
   for CMR0_WAVE_EQ_1_BURST_Field use
     (NONE => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   subtype TC0_CMR0_WAVE_EQ_1_CPCSTOP_Field is Interfaces.SAM.Bit;
   subtype TC0_CMR0_WAVE_EQ_1_CPCDIS_Field is Interfaces.SAM.Bit;

   --  External Event Edge Selection
   type CMR0_WAVE_EQ_1_EEVTEDG_Field is
     (--  None
      NONE,
      --  Rising edge
      RISING,
      --  Falling edge
      FALLING,
      --  Each edge
      EDGE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_EEVTEDG_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  External Event Selection
   type CMR0_WAVE_EQ_1_EEVT_Field is
     (--  TIOB
      TIOB,
      --  XC0
      XC0,
      --  XC1
      XC1,
      --  XC2
      XC2)
     with Size => 2;
   for CMR0_WAVE_EQ_1_EEVT_Field use
     (TIOB => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   subtype TC0_CMR0_WAVE_EQ_1_ENETRG_Field is Interfaces.SAM.Bit;

   --  Waveform Selection
   type CMR0_WAVE_EQ_1_WAVSEL_Field is
     (--  UP mode without automatic trigger on RC Compare
      UP,
      --  UPDOWN mode without automatic trigger on RC Compare
      UPDOWN,
      --  UP mode with automatic trigger on RC Compare
      UP_RC,
      --  UPDOWN mode with automatic trigger on RC Compare
      UPDOWN_RC)
     with Size => 2;
   for CMR0_WAVE_EQ_1_WAVSEL_Field use
     (UP => 0,
      UPDOWN => 1,
      UP_RC => 2,
      UPDOWN_RC => 3);

   subtype TC0_CMR0_WAVE_EQ_1_WAVE_Field is Interfaces.SAM.Bit;

   --  RA Compare Effect on TIOA
   type CMR0_WAVE_EQ_1_ACPA_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_ACPA_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOA
   type CMR0_WAVE_EQ_1_ACPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_ACPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOA
   type CMR0_WAVE_EQ_1_AEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_AEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOA
   type CMR0_WAVE_EQ_1_ASWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_ASWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RB Compare Effect on TIOB
   type CMR0_WAVE_EQ_1_BCPB_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_BCPB_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOB
   type CMR0_WAVE_EQ_1_BCPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_BCPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOB
   type CMR0_WAVE_EQ_1_BEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_BEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOB
   type CMR0_WAVE_EQ_1_BSWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_BSWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Channel Mode Register (channel = 0)
   type TC0_CMR0_WAVE_EQ_1_Register is record
      --  Clock Selection
      TCCLKS  : CMR0_WAVE_EQ_1_TCCLKS_Field := Interfaces.SAM.TC.TIMER_CLOCK1;
      --  Clock Invert
      CLKI    : TC0_CMR0_WAVE_EQ_1_CLKI_Field := 16#0#;
      --  Burst Signal Selection
      BURST   : CMR0_WAVE_EQ_1_BURST_Field := Interfaces.SAM.TC.NONE;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : TC0_CMR0_WAVE_EQ_1_CPCSTOP_Field := 16#0#;
      --  Counter Clock Disable with RC Compare
      CPCDIS  : TC0_CMR0_WAVE_EQ_1_CPCDIS_Field := 16#0#;
      --  External Event Edge Selection
      EEVTEDG : CMR0_WAVE_EQ_1_EEVTEDG_Field := Interfaces.SAM.TC.NONE;
      --  External Event Selection
      EEVT    : CMR0_WAVE_EQ_1_EEVT_Field := Interfaces.SAM.TC.TIOB;
      --  External Event Trigger Enable
      ENETRG  : TC0_CMR0_WAVE_EQ_1_ENETRG_Field := 16#0#;
      --  Waveform Selection
      WAVSEL  : CMR0_WAVE_EQ_1_WAVSEL_Field := Interfaces.SAM.TC.UP;
      --  Waveform Mode
      WAVE    : TC0_CMR0_WAVE_EQ_1_WAVE_Field := 16#0#;
      --  RA Compare Effect on TIOA
      ACPA    : CMR0_WAVE_EQ_1_ACPA_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOA
      ACPC    : CMR0_WAVE_EQ_1_ACPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOA
      AEEVT   : CMR0_WAVE_EQ_1_AEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOA
      ASWTRG  : CMR0_WAVE_EQ_1_ASWTRG_Field := Interfaces.SAM.TC.NONE;
      --  RB Compare Effect on TIOB
      BCPB    : CMR0_WAVE_EQ_1_BCPB_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOB
      BCPC    : CMR0_WAVE_EQ_1_BCPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOB
      BEEVT   : CMR0_WAVE_EQ_1_BEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOB
      BSWTRG  : CMR0_WAVE_EQ_1_BSWTRG_Field := Interfaces.SAM.TC.NONE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_CMR0_WAVE_EQ_1_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   subtype SMMR_GCEN_Field is Interfaces.SAM.Bit;
   subtype SMMR_DOWN_Field is Interfaces.SAM.Bit;

   --  Stepper Motor Mode Register (channel = 0)
   type SMMR_Register is record
      --  Gray Count Enable
      GCEN          : SMMR_GCEN_Field := 16#0#;
      --  Down Count
      DOWN          : SMMR_DOWN_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMMR_Register use record
      GCEN          at 0 range 0 .. 0;
      DOWN          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SR_COVFS_Field is Interfaces.SAM.Bit;
   subtype SR_LOVRS_Field is Interfaces.SAM.Bit;
   subtype SR_CPAS_Field is Interfaces.SAM.Bit;
   subtype SR_CPBS_Field is Interfaces.SAM.Bit;
   subtype SR_CPCS_Field is Interfaces.SAM.Bit;
   subtype SR_LDRAS_Field is Interfaces.SAM.Bit;
   subtype SR_LDRBS_Field is Interfaces.SAM.Bit;
   subtype SR_ETRGS_Field is Interfaces.SAM.Bit;
   subtype SR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype SR_CLKSTA_Field is Interfaces.SAM.Bit;
   subtype SR_MTIOA_Field is Interfaces.SAM.Bit;
   subtype SR_MTIOB_Field is Interfaces.SAM.Bit;

   --  Status Register (channel = 0)
   type SR_Register is record
      --  Read-only. Counter Overflow Status
      COVFS          : SR_COVFS_Field;
      --  Read-only. Load Overrun Status
      LOVRS          : SR_LOVRS_Field;
      --  Read-only. RA Compare Status
      CPAS           : SR_CPAS_Field;
      --  Read-only. RB Compare Status
      CPBS           : SR_CPBS_Field;
      --  Read-only. RC Compare Status
      CPCS           : SR_CPCS_Field;
      --  Read-only. RA Loading Status
      LDRAS          : SR_LDRAS_Field;
      --  Read-only. RB Loading Status
      LDRBS          : SR_LDRBS_Field;
      --  Read-only. External Trigger Status
      ETRGS          : SR_ETRGS_Field;
      --  Read-only. End of Receiver Transfer
      ENDRX          : SR_ENDRX_Field;
      --  Read-only. Reception Buffer Full
      RXBUFF         : SR_RXBUFF_Field;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6;
      --  Read-only. Clock Enabling Status
      CLKSTA         : SR_CLKSTA_Field;
      --  Read-only. TIOA Mirror
      MTIOA          : SR_MTIOA_Field;
      --  Read-only. TIOB Mirror
      MTIOB          : SR_MTIOB_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      COVFS          at 0 range 0 .. 0;
      LOVRS          at 0 range 1 .. 1;
      CPAS           at 0 range 2 .. 2;
      CPBS           at 0 range 3 .. 3;
      CPCS           at 0 range 4 .. 4;
      LDRAS          at 0 range 5 .. 5;
      LDRBS          at 0 range 6 .. 6;
      ETRGS          at 0 range 7 .. 7;
      ENDRX          at 0 range 8 .. 8;
      RXBUFF         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CLKSTA         at 0 range 16 .. 16;
      MTIOA          at 0 range 17 .. 17;
      MTIOB          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype IER_COVFS_Field is Interfaces.SAM.Bit;
   subtype IER_LOVRS_Field is Interfaces.SAM.Bit;
   subtype IER_CPAS_Field is Interfaces.SAM.Bit;
   subtype IER_CPBS_Field is Interfaces.SAM.Bit;
   subtype IER_CPCS_Field is Interfaces.SAM.Bit;
   subtype IER_LDRAS_Field is Interfaces.SAM.Bit;
   subtype IER_LDRBS_Field is Interfaces.SAM.Bit;
   subtype IER_ETRGS_Field is Interfaces.SAM.Bit;
   subtype IER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype IER_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register (channel = 0)
   type IER_Register is record
      --  Write-only. Counter Overflow
      COVFS          : IER_COVFS_Field := 16#0#;
      --  Write-only. Load Overrun
      LOVRS          : IER_LOVRS_Field := 16#0#;
      --  Write-only. RA Compare
      CPAS           : IER_CPAS_Field := 16#0#;
      --  Write-only. RB Compare
      CPBS           : IER_CPBS_Field := 16#0#;
      --  Write-only. RC Compare
      CPCS           : IER_CPCS_Field := 16#0#;
      --  Write-only. RA Loading
      LDRAS          : IER_LDRAS_Field := 16#0#;
      --  Write-only. RB Loading
      LDRBS          : IER_LDRBS_Field := 16#0#;
      --  Write-only. External Trigger
      ETRGS          : IER_ETRGS_Field := 16#0#;
      --  Write-only. End of Receiver Transfer
      ENDRX          : IER_ENDRX_Field := 16#0#;
      --  Write-only. Reception Buffer Full
      RXBUFF         : IER_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      COVFS          at 0 range 0 .. 0;
      LOVRS          at 0 range 1 .. 1;
      CPAS           at 0 range 2 .. 2;
      CPBS           at 0 range 3 .. 3;
      CPCS           at 0 range 4 .. 4;
      LDRAS          at 0 range 5 .. 5;
      LDRBS          at 0 range 6 .. 6;
      ETRGS          at 0 range 7 .. 7;
      ENDRX          at 0 range 8 .. 8;
      RXBUFF         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype IDR_COVFS_Field is Interfaces.SAM.Bit;
   subtype IDR_LOVRS_Field is Interfaces.SAM.Bit;
   subtype IDR_CPAS_Field is Interfaces.SAM.Bit;
   subtype IDR_CPBS_Field is Interfaces.SAM.Bit;
   subtype IDR_CPCS_Field is Interfaces.SAM.Bit;
   subtype IDR_LDRAS_Field is Interfaces.SAM.Bit;
   subtype IDR_LDRBS_Field is Interfaces.SAM.Bit;
   subtype IDR_ETRGS_Field is Interfaces.SAM.Bit;
   subtype IDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype IDR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register (channel = 0)
   type IDR_Register is record
      --  Write-only. Counter Overflow
      COVFS          : IDR_COVFS_Field := 16#0#;
      --  Write-only. Load Overrun
      LOVRS          : IDR_LOVRS_Field := 16#0#;
      --  Write-only. RA Compare
      CPAS           : IDR_CPAS_Field := 16#0#;
      --  Write-only. RB Compare
      CPBS           : IDR_CPBS_Field := 16#0#;
      --  Write-only. RC Compare
      CPCS           : IDR_CPCS_Field := 16#0#;
      --  Write-only. RA Loading
      LDRAS          : IDR_LDRAS_Field := 16#0#;
      --  Write-only. RB Loading
      LDRBS          : IDR_LDRBS_Field := 16#0#;
      --  Write-only. External Trigger
      ETRGS          : IDR_ETRGS_Field := 16#0#;
      --  Write-only. End of Receiver Transfer
      ENDRX          : IDR_ENDRX_Field := 16#0#;
      --  Write-only. Reception Buffer Full
      RXBUFF         : IDR_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      COVFS          at 0 range 0 .. 0;
      LOVRS          at 0 range 1 .. 1;
      CPAS           at 0 range 2 .. 2;
      CPBS           at 0 range 3 .. 3;
      CPCS           at 0 range 4 .. 4;
      LDRAS          at 0 range 5 .. 5;
      LDRBS          at 0 range 6 .. 6;
      ETRGS          at 0 range 7 .. 7;
      ENDRX          at 0 range 8 .. 8;
      RXBUFF         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype IMR_COVFS_Field is Interfaces.SAM.Bit;
   subtype IMR_LOVRS_Field is Interfaces.SAM.Bit;
   subtype IMR_CPAS_Field is Interfaces.SAM.Bit;
   subtype IMR_CPBS_Field is Interfaces.SAM.Bit;
   subtype IMR_CPCS_Field is Interfaces.SAM.Bit;
   subtype IMR_LDRAS_Field is Interfaces.SAM.Bit;
   subtype IMR_LDRBS_Field is Interfaces.SAM.Bit;
   subtype IMR_ETRGS_Field is Interfaces.SAM.Bit;
   subtype IMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype IMR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register (channel = 0)
   type IMR_Register is record
      --  Read-only. Counter Overflow
      COVFS          : IMR_COVFS_Field;
      --  Read-only. Load Overrun
      LOVRS          : IMR_LOVRS_Field;
      --  Read-only. RA Compare
      CPAS           : IMR_CPAS_Field;
      --  Read-only. RB Compare
      CPBS           : IMR_CPBS_Field;
      --  Read-only. RC Compare
      CPCS           : IMR_CPCS_Field;
      --  Read-only. RA Loading
      LDRAS          : IMR_LDRAS_Field;
      --  Read-only. RB Loading
      LDRBS          : IMR_LDRBS_Field;
      --  Read-only. External Trigger
      ETRGS          : IMR_ETRGS_Field;
      --  Read-only. End of Receiver Transfer
      ENDRX          : IMR_ENDRX_Field;
      --  Read-only. Reception Buffer Full
      RXBUFF         : IMR_RXBUFF_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      COVFS          at 0 range 0 .. 0;
      LOVRS          at 0 range 1 .. 1;
      CPAS           at 0 range 2 .. 2;
      CPBS           at 0 range 3 .. 3;
      CPCS           at 0 range 4 .. 4;
      LDRAS          at 0 range 5 .. 5;
      LDRBS          at 0 range 6 .. 6;
      ETRGS          at 0 range 7 .. 7;
      ENDRX          at 0 range 8 .. 8;
      RXBUFF         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Clock Selection
   type CMR1_WAVE_EQ_1_TCCLKS_Field is
     (--  Clock selected: internal TIMER_CLOCK1 clock signal (from PMC)
      TIMER_CLOCK1,
      --  Clock selected: internal TIMER_CLOCK2 clock signal (from PMC)
      TIMER_CLOCK2,
      --  Clock selected: internal TIMER_CLOCK3 clock signal (from PMC)
      TIMER_CLOCK3,
      --  Clock selected: internal TIMER_CLOCK4 clock signal (from PMC)
      TIMER_CLOCK4,
      --  Clock selected: internal TIMER_CLOCK5 clock signal (from PMC)
      TIMER_CLOCK5,
      --  Clock selected: XC0
      XC0,
      --  Clock selected: XC1
      XC1,
      --  Clock selected: XC2
      XC2)
     with Size => 3;
   for CMR1_WAVE_EQ_1_TCCLKS_Field use
     (TIMER_CLOCK1 => 0,
      TIMER_CLOCK2 => 1,
      TIMER_CLOCK3 => 2,
      TIMER_CLOCK4 => 3,
      TIMER_CLOCK5 => 4,
      XC0 => 5,
      XC1 => 6,
      XC2 => 7);

   subtype TC0_CMR1_WAVE_EQ_1_CLKI_Field is Interfaces.SAM.Bit;

   --  Burst Signal Selection
   type CMR1_WAVE_EQ_1_BURST_Field is
     (--  The clock is not gated by an external signal.
      NONE,
      --  XC0 is ANDed with the selected clock.
      XC0,
      --  XC1 is ANDed with the selected clock.
      XC1,
      --  XC2 is ANDed with the selected clock.
      XC2)
     with Size => 2;
   for CMR1_WAVE_EQ_1_BURST_Field use
     (NONE => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   subtype TC0_CMR1_WAVE_EQ_1_CPCSTOP_Field is Interfaces.SAM.Bit;
   subtype TC0_CMR1_WAVE_EQ_1_CPCDIS_Field is Interfaces.SAM.Bit;

   --  External Event Edge Selection
   type CMR1_WAVE_EQ_1_EEVTEDG_Field is
     (--  None
      NONE,
      --  Rising edge
      RISING,
      --  Falling edge
      FALLING,
      --  Each edge
      EDGE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_EEVTEDG_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  External Event Selection
   type CMR1_WAVE_EQ_1_EEVT_Field is
     (--  TIOB
      TIOB,
      --  XC0
      XC0,
      --  XC1
      XC1,
      --  XC2
      XC2)
     with Size => 2;
   for CMR1_WAVE_EQ_1_EEVT_Field use
     (TIOB => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   subtype TC0_CMR1_WAVE_EQ_1_ENETRG_Field is Interfaces.SAM.Bit;

   --  Waveform Selection
   type CMR1_WAVE_EQ_1_WAVSEL_Field is
     (--  UP mode without automatic trigger on RC Compare
      UP,
      --  UPDOWN mode without automatic trigger on RC Compare
      UPDOWN,
      --  UP mode with automatic trigger on RC Compare
      UP_RC,
      --  UPDOWN mode with automatic trigger on RC Compare
      UPDOWN_RC)
     with Size => 2;
   for CMR1_WAVE_EQ_1_WAVSEL_Field use
     (UP => 0,
      UPDOWN => 1,
      UP_RC => 2,
      UPDOWN_RC => 3);

   subtype TC0_CMR1_WAVE_EQ_1_WAVE_Field is Interfaces.SAM.Bit;

   --  RA Compare Effect on TIOA
   type CMR1_WAVE_EQ_1_ACPA_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_ACPA_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOA
   type CMR1_WAVE_EQ_1_ACPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_ACPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOA
   type CMR1_WAVE_EQ_1_AEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_AEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOA
   type CMR1_WAVE_EQ_1_ASWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_ASWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RB Compare Effect on TIOB
   type CMR1_WAVE_EQ_1_BCPB_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_BCPB_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOB
   type CMR1_WAVE_EQ_1_BCPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_BCPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOB
   type CMR1_WAVE_EQ_1_BEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_BEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOB
   type CMR1_WAVE_EQ_1_BSWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_BSWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Channel Mode Register (channel = 1)
   type TC0_CMR1_WAVE_EQ_1_Register is record
      --  Clock Selection
      TCCLKS  : CMR1_WAVE_EQ_1_TCCLKS_Field := Interfaces.SAM.TC.TIMER_CLOCK1;
      --  Clock Invert
      CLKI    : TC0_CMR1_WAVE_EQ_1_CLKI_Field := 16#0#;
      --  Burst Signal Selection
      BURST   : CMR1_WAVE_EQ_1_BURST_Field := Interfaces.SAM.TC.NONE;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : TC0_CMR1_WAVE_EQ_1_CPCSTOP_Field := 16#0#;
      --  Counter Clock Disable with RC Compare
      CPCDIS  : TC0_CMR1_WAVE_EQ_1_CPCDIS_Field := 16#0#;
      --  External Event Edge Selection
      EEVTEDG : CMR1_WAVE_EQ_1_EEVTEDG_Field := Interfaces.SAM.TC.NONE;
      --  External Event Selection
      EEVT    : CMR1_WAVE_EQ_1_EEVT_Field := Interfaces.SAM.TC.TIOB;
      --  External Event Trigger Enable
      ENETRG  : TC0_CMR1_WAVE_EQ_1_ENETRG_Field := 16#0#;
      --  Waveform Selection
      WAVSEL  : CMR1_WAVE_EQ_1_WAVSEL_Field := Interfaces.SAM.TC.UP;
      --  Waveform Mode
      WAVE    : TC0_CMR1_WAVE_EQ_1_WAVE_Field := 16#0#;
      --  RA Compare Effect on TIOA
      ACPA    : CMR1_WAVE_EQ_1_ACPA_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOA
      ACPC    : CMR1_WAVE_EQ_1_ACPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOA
      AEEVT   : CMR1_WAVE_EQ_1_AEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOA
      ASWTRG  : CMR1_WAVE_EQ_1_ASWTRG_Field := Interfaces.SAM.TC.NONE;
      --  RB Compare Effect on TIOB
      BCPB    : CMR1_WAVE_EQ_1_BCPB_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOB
      BCPC    : CMR1_WAVE_EQ_1_BCPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOB
      BEEVT   : CMR1_WAVE_EQ_1_BEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOB
      BSWTRG  : CMR1_WAVE_EQ_1_BSWTRG_Field := Interfaces.SAM.TC.NONE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_CMR1_WAVE_EQ_1_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   --  Clock Selection
   type CMR2_WAVE_EQ_1_TCCLKS_Field is
     (--  Clock selected: internal TIMER_CLOCK1 clock signal (from PMC)
      TIMER_CLOCK1,
      --  Clock selected: internal TIMER_CLOCK2 clock signal (from PMC)
      TIMER_CLOCK2,
      --  Clock selected: internal TIMER_CLOCK3 clock signal (from PMC)
      TIMER_CLOCK3,
      --  Clock selected: internal TIMER_CLOCK4 clock signal (from PMC)
      TIMER_CLOCK4,
      --  Clock selected: internal TIMER_CLOCK5 clock signal (from PMC)
      TIMER_CLOCK5,
      --  Clock selected: XC0
      XC0,
      --  Clock selected: XC1
      XC1,
      --  Clock selected: XC2
      XC2)
     with Size => 3;
   for CMR2_WAVE_EQ_1_TCCLKS_Field use
     (TIMER_CLOCK1 => 0,
      TIMER_CLOCK2 => 1,
      TIMER_CLOCK3 => 2,
      TIMER_CLOCK4 => 3,
      TIMER_CLOCK5 => 4,
      XC0 => 5,
      XC1 => 6,
      XC2 => 7);

   subtype TC0_CMR2_WAVE_EQ_1_CLKI_Field is Interfaces.SAM.Bit;

   --  Burst Signal Selection
   type CMR2_WAVE_EQ_1_BURST_Field is
     (--  The clock is not gated by an external signal.
      NONE,
      --  XC0 is ANDed with the selected clock.
      XC0,
      --  XC1 is ANDed with the selected clock.
      XC1,
      --  XC2 is ANDed with the selected clock.
      XC2)
     with Size => 2;
   for CMR2_WAVE_EQ_1_BURST_Field use
     (NONE => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   subtype TC0_CMR2_WAVE_EQ_1_CPCSTOP_Field is Interfaces.SAM.Bit;
   subtype TC0_CMR2_WAVE_EQ_1_CPCDIS_Field is Interfaces.SAM.Bit;

   --  External Event Edge Selection
   type CMR2_WAVE_EQ_1_EEVTEDG_Field is
     (--  None
      NONE,
      --  Rising edge
      RISING,
      --  Falling edge
      FALLING,
      --  Each edge
      EDGE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_EEVTEDG_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  External Event Selection
   type CMR2_WAVE_EQ_1_EEVT_Field is
     (--  TIOB
      TIOB,
      --  XC0
      XC0,
      --  XC1
      XC1,
      --  XC2
      XC2)
     with Size => 2;
   for CMR2_WAVE_EQ_1_EEVT_Field use
     (TIOB => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   subtype TC0_CMR2_WAVE_EQ_1_ENETRG_Field is Interfaces.SAM.Bit;

   --  Waveform Selection
   type CMR2_WAVE_EQ_1_WAVSEL_Field is
     (--  UP mode without automatic trigger on RC Compare
      UP,
      --  UPDOWN mode without automatic trigger on RC Compare
      UPDOWN,
      --  UP mode with automatic trigger on RC Compare
      UP_RC,
      --  UPDOWN mode with automatic trigger on RC Compare
      UPDOWN_RC)
     with Size => 2;
   for CMR2_WAVE_EQ_1_WAVSEL_Field use
     (UP => 0,
      UPDOWN => 1,
      UP_RC => 2,
      UPDOWN_RC => 3);

   subtype TC0_CMR2_WAVE_EQ_1_WAVE_Field is Interfaces.SAM.Bit;

   --  RA Compare Effect on TIOA
   type CMR2_WAVE_EQ_1_ACPA_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_ACPA_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOA
   type CMR2_WAVE_EQ_1_ACPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_ACPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOA
   type CMR2_WAVE_EQ_1_AEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_AEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOA
   type CMR2_WAVE_EQ_1_ASWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_ASWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RB Compare Effect on TIOB
   type CMR2_WAVE_EQ_1_BCPB_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_BCPB_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOB
   type CMR2_WAVE_EQ_1_BCPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_BCPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOB
   type CMR2_WAVE_EQ_1_BEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_BEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOB
   type CMR2_WAVE_EQ_1_BSWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_BSWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Channel Mode Register (channel = 2)
   type TC0_CMR2_WAVE_EQ_1_Register is record
      --  Clock Selection
      TCCLKS  : CMR2_WAVE_EQ_1_TCCLKS_Field := Interfaces.SAM.TC.TIMER_CLOCK1;
      --  Clock Invert
      CLKI    : TC0_CMR2_WAVE_EQ_1_CLKI_Field := 16#0#;
      --  Burst Signal Selection
      BURST   : CMR2_WAVE_EQ_1_BURST_Field := Interfaces.SAM.TC.NONE;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : TC0_CMR2_WAVE_EQ_1_CPCSTOP_Field := 16#0#;
      --  Counter Clock Disable with RC Compare
      CPCDIS  : TC0_CMR2_WAVE_EQ_1_CPCDIS_Field := 16#0#;
      --  External Event Edge Selection
      EEVTEDG : CMR2_WAVE_EQ_1_EEVTEDG_Field := Interfaces.SAM.TC.NONE;
      --  External Event Selection
      EEVT    : CMR2_WAVE_EQ_1_EEVT_Field := Interfaces.SAM.TC.TIOB;
      --  External Event Trigger Enable
      ENETRG  : TC0_CMR2_WAVE_EQ_1_ENETRG_Field := 16#0#;
      --  Waveform Selection
      WAVSEL  : CMR2_WAVE_EQ_1_WAVSEL_Field := Interfaces.SAM.TC.UP;
      --  Waveform Mode
      WAVE    : TC0_CMR2_WAVE_EQ_1_WAVE_Field := 16#0#;
      --  RA Compare Effect on TIOA
      ACPA    : CMR2_WAVE_EQ_1_ACPA_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOA
      ACPC    : CMR2_WAVE_EQ_1_ACPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOA
      AEEVT   : CMR2_WAVE_EQ_1_AEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOA
      ASWTRG  : CMR2_WAVE_EQ_1_ASWTRG_Field := Interfaces.SAM.TC.NONE;
      --  RB Compare Effect on TIOB
      BCPB    : CMR2_WAVE_EQ_1_BCPB_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOB
      BCPC    : CMR2_WAVE_EQ_1_BCPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOB
      BEEVT   : CMR2_WAVE_EQ_1_BEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOB
      BSWTRG  : CMR2_WAVE_EQ_1_BSWTRG_Field := Interfaces.SAM.TC.NONE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_CMR2_WAVE_EQ_1_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   subtype TC0_BCR_SYNC_Field is Interfaces.SAM.Bit;

   --  Block Control Register
   type TC0_BCR_Register is record
      --  Write-only. Synchro Command
      SYNC          : TC0_BCR_SYNC_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_BCR_Register use record
      SYNC          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  External Clock Signal 0 Selection
   type BMR_TC0XC0S_Field is
     (--  Signal connected to XC0: TCLK0
      TCLK0,
      --  Signal connected to XC0: TIOA1
      TIOA1,
      --  Signal connected to XC0: TIOA2
      TIOA2)
     with Size => 2;
   for BMR_TC0XC0S_Field use
     (TCLK0 => 0,
      TIOA1 => 2,
      TIOA2 => 3);

   --  External Clock Signal 1 Selection
   type BMR_TC1XC1S_Field is
     (--  Signal connected to XC1: TCLK1
      TCLK1,
      --  Signal connected to XC1: TIOA0
      TIOA0,
      --  Signal connected to XC1: TIOA2
      TIOA2)
     with Size => 2;
   for BMR_TC1XC1S_Field use
     (TCLK1 => 0,
      TIOA0 => 2,
      TIOA2 => 3);

   --  External Clock Signal 2 Selection
   type BMR_TC2XC2S_Field is
     (--  Signal connected to XC2: TCLK2
      TCLK2,
      --  Signal connected to XC2: TIOA0
      TIOA0,
      --  Signal connected to XC2: TIOA1
      TIOA1)
     with Size => 2;
   for BMR_TC2XC2S_Field use
     (TCLK2 => 0,
      TIOA0 => 2,
      TIOA1 => 3);

   --  Block Mode Register
   type TC0_BMR_Register is record
      --  External Clock Signal 0 Selection
      TC0XC0S       : BMR_TC0XC0S_Field := Interfaces.SAM.TC.TCLK0;
      --  External Clock Signal 1 Selection
      TC1XC1S       : BMR_TC1XC1S_Field := Interfaces.SAM.TC.TCLK1;
      --  External Clock Signal 2 Selection
      TC2XC2S       : BMR_TC2XC2S_Field := Interfaces.SAM.TC.TCLK2;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_BMR_Register use record
      TC0XC0S       at 0 range 0 .. 1;
      TC1XC1S       at 0 range 2 .. 3;
      TC2XC2S       at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype TC0_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (--  Reset value for the field
      WPMR_WPKEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit.Always reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (WPMR_WPKEY_Field_Reset => 0,
      PASSWD => 5523789);

   --  Write Protection Mode Register
   type TC0_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : TC0_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := WPMR_WPKEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype TC0_RCR0_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register (pdc = 0)
   type TC0_RCR0_Register is record
      --  Receive Counter Register
      RXCTR          : TC0_RCR0_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_RCR0_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TC0_RNCR0_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register (pdc = 0)
   type TC0_RNCR0_Register is record
      --  Receive Next Counter
      RXNCTR         : TC0_RNCR0_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_RNCR0_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TC0_PTCR0_RXTEN_Field is Interfaces.SAM.Bit;
   subtype TC0_PTCR0_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype TC0_PTCR0_TXTEN_Field is Interfaces.SAM.Bit;
   subtype TC0_PTCR0_TXTDIS_Field is Interfaces.SAM.Bit;
   subtype TC0_PTCR0_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype TC0_PTCR0_RXCBDIS_Field is Interfaces.SAM.Bit;
   subtype TC0_PTCR0_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype TC0_PTCR0_TXCBDIS_Field is Interfaces.SAM.Bit;
   subtype TC0_PTCR0_ERRCLR_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register (pdc = 0)
   type TC0_PTCR0_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : TC0_PTCR0_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : TC0_PTCR0_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : TC0_PTCR0_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : TC0_PTCR0_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : TC0_PTCR0_RXCBEN_Field := 16#0#;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : TC0_PTCR0_RXCBDIS_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : TC0_PTCR0_TXCBEN_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : TC0_PTCR0_TXCBDIS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : TC0_PTCR0_ERRCLR_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_PTCR0_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      RXCBDIS        at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      TXCBDIS        at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ERRCLR         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype TC0_PTSR0_RXTEN_Field is Interfaces.SAM.Bit;
   subtype TC0_PTSR0_TXTEN_Field is Interfaces.SAM.Bit;
   subtype TC0_PTSR0_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype TC0_PTSR0_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype TC0_PTSR0_ERR_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register (pdc = 0)
   type TC0_PTSR0_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : TC0_PTSR0_RXTEN_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : TC0_PTSR0_TXTEN_Field;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7;
      --  Read-only. Receiver Transfer Enable
      RXCBEN         : TC0_PTSR0_RXCBEN_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit;
      --  Read-only. Transmitter Transfer Enable
      TXCBEN         : TC0_PTSR0_TXCBEN_Field;
      --  unspecified
      Reserved_19_23 : Interfaces.SAM.UInt5;
      --  Read-only. Transfer Bus Error (clear on read)
      ERR            : TC0_PTSR0_ERR_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_PTSR0_Register use record
      RXTEN          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TXTEN          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      RXCBEN         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TXCBEN         at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      ERR            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TC0_Disc is
     (Default,
      WAVE_EQ_1);

   --  Timer Counter 0
   type TC0_Peripheral
     (Discriminent : TC0_Disc := Default)
   is record
      --  Channel Control Register (channel = 0)
      CCR0           : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 0)
      SMMR0          : aliased SMMR_Register;
      --  Counter Value (channel = 0)
      CV0            : aliased Interfaces.SAM.UInt32;
      --  Register A (channel = 0)
      RA0            : aliased Interfaces.SAM.UInt32;
      --  Register B (channel = 0)
      RB0            : aliased Interfaces.SAM.UInt32;
      --  Register C (channel = 0)
      RC0            : aliased Interfaces.SAM.UInt32;
      --  Status Register (channel = 0)
      SR0            : aliased SR_Register;
      --  Interrupt Enable Register (channel = 0)
      IER0           : aliased IER_Register;
      --  Interrupt Disable Register (channel = 0)
      IDR0           : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 0)
      IMR0           : aliased IMR_Register;
      --  Channel Control Register (channel = 1)
      CCR1           : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 1)
      SMMR1          : aliased SMMR_Register;
      --  Counter Value (channel = 1)
      CV1            : aliased Interfaces.SAM.UInt32;
      --  Register A (channel = 1)
      RA1            : aliased Interfaces.SAM.UInt32;
      --  Register B (channel = 1)
      RB1            : aliased Interfaces.SAM.UInt32;
      --  Register C (channel = 1)
      RC1            : aliased Interfaces.SAM.UInt32;
      --  Status Register (channel = 1)
      SR1            : aliased SR_Register;
      --  Interrupt Enable Register (channel = 1)
      IER1           : aliased IER_Register;
      --  Interrupt Disable Register (channel = 1)
      IDR1           : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 1)
      IMR1           : aliased IMR_Register;
      --  Channel Control Register (channel = 2)
      CCR2           : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 2)
      SMMR2          : aliased SMMR_Register;
      --  Counter Value (channel = 2)
      CV2            : aliased Interfaces.SAM.UInt32;
      --  Register A (channel = 2)
      RA2            : aliased Interfaces.SAM.UInt32;
      --  Register B (channel = 2)
      RB2            : aliased Interfaces.SAM.UInt32;
      --  Register C (channel = 2)
      RC2            : aliased Interfaces.SAM.UInt32;
      --  Status Register (channel = 2)
      SR2            : aliased SR_Register;
      --  Interrupt Enable Register (channel = 2)
      IER2           : aliased IER_Register;
      --  Interrupt Disable Register (channel = 2)
      IDR2           : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 2)
      IMR2           : aliased IMR_Register;
      --  Block Control Register
      BCR            : aliased TC0_BCR_Register;
      --  Block Mode Register
      BMR            : aliased TC0_BMR_Register;
      --  Write Protection Mode Register
      WPMR           : aliased TC0_WPMR_Register;
      --  Receive Pointer Register (pdc = 0)
      RPR0           : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register (pdc = 0)
      RCR0           : aliased TC0_RCR0_Register;
      --  Receive Next Pointer Register (pdc = 0)
      RNPR0          : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register (pdc = 0)
      RNCR0          : aliased TC0_RNCR0_Register;
      --  Transfer Control Register (pdc = 0)
      PTCR0          : aliased TC0_PTCR0_Register;
      --  Transfer Status Register (pdc = 0)
      PTSR0          : aliased TC0_PTSR0_Register;
      case Discriminent is
         when Default =>
            --  Channel Mode Register (channel = 0)
            CMR0 : aliased CMR_Register;
            --  Channel Mode Register (channel = 1)
            CMR1 : aliased CMR_Register;
            --  Channel Mode Register (channel = 2)
            CMR2 : aliased CMR_Register;
         when WAVE_EQ_1 =>
            --  Channel Mode Register (channel = 0)
            CMR0_WAVE_EQ_1 : aliased TC0_CMR0_WAVE_EQ_1_Register;
            --  Channel Mode Register (channel = 1)
            CMR1_WAVE_EQ_1 : aliased TC0_CMR1_WAVE_EQ_1_Register;
            --  Channel Mode Register (channel = 2)
            CMR2_WAVE_EQ_1 : aliased TC0_CMR2_WAVE_EQ_1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TC0_Peripheral use record
      CCR0           at 16#0# range 0 .. 31;
      SMMR0          at 16#8# range 0 .. 31;
      CV0            at 16#10# range 0 .. 31;
      RA0            at 16#14# range 0 .. 31;
      RB0            at 16#18# range 0 .. 31;
      RC0            at 16#1C# range 0 .. 31;
      SR0            at 16#20# range 0 .. 31;
      IER0           at 16#24# range 0 .. 31;
      IDR0           at 16#28# range 0 .. 31;
      IMR0           at 16#2C# range 0 .. 31;
      CCR1           at 16#40# range 0 .. 31;
      SMMR1          at 16#48# range 0 .. 31;
      CV1            at 16#50# range 0 .. 31;
      RA1            at 16#54# range 0 .. 31;
      RB1            at 16#58# range 0 .. 31;
      RC1            at 16#5C# range 0 .. 31;
      SR1            at 16#60# range 0 .. 31;
      IER1           at 16#64# range 0 .. 31;
      IDR1           at 16#68# range 0 .. 31;
      IMR1           at 16#6C# range 0 .. 31;
      CCR2           at 16#80# range 0 .. 31;
      SMMR2          at 16#88# range 0 .. 31;
      CV2            at 16#90# range 0 .. 31;
      RA2            at 16#94# range 0 .. 31;
      RB2            at 16#98# range 0 .. 31;
      RC2            at 16#9C# range 0 .. 31;
      SR2            at 16#A0# range 0 .. 31;
      IER2           at 16#A4# range 0 .. 31;
      IDR2           at 16#A8# range 0 .. 31;
      IMR2           at 16#AC# range 0 .. 31;
      BCR            at 16#C0# range 0 .. 31;
      BMR            at 16#C4# range 0 .. 31;
      WPMR           at 16#E4# range 0 .. 31;
      RPR0           at 16#100# range 0 .. 31;
      RCR0           at 16#104# range 0 .. 31;
      RNPR0          at 16#110# range 0 .. 31;
      RNCR0          at 16#114# range 0 .. 31;
      PTCR0          at 16#120# range 0 .. 31;
      PTSR0          at 16#124# range 0 .. 31;
      CMR0           at 16#4# range 0 .. 31;
      CMR1           at 16#44# range 0 .. 31;
      CMR2           at 16#84# range 0 .. 31;
      CMR0_WAVE_EQ_1 at 16#4# range 0 .. 31;
      CMR1_WAVE_EQ_1 at 16#44# range 0 .. 31;
      CMR2_WAVE_EQ_1 at 16#84# range 0 .. 31;
   end record;

   --  Timer Counter 0
   TC0_Periph : aliased TC0_Peripheral
     with Import, Address => TC0_Base;

   type TC1_Disc is
     (Default,
      WAVE_EQ_1);

   --  Timer Counter 1
   type TC1_Peripheral
     (Discriminent : TC1_Disc := Default)
   is record
      --  Channel Control Register (channel = 0)
      CCR0           : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 0)
      SMMR0          : aliased SMMR_Register;
      --  Counter Value (channel = 0)
      CV0            : aliased Interfaces.SAM.UInt32;
      --  Register A (channel = 0)
      RA0            : aliased Interfaces.SAM.UInt32;
      --  Register B (channel = 0)
      RB0            : aliased Interfaces.SAM.UInt32;
      --  Register C (channel = 0)
      RC0            : aliased Interfaces.SAM.UInt32;
      --  Status Register (channel = 0)
      SR0            : aliased SR_Register;
      --  Interrupt Enable Register (channel = 0)
      IER0           : aliased IER_Register;
      --  Interrupt Disable Register (channel = 0)
      IDR0           : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 0)
      IMR0           : aliased IMR_Register;
      --  Channel Control Register (channel = 1)
      CCR1           : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 1)
      SMMR1          : aliased SMMR_Register;
      --  Counter Value (channel = 1)
      CV1            : aliased Interfaces.SAM.UInt32;
      --  Register A (channel = 1)
      RA1            : aliased Interfaces.SAM.UInt32;
      --  Register B (channel = 1)
      RB1            : aliased Interfaces.SAM.UInt32;
      --  Register C (channel = 1)
      RC1            : aliased Interfaces.SAM.UInt32;
      --  Status Register (channel = 1)
      SR1            : aliased SR_Register;
      --  Interrupt Enable Register (channel = 1)
      IER1           : aliased IER_Register;
      --  Interrupt Disable Register (channel = 1)
      IDR1           : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 1)
      IMR1           : aliased IMR_Register;
      --  Channel Control Register (channel = 2)
      CCR2           : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 2)
      SMMR2          : aliased SMMR_Register;
      --  Counter Value (channel = 2)
      CV2            : aliased Interfaces.SAM.UInt32;
      --  Register A (channel = 2)
      RA2            : aliased Interfaces.SAM.UInt32;
      --  Register B (channel = 2)
      RB2            : aliased Interfaces.SAM.UInt32;
      --  Register C (channel = 2)
      RC2            : aliased Interfaces.SAM.UInt32;
      --  Status Register (channel = 2)
      SR2            : aliased SR_Register;
      --  Interrupt Enable Register (channel = 2)
      IER2           : aliased IER_Register;
      --  Interrupt Disable Register (channel = 2)
      IDR2           : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 2)
      IMR2           : aliased IMR_Register;
      --  Block Control Register
      BCR            : aliased TC0_BCR_Register;
      --  Block Mode Register
      BMR            : aliased TC0_BMR_Register;
      --  Write Protection Mode Register
      WPMR           : aliased TC0_WPMR_Register;
      case Discriminent is
         when Default =>
            --  Channel Mode Register (channel = 0)
            CMR0 : aliased CMR_Register;
            --  Channel Mode Register (channel = 1)
            CMR1 : aliased CMR_Register;
            --  Channel Mode Register (channel = 2)
            CMR2 : aliased CMR_Register;
         when WAVE_EQ_1 =>
            --  Channel Mode Register (channel = 0)
            CMR0_WAVE_EQ_1 : aliased TC0_CMR0_WAVE_EQ_1_Register;
            --  Channel Mode Register (channel = 1)
            CMR1_WAVE_EQ_1 : aliased TC0_CMR1_WAVE_EQ_1_Register;
            --  Channel Mode Register (channel = 2)
            CMR2_WAVE_EQ_1 : aliased TC0_CMR2_WAVE_EQ_1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TC1_Peripheral use record
      CCR0           at 16#0# range 0 .. 31;
      SMMR0          at 16#8# range 0 .. 31;
      CV0            at 16#10# range 0 .. 31;
      RA0            at 16#14# range 0 .. 31;
      RB0            at 16#18# range 0 .. 31;
      RC0            at 16#1C# range 0 .. 31;
      SR0            at 16#20# range 0 .. 31;
      IER0           at 16#24# range 0 .. 31;
      IDR0           at 16#28# range 0 .. 31;
      IMR0           at 16#2C# range 0 .. 31;
      CCR1           at 16#40# range 0 .. 31;
      SMMR1          at 16#48# range 0 .. 31;
      CV1            at 16#50# range 0 .. 31;
      RA1            at 16#54# range 0 .. 31;
      RB1            at 16#58# range 0 .. 31;
      RC1            at 16#5C# range 0 .. 31;
      SR1            at 16#60# range 0 .. 31;
      IER1           at 16#64# range 0 .. 31;
      IDR1           at 16#68# range 0 .. 31;
      IMR1           at 16#6C# range 0 .. 31;
      CCR2           at 16#80# range 0 .. 31;
      SMMR2          at 16#88# range 0 .. 31;
      CV2            at 16#90# range 0 .. 31;
      RA2            at 16#94# range 0 .. 31;
      RB2            at 16#98# range 0 .. 31;
      RC2            at 16#9C# range 0 .. 31;
      SR2            at 16#A0# range 0 .. 31;
      IER2           at 16#A4# range 0 .. 31;
      IDR2           at 16#A8# range 0 .. 31;
      IMR2           at 16#AC# range 0 .. 31;
      BCR            at 16#C0# range 0 .. 31;
      BMR            at 16#C4# range 0 .. 31;
      WPMR           at 16#E4# range 0 .. 31;
      CMR0           at 16#4# range 0 .. 31;
      CMR1           at 16#44# range 0 .. 31;
      CMR2           at 16#84# range 0 .. 31;
      CMR0_WAVE_EQ_1 at 16#4# range 0 .. 31;
      CMR1_WAVE_EQ_1 at 16#44# range 0 .. 31;
      CMR2_WAVE_EQ_1 at 16#84# range 0 .. 31;
   end record;

   --  Timer Counter 1
   TC1_Periph : aliased TC1_Peripheral
     with Import, Address => TC1_Base;

end Interfaces.SAM.TC;
