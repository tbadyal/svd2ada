--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

package Interfaces.SAM.SYSC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  General Purpose Backup Register

   --  General Purpose Backup Register
   type GPBR_GPBR_Registers is array (0 .. 7) of Interfaces.SAM.UInt32;

   subtype RSTC_CR_PROCRST_Field is Interfaces.SAM.Bit;
   subtype RSTC_CR_PERRST_Field is Interfaces.SAM.Bit;
   subtype RSTC_CR_EXTRST_Field is Interfaces.SAM.Bit;

   --  System Reset Key
   type CR_KEY_Field is
     (--  Reset value for the field
      CR_KEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation.
      PASSWD)
     with Size => 8;
   for CR_KEY_Field use
     (CR_KEY_Field_Reset => 0,
      PASSWD => 165);

   --  Control Register
   type RSTC_CR_Register is record
      --  Write-only. Processor Reset
      PROCRST       : RSTC_CR_PROCRST_Field := 16#0#;
      --  unspecified
      Reserved_1_1  : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Peripheral Reset
      PERRST        : RSTC_CR_PERRST_Field := 16#0#;
      --  Write-only. External Reset
      EXTRST        : RSTC_CR_EXTRST_Field := 16#0#;
      --  unspecified
      Reserved_4_23 : Interfaces.SAM.UInt20 := 16#0#;
      --  Write-only. System Reset Key
      KEY           : CR_KEY_Field := CR_KEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_CR_Register use record
      PROCRST       at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      PERRST        at 0 range 2 .. 2;
      EXTRST        at 0 range 3 .. 3;
      Reserved_4_23 at 0 range 4 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   subtype RSTC_SR_URSTS_Field is Interfaces.SAM.Bit;

   --  Reset Type
   type SR_RSTTYP_Field is
     (--  First power-up reset
      GENERAL_RST,
      --  Return from Backup Mode
      BACKUP_RST,
      --  Watchdog fault occurred
      WDT_RST,
      --  Processor reset required by the software
      SOFT_RST,
      --  NRST pin detected low
      USER_RST,
      --  Slow Crystal Failure Detection fault occured
      SLCK_XTAL_RST)
     with Size => 3;
   for SR_RSTTYP_Field use
     (GENERAL_RST => 0,
      BACKUP_RST => 1,
      WDT_RST => 2,
      SOFT_RST => 3,
      USER_RST => 4,
      SLCK_XTAL_RST => 7);

   subtype RSTC_SR_NRSTL_Field is Interfaces.SAM.Bit;
   subtype RSTC_SR_SRCMP_Field is Interfaces.SAM.Bit;

   --  Status Register
   type RSTC_SR_Register is record
      --  Read-only. User Reset Status
      URSTS          : RSTC_SR_URSTS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Reset Type
      RSTTYP         : SR_RSTTYP_Field;
      --  unspecified
      Reserved_11_15 : Interfaces.SAM.UInt5;
      --  Read-only. NRST Pin Level
      NRSTL          : RSTC_SR_NRSTL_Field;
      --  Read-only. Software Reset Command in Progress
      SRCMP          : RSTC_SR_SRCMP_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.SAM.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_SR_Register use record
      URSTS          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      RSTTYP         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      NRSTL          at 0 range 16 .. 16;
      SRCMP          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RSTC_MR_URSTEN_Field is Interfaces.SAM.Bit;
   subtype RSTC_MR_SCKSW_Field is Interfaces.SAM.Bit;
   subtype RSTC_MR_URSTIEN_Field is Interfaces.SAM.Bit;
   subtype RSTC_MR_ERSTL_Field is Interfaces.SAM.UInt4;

   --  Write Access Password
   type MR_KEY_Field is
     (--  Reset value for the field
      MR_KEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation.Always
--  reads as 0.
      PASSWD)
     with Size => 8;
   for MR_KEY_Field use
     (MR_KEY_Field_Reset => 0,
      PASSWD => 165);

   --  Mode Register
   type RSTC_MR_Register is record
      --  User Reset Enable
      URSTEN         : RSTC_MR_URSTEN_Field := 16#1#;
      --  Slow Clock Switching
      SCKSW          : RSTC_MR_SCKSW_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  User Reset Interrupt Enable
      URSTIEN        : RSTC_MR_URSTIEN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  External Reset Length
      ERSTL          : RSTC_MR_ERSTL_Field := 16#0#;
      --  unspecified
      Reserved_12_23 : Interfaces.SAM.UInt12 := 16#0#;
      --  Write Access Password
      KEY            : MR_KEY_Field := MR_KEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_MR_Register use record
      URSTEN         at 0 range 0 .. 0;
      SCKSW          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      URSTIEN        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ERSTL          at 0 range 8 .. 11;
      Reserved_12_23 at 0 range 12 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   subtype RTC_CR_UPDTIM_Field is Interfaces.SAM.Bit;
   subtype RTC_CR_UPDCAL_Field is Interfaces.SAM.Bit;

   --  Time Event Selection
   type CR_TIMEVSEL_Field is
     (--  Minute change
      MINUTE,
      --  Hour change
      HOUR,
      --  Every day at midnight
      MIDNIGHT,
      --  Every day at noon
      NOON)
     with Size => 2;
   for CR_TIMEVSEL_Field use
     (MINUTE => 0,
      HOUR => 1,
      MIDNIGHT => 2,
      NOON => 3);

   --  Calendar Event Selection
   type CR_CALEVSEL_Field is
     (--  Week change (every Monday at time 00:00:00)
      WEEK,
      --  Month change (every 01 of each month at time 00:00:00)
      MONTH,
      --  Year change (every January 1 at time 00:00:00)
      YEAR)
     with Size => 2;
   for CR_CALEVSEL_Field use
     (WEEK => 0,
      MONTH => 1,
      YEAR => 2);

   --  Control Register
   type RTC_CR_Register is record
      --  Update Request Time Register
      UPDTIM         : RTC_CR_UPDTIM_Field := 16#0#;
      --  Update Request Calendar Register
      UPDCAL         : RTC_CR_UPDCAL_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Time Event Selection
      TIMEVSEL       : CR_TIMEVSEL_Field := Interfaces.SAM.SYSC.MINUTE;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Calendar Event Selection
      CALEVSEL       : CR_CALEVSEL_Field := Interfaces.SAM.SYSC.WEEK;
      --  unspecified
      Reserved_18_31 : Interfaces.SAM.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CR_Register use record
      UPDTIM         at 0 range 0 .. 0;
      UPDCAL         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TIMEVSEL       at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      CALEVSEL       at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RTC_MR_HRMOD_Field is Interfaces.SAM.Bit;
   subtype RTC_MR_PERSIAN_Field is Interfaces.SAM.Bit;
   subtype RTC_MR_NEGPPM_Field is Interfaces.SAM.Bit;
   subtype RTC_MR_CORRECTION_Field is Interfaces.SAM.UInt7;
   subtype RTC_MR_HIGHPPM_Field is Interfaces.SAM.Bit;

   --  All ADC Channel Trigger Event Source Selection
   type MR_OUT0_Field is
     (--  No waveform, stuck at '0'
      NO_WAVE,
      --  1 Hz square wave
      FREQ1HZ,
      --  32 Hz square wave
      FREQ32HZ,
      --  64 Hz square wave
      FREQ64HZ,
      --  512 Hz square wave
      FREQ512HZ,
      --  Output is a copy of the alarm flag
      ALARM_FLAG)
     with Size => 3;
   for MR_OUT0_Field use
     (NO_WAVE => 0,
      FREQ1HZ => 1,
      FREQ32HZ => 2,
      FREQ64HZ => 3,
      FREQ512HZ => 4,
      ALARM_FLAG => 6);

   --  ADC Last Channel Trigger Event Source Selection
   type MR_OUT1_Field is
     (--  No waveform, stuck at '0'
      NO_WAVE,
      --  1 Hz square wave
      FREQ1HZ,
      --  32 Hz square wave
      FREQ32HZ,
      --  64 Hz square wave
      FREQ64HZ,
      --  512 Hz square wave
      FREQ512HZ,
      --  Output is a copy of the alarm flag
      ALARM_FLAG)
     with Size => 3;
   for MR_OUT1_Field use
     (NO_WAVE => 0,
      FREQ1HZ => 1,
      FREQ32HZ => 2,
      FREQ64HZ => 3,
      FREQ512HZ => 4,
      ALARM_FLAG => 6);

   --  Mode Register
   type RTC_MR_Register is record
      --  12-/24-hour Mode
      HRMOD          : RTC_MR_HRMOD_Field := 16#0#;
      --  PERSIAN Calendar
      PERSIAN        : RTC_MR_PERSIAN_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.SAM.UInt2 := 16#0#;
      --  NEGative PPM Correction
      NEGPPM         : RTC_MR_NEGPPM_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Slow Clock Correction
      CORRECTION     : RTC_MR_CORRECTION_Field := 16#0#;
      --  HIGH PPM Correction
      HIGHPPM        : RTC_MR_HIGHPPM_Field := 16#0#;
      --  All ADC Channel Trigger Event Source Selection
      OUT0           : MR_OUT0_Field := Interfaces.SAM.SYSC.NO_WAVE;
      --  unspecified
      Reserved_19_19 : Interfaces.SAM.Bit := 16#0#;
      --  ADC Last Channel Trigger Event Source Selection
      OUT1           : MR_OUT1_Field := Interfaces.SAM.SYSC.NO_WAVE;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_MR_Register use record
      HRMOD          at 0 range 0 .. 0;
      PERSIAN        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      NEGPPM         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CORRECTION     at 0 range 8 .. 14;
      HIGHPPM        at 0 range 15 .. 15;
      OUT0           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OUT1           at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype RTC_TIMR_SEC_Field is Interfaces.SAM.UInt7;
   subtype RTC_TIMR_MIN_Field is Interfaces.SAM.UInt7;
   subtype RTC_TIMR_HOUR_Field is Interfaces.SAM.UInt6;
   subtype RTC_TIMR_AMPM_Field is Interfaces.SAM.Bit;

   --  Time Register
   type RTC_TIMR_Register is record
      --  Current Second
      SEC            : RTC_TIMR_SEC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Current Minute
      MIN            : RTC_TIMR_MIN_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit := 16#0#;
      --  Current Hour
      HOUR           : RTC_TIMR_HOUR_Field := 16#0#;
      --  Ante Meridiem Post Meridiem Indicator
      AMPM           : RTC_TIMR_AMPM_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TIMR_Register use record
      SEC            at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MIN            at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HOUR           at 0 range 16 .. 21;
      AMPM           at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype RTC_CALR_CENT_Field is Interfaces.SAM.UInt7;
   subtype RTC_CALR_YEAR_Field is Interfaces.SAM.Byte;
   subtype RTC_CALR_MONTH_Field is Interfaces.SAM.UInt5;
   subtype RTC_CALR_DAY_Field is Interfaces.SAM.UInt3;
   subtype RTC_CALR_DATE_Field is Interfaces.SAM.UInt6;

   --  Calendar Register
   type RTC_CALR_Register is record
      --  Current Century
      CENT           : RTC_CALR_CENT_Field := 16#20#;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Current Year
      YEAR           : RTC_CALR_YEAR_Field := 16#10#;
      --  Current Month
      MONTH          : RTC_CALR_MONTH_Field := 16#1#;
      --  Current Day in Current Week
      DAY            : RTC_CALR_DAY_Field := 16#5#;
      --  Current Day in Current Month
      DATE           : RTC_CALR_DATE_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CALR_Register use record
      CENT           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      YEAR           at 0 range 8 .. 15;
      MONTH          at 0 range 16 .. 20;
      DAY            at 0 range 21 .. 23;
      DATE           at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RTC_TIMALR_SEC_Field is Interfaces.SAM.UInt7;
   subtype RTC_TIMALR_SECEN_Field is Interfaces.SAM.Bit;
   subtype RTC_TIMALR_MIN_Field is Interfaces.SAM.UInt7;
   subtype RTC_TIMALR_MINEN_Field is Interfaces.SAM.Bit;
   subtype RTC_TIMALR_HOUR_Field is Interfaces.SAM.UInt6;
   subtype RTC_TIMALR_AMPM_Field is Interfaces.SAM.Bit;
   subtype RTC_TIMALR_HOUREN_Field is Interfaces.SAM.Bit;

   --  Time Alarm Register
   type RTC_TIMALR_Register is record
      --  Second Alarm
      SEC            : RTC_TIMALR_SEC_Field := 16#0#;
      --  Second Alarm Enable
      SECEN          : RTC_TIMALR_SECEN_Field := 16#0#;
      --  Minute Alarm
      MIN            : RTC_TIMALR_MIN_Field := 16#0#;
      --  Minute Alarm Enable
      MINEN          : RTC_TIMALR_MINEN_Field := 16#0#;
      --  Hour Alarm
      HOUR           : RTC_TIMALR_HOUR_Field := 16#0#;
      --  AM/PM Indicator
      AMPM           : RTC_TIMALR_AMPM_Field := 16#0#;
      --  Hour Alarm Enable
      HOUREN         : RTC_TIMALR_HOUREN_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TIMALR_Register use record
      SEC            at 0 range 0 .. 6;
      SECEN          at 0 range 7 .. 7;
      MIN            at 0 range 8 .. 14;
      MINEN          at 0 range 15 .. 15;
      HOUR           at 0 range 16 .. 21;
      AMPM           at 0 range 22 .. 22;
      HOUREN         at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RTC_CALALR_MONTH_Field is Interfaces.SAM.UInt5;
   subtype RTC_CALALR_MTHEN_Field is Interfaces.SAM.Bit;
   subtype RTC_CALALR_DATE_Field is Interfaces.SAM.UInt6;
   subtype RTC_CALALR_DATEEN_Field is Interfaces.SAM.Bit;

   --  Calendar Alarm Register
   type RTC_CALALR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.SAM.UInt16 := 16#0#;
      --  Month Alarm
      MONTH          : RTC_CALALR_MONTH_Field := 16#1#;
      --  unspecified
      Reserved_21_22 : Interfaces.SAM.UInt2 := 16#0#;
      --  Month Alarm Enable
      MTHEN          : RTC_CALALR_MTHEN_Field := 16#0#;
      --  Date Alarm
      DATE           : RTC_CALALR_DATE_Field := 16#1#;
      --  unspecified
      Reserved_30_30 : Interfaces.SAM.Bit := 16#0#;
      --  Date Alarm Enable
      DATEEN         : RTC_CALALR_DATEEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CALALR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      MONTH          at 0 range 16 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      MTHEN          at 0 range 23 .. 23;
      DATE           at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      DATEEN         at 0 range 31 .. 31;
   end record;

   --  Acknowledge for Update
   type SR_ACKUPD_Field is
     (--  Time and calendar registers cannot be updated.
      FREERUN,
      --  Time and calendar registers can be updated.
      UPDATE)
     with Size => 1;
   for SR_ACKUPD_Field use
     (FREERUN => 0,
      UPDATE => 1);

   --  Alarm Flag
   type SR_ALARM_Field is
     (--  No alarm matching condition occurred.
      NO_ALARMEVENT,
      --  An alarm matching condition has occurred.
      ALARMEVENT)
     with Size => 1;
   for SR_ALARM_Field use
     (NO_ALARMEVENT => 0,
      ALARMEVENT => 1);

   --  Second Event
   type SR_SEC_Field is
     (--  No second event has occurred since the last clear.
      NO_SECEVENT,
      --  At least one second event has occurred since the last clear.
      SECEVENT)
     with Size => 1;
   for SR_SEC_Field use
     (NO_SECEVENT => 0,
      SECEVENT => 1);

   --  Time Event
   type SR_TIMEV_Field is
     (--  No time event has occurred since the last clear.
      NO_TIMEVENT,
      --  At least one time event has occurred since the last clear.
      TIMEVENT)
     with Size => 1;
   for SR_TIMEV_Field use
     (NO_TIMEVENT => 0,
      TIMEVENT => 1);

   --  Calendar Event
   type SR_CALEV_Field is
     (--  No calendar event has occurred since the last clear.
      NO_CALEVENT,
      --  At least one calendar event has occurred since the last clear.
      CALEVENT)
     with Size => 1;
   for SR_CALEV_Field use
     (NO_CALEVENT => 0,
      CALEVENT => 1);

   --  Time and/or Date Free Running Error
   type SR_TDERR_Field is
     (--  The internal free running counters are carrying valid values since the last
--  read of the Status Register (RTC_SR).
      CORRECT,
      --  The internal free running counters have been corrupted (invalid date or
--  time, non-BCD values) since the last read and/or they are still invalid.
      ERR_TIMEDATE)
     with Size => 1;
   for SR_TDERR_Field use
     (CORRECT => 0,
      ERR_TIMEDATE => 1);

   --  Status Register
   type RTC_SR_Register is record
      --  Read-only. Acknowledge for Update
      ACKUPD        : SR_ACKUPD_Field;
      --  Read-only. Alarm Flag
      ALARM         : SR_ALARM_Field;
      --  Read-only. Second Event
      SEC           : SR_SEC_Field;
      --  Read-only. Time Event
      TIMEV         : SR_TIMEV_Field;
      --  Read-only. Calendar Event
      CALEV         : SR_CALEV_Field;
      --  Read-only. Time and/or Date Free Running Error
      TDERR         : SR_TDERR_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SR_Register use record
      ACKUPD        at 0 range 0 .. 0;
      ALARM         at 0 range 1 .. 1;
      SEC           at 0 range 2 .. 2;
      TIMEV         at 0 range 3 .. 3;
      CALEV         at 0 range 4 .. 4;
      TDERR         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype RTC_SCCR_ACKCLR_Field is Interfaces.SAM.Bit;
   subtype RTC_SCCR_ALRCLR_Field is Interfaces.SAM.Bit;
   subtype RTC_SCCR_SECCLR_Field is Interfaces.SAM.Bit;
   subtype RTC_SCCR_TIMCLR_Field is Interfaces.SAM.Bit;
   subtype RTC_SCCR_CALCLR_Field is Interfaces.SAM.Bit;
   subtype RTC_SCCR_TDERRCLR_Field is Interfaces.SAM.Bit;

   --  Status Clear Command Register
   type RTC_SCCR_Register is record
      --  Write-only. Acknowledge Clear
      ACKCLR        : RTC_SCCR_ACKCLR_Field := 16#0#;
      --  Write-only. Alarm Clear
      ALRCLR        : RTC_SCCR_ALRCLR_Field := 16#0#;
      --  Write-only. Second Clear
      SECCLR        : RTC_SCCR_SECCLR_Field := 16#0#;
      --  Write-only. Time Clear
      TIMCLR        : RTC_SCCR_TIMCLR_Field := 16#0#;
      --  Write-only. Calendar Clear
      CALCLR        : RTC_SCCR_CALCLR_Field := 16#0#;
      --  Write-only. Time and/or Date Free Running Error Clear
      TDERRCLR      : RTC_SCCR_TDERRCLR_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SCCR_Register use record
      ACKCLR        at 0 range 0 .. 0;
      ALRCLR        at 0 range 1 .. 1;
      SECCLR        at 0 range 2 .. 2;
      TIMCLR        at 0 range 3 .. 3;
      CALCLR        at 0 range 4 .. 4;
      TDERRCLR      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype RTC_IER_ACKEN_Field is Interfaces.SAM.Bit;
   subtype RTC_IER_ALREN_Field is Interfaces.SAM.Bit;
   subtype RTC_IER_SECEN_Field is Interfaces.SAM.Bit;
   subtype RTC_IER_TIMEN_Field is Interfaces.SAM.Bit;
   subtype RTC_IER_CALEN_Field is Interfaces.SAM.Bit;
   subtype RTC_IER_TDERREN_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type RTC_IER_Register is record
      --  Write-only. Acknowledge Update Interrupt Enable
      ACKEN         : RTC_IER_ACKEN_Field := 16#0#;
      --  Write-only. Alarm Interrupt Enable
      ALREN         : RTC_IER_ALREN_Field := 16#0#;
      --  Write-only. Second Event Interrupt Enable
      SECEN         : RTC_IER_SECEN_Field := 16#0#;
      --  Write-only. Time Event Interrupt Enable
      TIMEN         : RTC_IER_TIMEN_Field := 16#0#;
      --  Write-only. Calendar Event Interrupt Enable
      CALEN         : RTC_IER_CALEN_Field := 16#0#;
      --  Write-only. Time and/or Date Error Interrupt Enable
      TDERREN       : RTC_IER_TDERREN_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_IER_Register use record
      ACKEN         at 0 range 0 .. 0;
      ALREN         at 0 range 1 .. 1;
      SECEN         at 0 range 2 .. 2;
      TIMEN         at 0 range 3 .. 3;
      CALEN         at 0 range 4 .. 4;
      TDERREN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype RTC_IDR_ACKDIS_Field is Interfaces.SAM.Bit;
   subtype RTC_IDR_ALRDIS_Field is Interfaces.SAM.Bit;
   subtype RTC_IDR_SECDIS_Field is Interfaces.SAM.Bit;
   subtype RTC_IDR_TIMDIS_Field is Interfaces.SAM.Bit;
   subtype RTC_IDR_CALDIS_Field is Interfaces.SAM.Bit;
   subtype RTC_IDR_TDERRDIS_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type RTC_IDR_Register is record
      --  Write-only. Acknowledge Update Interrupt Disable
      ACKDIS        : RTC_IDR_ACKDIS_Field := 16#0#;
      --  Write-only. Alarm Interrupt Disable
      ALRDIS        : RTC_IDR_ALRDIS_Field := 16#0#;
      --  Write-only. Second Event Interrupt Disable
      SECDIS        : RTC_IDR_SECDIS_Field := 16#0#;
      --  Write-only. Time Event Interrupt Disable
      TIMDIS        : RTC_IDR_TIMDIS_Field := 16#0#;
      --  Write-only. Calendar Event Interrupt Disable
      CALDIS        : RTC_IDR_CALDIS_Field := 16#0#;
      --  Write-only. Time and/or Date Error Interrupt Disable
      TDERRDIS      : RTC_IDR_TDERRDIS_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_IDR_Register use record
      ACKDIS        at 0 range 0 .. 0;
      ALRDIS        at 0 range 1 .. 1;
      SECDIS        at 0 range 2 .. 2;
      TIMDIS        at 0 range 3 .. 3;
      CALDIS        at 0 range 4 .. 4;
      TDERRDIS      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype RTC_IMR_ACK_Field is Interfaces.SAM.Bit;
   subtype RTC_IMR_ALR_Field is Interfaces.SAM.Bit;
   subtype RTC_IMR_SEC_Field is Interfaces.SAM.Bit;
   subtype RTC_IMR_TIM_Field is Interfaces.SAM.Bit;
   subtype RTC_IMR_CAL_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type RTC_IMR_Register is record
      --  Read-only. Acknowledge Update Interrupt Mask
      ACK           : RTC_IMR_ACK_Field;
      --  Read-only. Alarm Interrupt Mask
      ALR           : RTC_IMR_ALR_Field;
      --  Read-only. Second Event Interrupt Mask
      SEC           : RTC_IMR_SEC_Field;
      --  Read-only. Time Event Interrupt Mask
      TIM           : RTC_IMR_TIM_Field;
      --  Read-only. Calendar Event Interrupt Mask
      CAL           : RTC_IMR_CAL_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.SAM.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_IMR_Register use record
      ACK           at 0 range 0 .. 0;
      ALR           at 0 range 1 .. 1;
      SEC           at 0 range 2 .. 2;
      TIM           at 0 range 3 .. 3;
      CAL           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype RTC_VER_NVTIM_Field is Interfaces.SAM.Bit;
   subtype RTC_VER_NVCAL_Field is Interfaces.SAM.Bit;
   subtype RTC_VER_NVTIMALR_Field is Interfaces.SAM.Bit;
   subtype RTC_VER_NVCALALR_Field is Interfaces.SAM.Bit;

   --  Valid Entry Register
   type RTC_VER_Register is record
      --  Read-only. Non-valid Time
      NVTIM         : RTC_VER_NVTIM_Field;
      --  Read-only. Non-valid Calendar
      NVCAL         : RTC_VER_NVCAL_Field;
      --  Read-only. Non-valid Time Alarm
      NVTIMALR      : RTC_VER_NVTIMALR_Field;
      --  Read-only. Non-valid Calendar Alarm
      NVCALALR      : RTC_VER_NVCALALR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.SAM.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_VER_Register use record
      NVTIM         at 0 range 0 .. 0;
      NVCAL         at 0 range 1 .. 1;
      NVTIMALR      at 0 range 2 .. 2;
      NVCALALR      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype RTC_MSR_MS_Field is Interfaces.SAM.UInt10;

   --  Milliseconds Register
   type RTC_MSR_Register is record
      --  Read-only. Number of 1/1024 seconds elapsed within 1 second
      MS             : RTC_MSR_MS_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_MSR_Register use record
      MS             at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RTC_WPMR_WPEN_Field is Interfaces.SAM.Bit;

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
      PASSWD => 5395523);

   --  Write Protection Mode Register
   type RTC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : RTC_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := WPMR_WPKEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype RTT_MR_RTPRES_Field is Interfaces.SAM.UInt16;
   subtype RTT_MR_ALMIEN_Field is Interfaces.SAM.Bit;
   subtype RTT_MR_RTTINCIEN_Field is Interfaces.SAM.Bit;
   subtype RTT_MR_RTTRST_Field is Interfaces.SAM.Bit;
   subtype RTT_MR_RTTDIS_Field is Interfaces.SAM.Bit;
   subtype RTT_MR_INC2AEN_Field is Interfaces.SAM.Bit;
   subtype RTT_MR_EVAEN_Field is Interfaces.SAM.Bit;
   subtype RTT_MR_RTC1HZ_Field is Interfaces.SAM.Bit;

   --  Mode Register
   type RTT_MR_Register is record
      --  Real-time Timer Prescaler Value
      RTPRES         : RTT_MR_RTPRES_Field := 16#8000#;
      --  Alarm Interrupt Enable
      ALMIEN         : RTT_MR_ALMIEN_Field := 16#0#;
      --  Real-time Timer Increment Interrupt Enable
      RTTINCIEN      : RTT_MR_RTTINCIEN_Field := 16#0#;
      --  Real-time Timer Restart
      RTTRST         : RTT_MR_RTTRST_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.SAM.Bit := 16#0#;
      --  Real-time Timer Disable
      RTTDIS         : RTT_MR_RTTDIS_Field := 16#0#;
      --  RTTINC2 Alarm Enable
      INC2AEN        : RTT_MR_INC2AEN_Field := 16#0#;
      --  Trigger Event Alarm Enable
      EVAEN          : RTT_MR_EVAEN_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit := 16#0#;
      --  Real-Time Clock 1Hz Clock Selection
      RTC1HZ         : RTT_MR_RTC1HZ_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTT_MR_Register use record
      RTPRES         at 0 range 0 .. 15;
      ALMIEN         at 0 range 16 .. 16;
      RTTINCIEN      at 0 range 17 .. 17;
      RTTRST         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      RTTDIS         at 0 range 20 .. 20;
      INC2AEN        at 0 range 21 .. 21;
      EVAEN          at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RTC1HZ         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype RTT_SR_ALMS_Field is Interfaces.SAM.Bit;
   --  RTT_SR_RTTINC array element
   subtype RTT_SR_RTTINC_Element is Interfaces.SAM.Bit;

   --  RTT_SR_RTTINC array
   type RTT_SR_RTTINC_Field_Array is array (1 .. 2) of RTT_SR_RTTINC_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for RTT_SR_RTTINC
   type RTT_SR_RTTINC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTTINC as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  RTTINC as an array
            Arr : RTT_SR_RTTINC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RTT_SR_RTTINC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Status Register
   type RTT_SR_Register is record
      --  Read-only. Real-time Alarm Status
      ALMS          : RTT_SR_ALMS_Field;
      --  Read-only. Prescaler Roll-over Status
      RTTINC        : RTT_SR_RTTINC_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTT_SR_Register use record
      ALMS          at 0 range 0 .. 0;
      RTTINC        at 0 range 1 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Selection of the 32-bit Counter Modulo to generate RTTINC2 flag
   type MODR_SELINC2_Field is
     (--  The RTTINC2 flag never rises
      NO_RTTINC2,
      --  The RTTINC2 flag is set when CRTV modulo 64 equals 0
      MOD64,
      --  The RTTINC2 flag is set when CRTV modulo 128 equals 0
      MOD128,
      --  The RTTINC2 flag is set when CRTV modulo 256 equals 0
      MOD256,
      --  The RTTINC2 flag is set when CRTV modulo 512 equals 0
      MOD512,
      --  The RTTINC2 flag is set when CRTV modulo 1024 equals 0.Example: If
--  RTPRES=32 then RTTINC2 flag rises once per second if the slow clock is
--  32.768 kHz.
      MOD1024,
      --  The RTTINC2 flag is set when CRTV modulo 2048 equals 0
      MOD2048,
      --  The RTTINC2 flag is set when CRTV modulo 4096 equals 0
      MOD4096)
     with Size => 3;
   for MODR_SELINC2_Field use
     (NO_RTTINC2 => 0,
      MOD64 => 1,
      MOD128 => 2,
      MOD256 => 3,
      MOD512 => 4,
      MOD1024 => 5,
      MOD2048 => 6,
      MOD4096 => 7);

   --  Selection of the 32-bit Counter Modulo to generate the trigger event
   type MODR_SELTRGEV_Field is
     (--  No event generated
      NO_EVENT,
      --  Event occurs when CRTV modulo 2 equals 0
      MOD2,
      --  Event occurs when CRTV modulo 4 equals 0
      MOD4,
      --  Event occurs when CRTV modulo 8 equals 0
      MOD8,
      --  Event occurs when CRTV modulo 16 equals 0
      MOD16,
      --  Event occurs when CRTV modulo 32 equals 0
      MOD32,
      --  Event occurs when CRTV modulo 64 equals 0
      MOD64,
      --  Event occurs when CRTV modulo 128 equals 0
      MOD128)
     with Size => 3;
   for MODR_SELTRGEV_Field use
     (NO_EVENT => 0,
      MOD2 => 1,
      MOD4 => 2,
      MOD8 => 3,
      MOD16 => 4,
      MOD32 => 5,
      MOD64 => 6,
      MOD128 => 7);

   --  Modulo Selection Register
   type RTT_MODR_Register is record
      --  Selection of the 32-bit Counter Modulo to generate RTTINC2 flag
      SELINC2        : MODR_SELINC2_Field := Interfaces.SAM.SYSC.NO_RTTINC2;
      --  unspecified
      Reserved_3_7   : Interfaces.SAM.UInt5 := 16#0#;
      --  Selection of the 32-bit Counter Modulo to generate the trigger event
      SELTRGEV       : MODR_SELTRGEV_Field := Interfaces.SAM.SYSC.NO_EVENT;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTT_MODR_Register use record
      SELINC2        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SELTRGEV       at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Voltage Regulator Off
   type CR_VROFF_Field is
     (--  No effect.
      NO_EFFECT,
      --  If KEY is correct, asserts the system reset signal and stops the voltage
--  regulator.
      STOP_VREG)
     with Size => 1;
   for CR_VROFF_Field use
     (NO_EFFECT => 0,
      STOP_VREG => 1);

   --  Crystal Oscillator Select
   type CR_XTALSEL_Field is
     (--  No effect.
      NO_EFFECT,
      --  If KEY is correct, switches the slow clock on the crystal oscillator
--  output.
      CRYSTAL_SEL)
     with Size => 1;
   for CR_XTALSEL_Field use
     (NO_EFFECT => 0,
      CRYSTAL_SEL => 1);

   --  Supply Controller Control Register
   type SUPC_CR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Voltage Regulator Off
      VROFF         : CR_VROFF_Field := Interfaces.SAM.SYSC.NO_EFFECT;
      --  Write-only. Crystal Oscillator Select
      XTALSEL       : CR_XTALSEL_Field := Interfaces.SAM.SYSC.NO_EFFECT;
      --  unspecified
      Reserved_4_23 : Interfaces.SAM.UInt20 := 16#0#;
      --  Write-only. Password
      KEY           : CR_KEY_Field := CR_KEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      VROFF         at 0 range 2 .. 2;
      XTALSEL       at 0 range 3 .. 3;
      Reserved_4_23 at 0 range 4 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   subtype SUPC_SMMR_SMTH_Field is Interfaces.SAM.UInt4;

   --  Supply Monitor Sampling Period
   type SMMR_SMSMPL_Field is
     (--  Supply Monitor disabled
      SMD,
      --  Continuous Supply Monitor
      CSM,
      --  Supply Monitor enables one SLCK period every 32 SLCK periods
      Val_32SLCK,
      --  Supply Monitor enables one SLCK period every 256 SLCK periods
      Val_256SLCK,
      --  Supply Monitor enables one SLCK period every 2,048 SLCK periods
      Val_2048SLCK)
     with Size => 3;
   for SMMR_SMSMPL_Field use
     (SMD => 0,
      CSM => 1,
      Val_32SLCK => 2,
      Val_256SLCK => 3,
      Val_2048SLCK => 4);

   --  Supply Monitor Reset Enable
   type SMMR_SMRSTEN_Field is
     (--  The core reset signal vddcore_nreset is not affected when a supply monitor
--  detection occurs.
      NOT_ENABLE,
      --  The core reset signal vddcore_nreset is asserted when a supply monitor
--  detection occurs.
      ENABLE)
     with Size => 1;
   for SMMR_SMRSTEN_Field use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Supply Monitor Interrupt Enable
   type SMMR_SMIEN_Field is
     (--  The SUPC interrupt signal is not affected when a supply monitor detection
--  occurs.
      NOT_ENABLE,
      --  The SUPC interrupt signal is asserted when a supply monitor detection
--  occurs.
      ENABLE)
     with Size => 1;
   for SMMR_SMIEN_Field use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Supply Controller Supply Monitor Mode Register
   type SUPC_SMMR_Register is record
      --  Supply Monitor Threshold
      SMTH           : SUPC_SMMR_SMTH_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.SAM.UInt4 := 16#0#;
      --  Supply Monitor Sampling Period
      SMSMPL         : SMMR_SMSMPL_Field := Interfaces.SAM.SYSC.SMD;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit := 16#0#;
      --  Supply Monitor Reset Enable
      SMRSTEN        : SMMR_SMRSTEN_Field := Interfaces.SAM.SYSC.NOT_ENABLE;
      --  Supply Monitor Interrupt Enable
      SMIEN          : SMMR_SMIEN_Field := Interfaces.SAM.SYSC.NOT_ENABLE;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SMMR_Register use record
      SMTH           at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      SMSMPL         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SMRSTEN        at 0 range 12 .. 12;
      SMIEN          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  POR Core Reset Enable
   type MR_BODRSTEN_Field is
     (--  The core reset signal vddcore_nreset is not affected when a brownout
--  detection occurs.
      NOT_ENABLE,
      --  The core reset signal vddcore_nreset is asserted when a brownout detection
--  occurs.
      ENABLE)
     with Size => 1;
   for MR_BODRSTEN_Field use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  POR Core Disable
   type MR_BODDIS_Field is
     (--  The core brownout detector is enabled.
      ENABLE,
      --  The core brownout detector is disabled.
      DISABLE)
     with Size => 1;
   for MR_BODDIS_Field use
     (ENABLE => 0,
      DISABLE => 1);

   --  Oscillator Bypass
   type MR_OSCBYPASS_Field is
     (--  No effect. Clock selection depends on XTALSEL value.
      NO_EFFECT,
      --  The 32 kHz crystal oscillator is selected and put in bypass mode.
      BYPASS)
     with Size => 1;
   for MR_OSCBYPASS_Field use
     (NO_EFFECT => 0,
      BYPASS => 1);

   --  Cache Data SRAM Power Switch
   type MR_CDPSWITCH_Field is
     (--  The cache data SRAM is not powered.
      OFF,
      --  The cache data SRAM is powered.
      ON)
     with Size => 1;
   for MR_CDPSWITCH_Field use
     (OFF => 0,
      ON => 1);

   --  Cache Tag SRAM Power Switch
   type MR_CTPSWITCH_Field is
     (--  The cache tag SRAM is not powered.
      OFF,
      --  The cache tag SRAM is powered.
      ON)
     with Size => 1;
   for MR_CTPSWITCH_Field use
     (OFF => 0,
      ON => 1);

   subtype SUPC_MR_ONE_Field is Interfaces.SAM.Bit;

   --  Supply Controller Mode Register
   type SUPC_MR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.SAM.UInt12 := 16#A00#;
      --  POR Core Reset Enable
      BODRSTEN       : MR_BODRSTEN_Field := Interfaces.SAM.SYSC.ENABLE;
      --  POR Core Disable
      BODDIS         : MR_BODDIS_Field := Interfaces.SAM.SYSC.ENABLE;
      --  unspecified
      Reserved_14_19 : Interfaces.SAM.UInt6 := 16#1#;
      --  Oscillator Bypass
      OSCBYPASS      : MR_OSCBYPASS_Field := Interfaces.SAM.SYSC.NO_EFFECT;
      --  Cache Data SRAM Power Switch
      CDPSWITCH      : MR_CDPSWITCH_Field := Interfaces.SAM.SYSC.ON;
      --  Cache Tag SRAM Power Switch
      CTPSWITCH      : MR_CTPSWITCH_Field := Interfaces.SAM.SYSC.ON;
      --  This bit must always be set to 1.
      ONE            : SUPC_MR_ONE_Field := 16#1#;
      --  Password Key
      KEY            : MR_KEY_Field := MR_KEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_MR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      BODRSTEN       at 0 range 12 .. 12;
      BODDIS         at 0 range 13 .. 13;
      Reserved_14_19 at 0 range 14 .. 19;
      OSCBYPASS      at 0 range 20 .. 20;
      CDPSWITCH      at 0 range 21 .. 21;
      CTPSWITCH      at 0 range 22 .. 22;
      ONE            at 0 range 23 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   --  Supply Monitor Wake-up Enable
   type WUMR_SMEN_Field is
     (--  The supply monitor detection has no wake-up effect.
      NOT_ENABLE,
      --  The supply monitor detection forces the wake-up of the core power supply.
      ENABLE)
     with Size => 1;
   for WUMR_SMEN_Field use
     (NOT_ENABLE => 0,
      ENABLE => 1);

   --  Real-time Timer Wake-up Enable
   type WUMR_RTTEN_Field is
     (--  Reset value for the field
      WUMR_RTTEN_Field_Reset,
      --  The RTT alarm signal forces the wake-up of the core power supply.
      ENABLE)
     with Size => 1;
   for WUMR_RTTEN_Field use
     (WUMR_RTTEN_Field_Reset => 0,
      ENABLE => 1);

   --  Real-time Clock Wake-up Enable
   type WUMR_RTCEN_Field is
     (--  Reset value for the field
      WUMR_RTCEN_Field_Reset,
      --  The RTC alarm signal forces the wake-up of the core power supply.
      ENABLE)
     with Size => 1;
   for WUMR_RTCEN_Field use
     (WUMR_RTCEN_Field_Reset => 0,
      ENABLE => 1);

   --  Wake-up Inputs Debouncer Period
   type WUMR_WKUPDBC_Field is
     (--  Immediate, no debouncing, detected active at least on one Slow Clock edge.
      IMMEDIATE,
      --  WKUPx shall be in its active state for at least 3 SLCK periods
      Val_3_SCLK,
      --  WKUPx shall be in its active state for at least 32 SLCK periods
      Val_32_SCLK,
      --  WKUPx shall be in its active state for at least 512 SLCK periods
      Val_512_SCLK,
      --  WKUPx shall be in its active state for at least 4,096 SLCK periods
      Val_4096_SCLK,
      --  WKUPx shall be in its active state for at least 32,768 SLCK periods
      Val_32768_SCLK)
     with Size => 3;
   for WUMR_WKUPDBC_Field use
     (IMMEDIATE => 0,
      Val_3_SCLK => 1,
      Val_32_SCLK => 2,
      Val_512_SCLK => 3,
      Val_4096_SCLK => 4,
      Val_32768_SCLK => 5);

   --  Supply Controller Wake-up Mode Register
   type SUPC_WUMR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.SAM.Bit := 16#0#;
      --  Supply Monitor Wake-up Enable
      SMEN           : WUMR_SMEN_Field := Interfaces.SAM.SYSC.NOT_ENABLE;
      --  Real-time Timer Wake-up Enable
      RTTEN          : WUMR_RTTEN_Field := WUMR_RTTEN_Field_Reset;
      --  Real-time Clock Wake-up Enable
      RTCEN          : WUMR_RTCEN_Field := WUMR_RTCEN_Field_Reset;
      --  unspecified
      Reserved_4_11  : Interfaces.SAM.Byte := 16#0#;
      --  Wake-up Inputs Debouncer Period
      WKUPDBC        : WUMR_WKUPDBC_Field := Interfaces.SAM.SYSC.IMMEDIATE;
      --  unspecified
      Reserved_15_31 : Interfaces.SAM.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_WUMR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SMEN           at 0 range 1 .. 1;
      RTTEN          at 0 range 2 .. 2;
      RTCEN          at 0 range 3 .. 3;
      Reserved_4_11  at 0 range 4 .. 11;
      WKUPDBC        at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Wake-up Input Enable 0
   type WUIR_WKUPEN0_Field is
     (--  The corresponding wake-up input has no wake-up effect.
      DISABLE,
      --  The corresponding wake-up input forces the wake-up of the core power
--  supply.
      ENABLE)
     with Size => 1;
   for WUIR_WKUPEN0_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  SUPC_WUIR_WKUPEN array
   type SUPC_WUIR_WKUPEN_Field_Array is array (0 .. 15) of WUIR_WKUPEN0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for SUPC_WUIR_WKUPEN
   type SUPC_WUIR_WKUPEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPEN as a value
            Val : Interfaces.SAM.UInt16;
         when True =>
            --  WKUPEN as an array
            Arr : SUPC_WUIR_WKUPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SUPC_WUIR_WKUPEN_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Wake-up Input Type 0
   type WUIR_WKUPT0_Field is
     (--  A low level for a period defined by WKUPDBC on the corresponding wake-up
--  input forces the wake-up of the core power supply.
      LOW,
      --  A high level for a period defined by WKUPDBC on the corresponding wake-up
--  input forces the wake-up of the core power supply.
      HIGH)
     with Size => 1;
   for WUIR_WKUPT0_Field use
     (LOW => 0,
      HIGH => 1);

   --  SUPC_WUIR_WKUPT array
   type SUPC_WUIR_WKUPT_Field_Array is array (0 .. 15) of WUIR_WKUPT0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for SUPC_WUIR_WKUPT
   type SUPC_WUIR_WKUPT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPT as a value
            Val : Interfaces.SAM.UInt16;
         when True =>
            --  WKUPT as an array
            Arr : SUPC_WUIR_WKUPT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SUPC_WUIR_WKUPT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Supply Controller Wake-up Inputs Register
   type SUPC_WUIR_Register is record
      --  Wake-up Input Enable 0
      WKUPEN : SUPC_WUIR_WKUPEN_Field := (As_Array => False, Val => 16#0#);
      --  Wake-up Input Type 0
      WKUPT  : SUPC_WUIR_WKUPT_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_WUIR_Register use record
      WKUPEN at 0 range 0 .. 15;
      WKUPT  at 0 range 16 .. 31;
   end record;

   --  WKUP Wake-up Status
   type SR_WKUPS_Field is
     (--  No wake-up due to the assertion of the WKUP pins has occurred since the
--  last read of SUPC_SR.
      NO,
      --  At least one wake-up due to the assertion of the WKUP pins has occurred
--  since the last read of SUPC_SR.
      PRESENT)
     with Size => 1;
   for SR_WKUPS_Field use
     (NO => 0,
      PRESENT => 1);

   --  Brownout Detector Reset Status
   type SR_BODRSTS_Field is
     (--  No core brownout rising edge event has been detected since the last read of
--  the SUPC_SR.
      NO,
      --  At least one brownout output rising edge event has been detected since the
--  last read of the SUPC_SR.
      PRESENT)
     with Size => 1;
   for SR_BODRSTS_Field use
     (NO => 0,
      PRESENT => 1);

   --  Supply Monitor Reset Status
   type SR_SMRSTS_Field is
     (--  No supply monitor detection has generated a core reset since the last read
--  of the SUPC_SR.
      NO,
      --  At least one supply monitor detection has generated a core reset since the
--  last read of the SUPC_SR.
      PRESENT)
     with Size => 1;
   for SR_SMRSTS_Field use
     (NO => 0,
      PRESENT => 1);

   --  Supply Monitor Status
   type SR_SMS_Field is
     (--  No supply monitor detection since the last read of SUPC_SR.
      NO,
      --  At least one supply monitor detection since the last read of SUPC_SR.
      PRESENT)
     with Size => 1;
   for SR_SMS_Field use
     (NO => 0,
      PRESENT => 1);

   --  Supply Monitor Output Status
   type SR_SMOS_Field is
     (--  The supply monitor detected VDDIO higher than its threshold at its last
--  measurement.
      HIGH,
      --  The supply monitor detected VDDIO lower than its threshold at its last
--  measurement.
      LOW)
     with Size => 1;
   for SR_SMOS_Field use
     (HIGH => 0,
      LOW => 1);

   --  32-kHz Oscillator Selection Status
   type SR_OSCSEL_Field is
     (--  The slow clock SLCK is generated by the embedded 32 kHz RC oscillator.
      RC,
      --  The slow clock SLCK is generated by the 32 kHz crystal oscillator.
      CRYST)
     with Size => 1;
   for SR_OSCSEL_Field use
     (RC => 0,
      CRYST => 1);

   --  WKUP Input Status 0
   type SR_WKUPIS0_Field is
     (--  The corresponding wake-up input is disabled, or was inactive at the time
--  the debouncer triggered a wake-up event.
      DISABLED,
      --  The corresponding wake-up input was active at the time the debouncer
--  triggered a wake-up event.
      ENABLED)
     with Size => 1;
   for SR_WKUPIS0_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  SUPC_SR_WKUPIS array
   type SUPC_SR_WKUPIS_Field_Array is array (0 .. 15) of SR_WKUPIS0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for SUPC_SR_WKUPIS
   type SUPC_SR_WKUPIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPIS as a value
            Val : Interfaces.SAM.UInt16;
         when True =>
            --  WKUPIS as an array
            Arr : SUPC_SR_WKUPIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SUPC_SR_WKUPIS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Supply Controller Status Register
   type SUPC_SR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.SAM.Bit;
      --  Read-only. WKUP Wake-up Status
      WKUPS         : SR_WKUPS_Field;
      --  unspecified
      Reserved_2_2  : Interfaces.SAM.Bit;
      --  Read-only. Brownout Detector Reset Status
      BODRSTS       : SR_BODRSTS_Field;
      --  Read-only. Supply Monitor Reset Status
      SMRSTS        : SR_SMRSTS_Field;
      --  Read-only. Supply Monitor Status
      SMS           : SR_SMS_Field;
      --  Read-only. Supply Monitor Output Status
      SMOS          : SR_SMOS_Field;
      --  Read-only. 32-kHz Oscillator Selection Status
      OSCSEL        : SR_OSCSEL_Field;
      --  unspecified
      Reserved_8_15 : Interfaces.SAM.Byte;
      --  Read-only. WKUP Input Status 0
      WKUPIS        : SUPC_SR_WKUPIS_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_SR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      WKUPS         at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      BODRSTS       at 0 range 3 .. 3;
      SMRSTS        at 0 range 4 .. 4;
      SMS           at 0 range 5 .. 5;
      SMOS          at 0 range 6 .. 6;
      OSCSEL        at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      WKUPIS        at 0 range 16 .. 31;
   end record;

   --  Low Power Value Selection
   type PWMR_LPOWERS_Field is
     (--  The trimming value applied to the regulator when the device is in wait
--  mode. This value is factory-defined.
      FACTORY,
      --  The trimming value applied to the regulator is defined by the value
--  programmed in the LPOWERx bits.
      USER)
     with Size => 1;
   for PWMR_LPOWERS_Field use
     (FACTORY => 0,
      USER => 1);

   --  SUPC_PWMR_LPOWER array element
   subtype SUPC_PWMR_LPOWER_Element is Interfaces.SAM.Bit;

   --  SUPC_PWMR_LPOWER array
   type SUPC_PWMR_LPOWER_Field_Array is array (0 .. 3)
     of SUPC_PWMR_LPOWER_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SUPC_PWMR_LPOWER
   type SUPC_PWMR_LPOWER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LPOWER as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  LPOWER as an array
            Arr : SUPC_PWMR_LPOWER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SUPC_PWMR_LPOWER_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Start-up Time when Resuming from Wait Mode
   type PWMR_STUPTIME_Field is
     (--  Fast start-up.
      FAST,
      --  Slow start-up.
      SLOW)
     with Size => 1;
   for PWMR_STUPTIME_Field use
     (FAST => 0,
      SLOW => 1);

   --  Enhanced Custom Power Value Selection
   type PWMR_ECPWRS_Field is
     (--  The trimming value applied to the regulator when the device is in active
--  mode. This value is factory-defined.
      FACTORY,
      --  The trimming value applied to the regulator is defined by the value
--  programmed in ECPWRx bits.
      USER)
     with Size => 1;
   for PWMR_ECPWRS_Field use
     (FACTORY => 0,
      USER => 1);

   --  SUPC_PWMR_ECPWR array element
   subtype SUPC_PWMR_ECPWR_Element is Interfaces.SAM.Bit;

   --  SUPC_PWMR_ECPWR array
   type SUPC_PWMR_ECPWR_Field_Array is array (0 .. 3)
     of SUPC_PWMR_ECPWR_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SUPC_PWMR_ECPWR
   type SUPC_PWMR_ECPWR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ECPWR as a value
            Val : Interfaces.SAM.UInt4;
         when True =>
            --  ECPWR as an array
            Arr : SUPC_PWMR_ECPWR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SUPC_PWMR_ECPWR_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SRAM Power Control
   type PWMR_SRAM0ON_Field is
     (--  SRAMx is not powered.
      OFF,
      --  SRAMx is powered.
      ON)
     with Size => 1;
   for PWMR_SRAM0ON_Field use
     (OFF => 0,
      ON => 1);

   --  SRAM Power Control
   type PWMR_SRAM1ON_Field is
     (--  SRAMx is not powered.
      OFF,
      --  SRAMx is powered.
      ON)
     with Size => 1;
   for PWMR_SRAM1ON_Field use
     (OFF => 0,
      ON => 1);

   --  SRAM Power Control
   type PWMR_SRAM2ON_Field is
     (--  SRAMx is not powered.
      OFF,
      --  SRAMx is powered.
      ON)
     with Size => 1;
   for PWMR_SRAM2ON_Field use
     (OFF => 0,
      ON => 1);

   --  SRAM Power Control
   type PWMR_SRAM3ON_Field is
     (--  SRAMx is not powered.
      OFF,
      --  SRAMx is powered.
      ON)
     with Size => 1;
   for PWMR_SRAM3ON_Field use
     (OFF => 0,
      ON => 1);

   --  SRAM Power Control
   type PWMR_SRAM4ON_Field is
     (--  SRAMx is not powered.
      OFF,
      --  SRAMx is powered.
      ON)
     with Size => 1;
   for PWMR_SRAM4ON_Field use
     (OFF => 0,
      ON => 1);

   --  SRAM Power Control
   type PWMR_SRAM5ON_Field is
     (--  SRAMx is not powered.
      OFF,
      --  SRAMx is powered.
      ON)
     with Size => 1;
   for PWMR_SRAM5ON_Field use
     (OFF => 0,
      ON => 1);

   --  SRAM Power Control
   type PWMR_SRAM6ON_Field is
     (--  SRAMx is not powered.
      OFF,
      --  SRAMx is powered.
      ON)
     with Size => 1;
   for PWMR_SRAM6ON_Field use
     (OFF => 0,
      ON => 1);

   --  Dual-port RAM Power Control
   type PWMR_DPRAMON_Field is
     (--  USB dual-port RAM is not powered.
      OFF,
      --  USB dual-port RAM is powered.
      ON)
     with Size => 1;
   for PWMR_DPRAMON_Field use
     (OFF => 0,
      ON => 1);

   --  Password Key
   type PWMR_KEY_Field is
     (--  Reset value for the field
      PWMR_KEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation.Always
--  reads as 0.
      PASSWD)
     with Size => 8;
   for PWMR_KEY_Field use
     (PWMR_KEY_Field_Reset => 0,
      PASSWD => 90);

   --  Supply Controller Power Mode Register
   type SUPC_PWMR_Register is record
      --  Low Power Value Selection
      LPOWERS        : PWMR_LPOWERS_Field := Interfaces.SAM.SYSC.FACTORY;
      --  Low Power Value
      LPOWER         : SUPC_PWMR_LPOWER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_6   : Interfaces.SAM.UInt2 := 16#0#;
      --  Start-up Time when Resuming from Wait Mode
      STUPTIME       : PWMR_STUPTIME_Field := Interfaces.SAM.SYSC.FAST;
      --  Enhanced Custom Power Value Selection
      ECPWRS         : PWMR_ECPWRS_Field := Interfaces.SAM.SYSC.FACTORY;
      --  Enhanced Custom Power Value
      ECPWR          : SUPC_PWMR_ECPWR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  SRAM Power Control
      SRAM0ON        : PWMR_SRAM0ON_Field := Interfaces.SAM.SYSC.OFF;
      --  SRAM Power Control
      SRAM1ON        : PWMR_SRAM1ON_Field := Interfaces.SAM.SYSC.OFF;
      --  SRAM Power Control
      SRAM2ON        : PWMR_SRAM2ON_Field := Interfaces.SAM.SYSC.OFF;
      --  SRAM Power Control
      SRAM3ON        : PWMR_SRAM3ON_Field := Interfaces.SAM.SYSC.OFF;
      --  SRAM Power Control
      SRAM4ON        : PWMR_SRAM4ON_Field := Interfaces.SAM.SYSC.OFF;
      --  SRAM Power Control
      SRAM5ON        : PWMR_SRAM5ON_Field := Interfaces.SAM.SYSC.OFF;
      --  SRAM Power Control
      SRAM6ON        : PWMR_SRAM6ON_Field := Interfaces.SAM.SYSC.OFF;
      --  Dual-port RAM Power Control
      DPRAMON        : PWMR_DPRAMON_Field := Interfaces.SAM.SYSC.OFF;
      --  Password Key
      KEY            : PWMR_KEY_Field := PWMR_KEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUPC_PWMR_Register use record
      LPOWERS        at 0 range 0 .. 0;
      LPOWER         at 0 range 1 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      STUPTIME       at 0 range 7 .. 7;
      ECPWRS         at 0 range 8 .. 8;
      ECPWR          at 0 range 9 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      SRAM0ON        at 0 range 16 .. 16;
      SRAM1ON        at 0 range 17 .. 17;
      SRAM2ON        at 0 range 18 .. 18;
      SRAM3ON        at 0 range 19 .. 19;
      SRAM4ON        at 0 range 20 .. 20;
      SRAM5ON        at 0 range 21 .. 21;
      SRAM6ON        at 0 range 22 .. 22;
      DPRAMON        at 0 range 23 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   subtype WDT_CR_WDRSTT_Field is Interfaces.SAM.Bit;

   --  Control Register
   type WDT_CR_Register is record
      --  Write-only. Watchdog Restart
      WDRSTT        : WDT_CR_WDRSTT_Field := 16#0#;
      --  unspecified
      Reserved_1_23 : Interfaces.SAM.UInt23 := 16#0#;
      --  Write-only. Password.
      KEY           : CR_KEY_Field := CR_KEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_CR_Register use record
      WDRSTT        at 0 range 0 .. 0;
      Reserved_1_23 at 0 range 1 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   subtype WDT_MR_WDV_Field is Interfaces.SAM.UInt12;
   subtype WDT_MR_WDFIEN_Field is Interfaces.SAM.Bit;
   subtype WDT_MR_WDRSTEN_Field is Interfaces.SAM.Bit;
   subtype WDT_MR_WDRPROC_Field is Interfaces.SAM.Bit;
   subtype WDT_MR_WDDIS_Field is Interfaces.SAM.Bit;
   subtype WDT_MR_WDD_Field is Interfaces.SAM.UInt12;
   subtype WDT_MR_WDDBGHLT_Field is Interfaces.SAM.Bit;
   subtype WDT_MR_WDIDLEHLT_Field is Interfaces.SAM.Bit;

   --  Mode Register
   type WDT_MR_Register is record
      --  Watchdog Counter Value
      WDV            : WDT_MR_WDV_Field := 16#FFF#;
      --  Watchdog Fault Interrupt Enable
      WDFIEN         : WDT_MR_WDFIEN_Field := 16#0#;
      --  Watchdog Reset Enable
      WDRSTEN        : WDT_MR_WDRSTEN_Field := 16#1#;
      --  Watchdog Reset Processor
      WDRPROC        : WDT_MR_WDRPROC_Field := 16#0#;
      --  Watchdog Disable
      WDDIS          : WDT_MR_WDDIS_Field := 16#0#;
      --  Watchdog Delta Value
      WDD            : WDT_MR_WDD_Field := 16#FFF#;
      --  Watchdog Debug Halt
      WDDBGHLT       : WDT_MR_WDDBGHLT_Field := 16#1#;
      --  Watchdog Idle Halt
      WDIDLEHLT      : WDT_MR_WDIDLEHLT_Field := 16#1#;
      --  unspecified
      Reserved_30_31 : Interfaces.SAM.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_MR_Register use record
      WDV            at 0 range 0 .. 11;
      WDFIEN         at 0 range 12 .. 12;
      WDRSTEN        at 0 range 13 .. 13;
      WDRPROC        at 0 range 14 .. 14;
      WDDIS          at 0 range 15 .. 15;
      WDD            at 0 range 16 .. 27;
      WDDBGHLT       at 0 range 28 .. 28;
      WDIDLEHLT      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype WDT_SR_WDUNF_Field is Interfaces.SAM.Bit;
   subtype WDT_SR_WDERR_Field is Interfaces.SAM.Bit;

   --  Status Register
   type WDT_SR_Register is record
      --  Read-only. Watchdog Underflow
      WDUNF         : WDT_SR_WDUNF_Field;
      --  Read-only. Watchdog Error
      WDERR         : WDT_SR_WDERR_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDT_SR_Register use record
      WDUNF         at 0 range 0 .. 0;
      WDERR         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Backup Registers
   type GPBR_Peripheral is record
      --  General Purpose Backup Register
      GPBR : aliased GPBR_GPBR_Registers;
   end record
     with Volatile;

   for GPBR_Peripheral use record
      GPBR at 0 range 0 .. 255;
   end record;

   --  General Purpose Backup Registers
   GPBR_Periph : aliased GPBR_Peripheral
     with Import, Address => GPBR_Base;

   --  Reset Controller
   type RSTC_Peripheral is record
      --  Control Register
      CR : aliased RSTC_CR_Register;
      --  Status Register
      SR : aliased RSTC_SR_Register;
      --  Mode Register
      MR : aliased RSTC_MR_Register;
   end record
     with Volatile;

   for RSTC_Peripheral use record
      CR at 16#0# range 0 .. 31;
      SR at 16#4# range 0 .. 31;
      MR at 16#8# range 0 .. 31;
   end record;

   --  Reset Controller
   RSTC_Periph : aliased RSTC_Peripheral
     with Import, Address => RSTC_Base;

   --  Real-time Clock
   type RTC_Peripheral is record
      --  Control Register
      CR     : aliased RTC_CR_Register;
      --  Mode Register
      MR     : aliased RTC_MR_Register;
      --  Time Register
      TIMR   : aliased RTC_TIMR_Register;
      --  Calendar Register
      CALR   : aliased RTC_CALR_Register;
      --  Time Alarm Register
      TIMALR : aliased RTC_TIMALR_Register;
      --  Calendar Alarm Register
      CALALR : aliased RTC_CALALR_Register;
      --  Status Register
      SR     : aliased RTC_SR_Register;
      --  Status Clear Command Register
      SCCR   : aliased RTC_SCCR_Register;
      --  Interrupt Enable Register
      IER    : aliased RTC_IER_Register;
      --  Interrupt Disable Register
      IDR    : aliased RTC_IDR_Register;
      --  Interrupt Mask Register
      IMR    : aliased RTC_IMR_Register;
      --  Valid Entry Register
      VER    : aliased RTC_VER_Register;
      --  Milliseconds Register
      MSR    : aliased RTC_MSR_Register;
      --  Write Protection Mode Register
      WPMR   : aliased RTC_WPMR_Register;
   end record
     with Volatile;

   for RTC_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      MR     at 16#4# range 0 .. 31;
      TIMR   at 16#8# range 0 .. 31;
      CALR   at 16#C# range 0 .. 31;
      TIMALR at 16#10# range 0 .. 31;
      CALALR at 16#14# range 0 .. 31;
      SR     at 16#18# range 0 .. 31;
      SCCR   at 16#1C# range 0 .. 31;
      IER    at 16#20# range 0 .. 31;
      IDR    at 16#24# range 0 .. 31;
      IMR    at 16#28# range 0 .. 31;
      VER    at 16#2C# range 0 .. 31;
      MSR    at 16#D0# range 0 .. 31;
      WPMR   at 16#E4# range 0 .. 31;
   end record;

   --  Real-time Clock
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

   --  Real-time Timer
   type RTT_Peripheral is record
      --  Mode Register
      MR   : aliased RTT_MR_Register;
      --  Alarm Register
      AR   : aliased Interfaces.SAM.UInt32;
      --  Value Register
      VR   : aliased Interfaces.SAM.UInt32;
      --  Status Register
      SR   : aliased RTT_SR_Register;
      --  Modulo Selection Register
      MODR : aliased RTT_MODR_Register;
   end record
     with Volatile;

   for RTT_Peripheral use record
      MR   at 16#0# range 0 .. 31;
      AR   at 16#4# range 0 .. 31;
      VR   at 16#8# range 0 .. 31;
      SR   at 16#C# range 0 .. 31;
      MODR at 16#10# range 0 .. 31;
   end record;

   --  Real-time Timer
   RTT_Periph : aliased RTT_Peripheral
     with Import, Address => RTT_Base;

   --  Supply Controller
   type SUPC_Peripheral is record
      --  Supply Controller Control Register
      CR   : aliased SUPC_CR_Register;
      --  Supply Controller Supply Monitor Mode Register
      SMMR : aliased SUPC_SMMR_Register;
      --  Supply Controller Mode Register
      MR   : aliased SUPC_MR_Register;
      --  Supply Controller Wake-up Mode Register
      WUMR : aliased SUPC_WUMR_Register;
      --  Supply Controller Wake-up Inputs Register
      WUIR : aliased SUPC_WUIR_Register;
      --  Supply Controller Status Register
      SR   : aliased SUPC_SR_Register;
      --  Supply Controller Power Mode Register
      PWMR : aliased SUPC_PWMR_Register;
   end record
     with Volatile;

   for SUPC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      SMMR at 16#4# range 0 .. 31;
      MR   at 16#8# range 0 .. 31;
      WUMR at 16#C# range 0 .. 31;
      WUIR at 16#10# range 0 .. 31;
      SR   at 16#14# range 0 .. 31;
      PWMR at 16#1C# range 0 .. 31;
   end record;

   --  Supply Controller
   SUPC_Periph : aliased SUPC_Peripheral
     with Import, Address => SUPC_Base;

   --  Watchdog Timer
   type WDT_Peripheral is record
      --  Control Register
      CR : aliased WDT_CR_Register;
      --  Mode Register
      MR : aliased WDT_MR_Register;
      --  Status Register
      SR : aliased WDT_SR_Register;
   end record
     with Volatile;

   for WDT_Peripheral use record
      CR at 16#0# range 0 .. 31;
      MR at 16#4# range 0 .. 31;
      SR at 16#8# range 0 .. 31;
   end record;

   --  Watchdog Timer
   WDT_Periph : aliased WDT_Peripheral
     with Import, Address => WDT_Base;

end Interfaces.SAM.SYSC;
