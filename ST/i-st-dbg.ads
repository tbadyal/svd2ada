--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32F40x.svd


with System;

package Interfaces.ST.DBG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype DBGMCU_IDCODE_DEV_ID_Field is Interfaces.ST.UInt12;
   subtype DBGMCU_IDCODE_REV_ID_Field is Interfaces.ST.UInt16;

   --  IDCODE
   type DBGMCU_IDCODE_Register is record
      --  Read-only. DEV_ID
      DEV_ID         : DBGMCU_IDCODE_DEV_ID_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.ST.UInt4;
      --  Read-only. REV_ID
      REV_ID         : DBGMCU_IDCODE_REV_ID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_IDCODE_Register use record
      DEV_ID         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      REV_ID         at 0 range 16 .. 31;
   end record;

   subtype DBGMCU_CR_DBG_SLEEP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_CR_DBG_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_CR_DBG_STANDBY_Field is Interfaces.ST.Bit;
   subtype DBGMCU_CR_TRACE_IOEN_Field is Interfaces.ST.Bit;
   subtype DBGMCU_CR_TRACE_MODE_Field is Interfaces.ST.UInt2;
   subtype DBGMCU_CR_DBG_I2C2_SMBUS_TIMEOUT_Field is Interfaces.ST.Bit;
   subtype DBGMCU_CR_DBG_TIM8_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_CR_DBG_TIM5_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_CR_DBG_TIM6_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_CR_DBG_TIM7_STOP_Field is Interfaces.ST.Bit;

   --  Control Register
   type DBGMCU_CR_Register is record
      --  DBG_SLEEP
      DBG_SLEEP              : DBGMCU_CR_DBG_SLEEP_Field := 16#0#;
      --  DBG_STOP
      DBG_STOP               : DBGMCU_CR_DBG_STOP_Field := 16#0#;
      --  DBG_STANDBY
      DBG_STANDBY            : DBGMCU_CR_DBG_STANDBY_Field := 16#0#;
      --  unspecified
      Reserved_3_4           : Interfaces.ST.UInt2 := 16#0#;
      --  TRACE_IOEN
      TRACE_IOEN             : DBGMCU_CR_TRACE_IOEN_Field := 16#0#;
      --  TRACE_MODE
      TRACE_MODE             : DBGMCU_CR_TRACE_MODE_Field := 16#0#;
      --  unspecified
      Reserved_8_15          : Interfaces.ST.Byte := 16#0#;
      --  DBG_I2C2_SMBUS_TIMEOUT
      DBG_I2C2_SMBUS_TIMEOUT : DBGMCU_CR_DBG_I2C2_SMBUS_TIMEOUT_Field :=
                                16#0#;
      --  DBG_TIM8_STOP
      DBG_TIM8_STOP          : DBGMCU_CR_DBG_TIM8_STOP_Field := 16#0#;
      --  DBG_TIM5_STOP
      DBG_TIM5_STOP          : DBGMCU_CR_DBG_TIM5_STOP_Field := 16#0#;
      --  DBG_TIM6_STOP
      DBG_TIM6_STOP          : DBGMCU_CR_DBG_TIM6_STOP_Field := 16#0#;
      --  DBG_TIM7_STOP
      DBG_TIM7_STOP          : DBGMCU_CR_DBG_TIM7_STOP_Field := 16#0#;
      --  unspecified
      Reserved_21_31         : Interfaces.ST.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_CR_Register use record
      DBG_SLEEP              at 0 range 0 .. 0;
      DBG_STOP               at 0 range 1 .. 1;
      DBG_STANDBY            at 0 range 2 .. 2;
      Reserved_3_4           at 0 range 3 .. 4;
      TRACE_IOEN             at 0 range 5 .. 5;
      TRACE_MODE             at 0 range 6 .. 7;
      Reserved_8_15          at 0 range 8 .. 15;
      DBG_I2C2_SMBUS_TIMEOUT at 0 range 16 .. 16;
      DBG_TIM8_STOP          at 0 range 17 .. 17;
      DBG_TIM5_STOP          at 0 range 18 .. 18;
      DBG_TIM6_STOP          at 0 range 19 .. 19;
      DBG_TIM7_STOP          at 0 range 20 .. 20;
      Reserved_21_31         at 0 range 21 .. 31;
   end record;

   subtype DBGMCU_APB1_FZ_DBG_TIM2_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_TIM3_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_TIM4_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_TIM5_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_TIM6_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_TIM7_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_TIM12_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_TIM13_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_TIM14_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_WWDG_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_IWDEG_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_J2C1_SMBUS_TIMEOUT_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_J2C2_SMBUS_TIMEOUT_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_J2C3SMBUS_TIMEOUT_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_CAN1_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB1_FZ_DBG_CAN2_STOP_Field is Interfaces.ST.Bit;

   --  Debug MCU APB1 Freeze registe
   type DBGMCU_APB1_FZ_Register is record
      --  DBG_TIM2_STOP
      DBG_TIM2_STOP          : DBGMCU_APB1_FZ_DBG_TIM2_STOP_Field := 16#0#;
      --  DBG_TIM3 _STOP
      DBG_TIM3_STOP          : DBGMCU_APB1_FZ_DBG_TIM3_STOP_Field := 16#0#;
      --  DBG_TIM4_STOP
      DBG_TIM4_STOP          : DBGMCU_APB1_FZ_DBG_TIM4_STOP_Field := 16#0#;
      --  DBG_TIM5_STOP
      DBG_TIM5_STOP          : DBGMCU_APB1_FZ_DBG_TIM5_STOP_Field := 16#0#;
      --  DBG_TIM6_STOP
      DBG_TIM6_STOP          : DBGMCU_APB1_FZ_DBG_TIM6_STOP_Field := 16#0#;
      --  DBG_TIM7_STOP
      DBG_TIM7_STOP          : DBGMCU_APB1_FZ_DBG_TIM7_STOP_Field := 16#0#;
      --  DBG_TIM12_STOP
      DBG_TIM12_STOP         : DBGMCU_APB1_FZ_DBG_TIM12_STOP_Field := 16#0#;
      --  DBG_TIM13_STOP
      DBG_TIM13_STOP         : DBGMCU_APB1_FZ_DBG_TIM13_STOP_Field := 16#0#;
      --  DBG_TIM14_STOP
      DBG_TIM14_STOP         : DBGMCU_APB1_FZ_DBG_TIM14_STOP_Field := 16#0#;
      --  unspecified
      Reserved_9_10          : Interfaces.ST.UInt2 := 16#0#;
      --  DBG_WWDG_STOP
      DBG_WWDG_STOP          : DBGMCU_APB1_FZ_DBG_WWDG_STOP_Field := 16#0#;
      --  DBG_IWDEG_STOP
      DBG_IWDEG_STOP         : DBGMCU_APB1_FZ_DBG_IWDEG_STOP_Field := 16#0#;
      --  unspecified
      Reserved_13_20         : Interfaces.ST.Byte := 16#0#;
      --  DBG_J2C1_SMBUS_TIMEOUT
      DBG_J2C1_SMBUS_TIMEOUT : DBGMCU_APB1_FZ_DBG_J2C1_SMBUS_TIMEOUT_Field :=
                                16#0#;
      --  DBG_J2C2_SMBUS_TIMEOUT
      DBG_J2C2_SMBUS_TIMEOUT : DBGMCU_APB1_FZ_DBG_J2C2_SMBUS_TIMEOUT_Field :=
                                16#0#;
      --  DBG_J2C3SMBUS_TIMEOUT
      DBG_J2C3SMBUS_TIMEOUT  : DBGMCU_APB1_FZ_DBG_J2C3SMBUS_TIMEOUT_Field :=
                                16#0#;
      --  unspecified
      Reserved_24_24         : Interfaces.ST.Bit := 16#0#;
      --  DBG_CAN1_STOP
      DBG_CAN1_STOP          : DBGMCU_APB1_FZ_DBG_CAN1_STOP_Field := 16#0#;
      --  DBG_CAN2_STOP
      DBG_CAN2_STOP          : DBGMCU_APB1_FZ_DBG_CAN2_STOP_Field := 16#0#;
      --  unspecified
      Reserved_27_31         : Interfaces.ST.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APB1_FZ_Register use record
      DBG_TIM2_STOP          at 0 range 0 .. 0;
      DBG_TIM3_STOP          at 0 range 1 .. 1;
      DBG_TIM4_STOP          at 0 range 2 .. 2;
      DBG_TIM5_STOP          at 0 range 3 .. 3;
      DBG_TIM6_STOP          at 0 range 4 .. 4;
      DBG_TIM7_STOP          at 0 range 5 .. 5;
      DBG_TIM12_STOP         at 0 range 6 .. 6;
      DBG_TIM13_STOP         at 0 range 7 .. 7;
      DBG_TIM14_STOP         at 0 range 8 .. 8;
      Reserved_9_10          at 0 range 9 .. 10;
      DBG_WWDG_STOP          at 0 range 11 .. 11;
      DBG_IWDEG_STOP         at 0 range 12 .. 12;
      Reserved_13_20         at 0 range 13 .. 20;
      DBG_J2C1_SMBUS_TIMEOUT at 0 range 21 .. 21;
      DBG_J2C2_SMBUS_TIMEOUT at 0 range 22 .. 22;
      DBG_J2C3SMBUS_TIMEOUT  at 0 range 23 .. 23;
      Reserved_24_24         at 0 range 24 .. 24;
      DBG_CAN1_STOP          at 0 range 25 .. 25;
      DBG_CAN2_STOP          at 0 range 26 .. 26;
      Reserved_27_31         at 0 range 27 .. 31;
   end record;

   subtype DBGMCU_APB2_FZ_DBG_TIM1_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB2_FZ_DBG_TIM8_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB2_FZ_DBG_TIM9_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB2_FZ_DBG_TIM10_STOP_Field is Interfaces.ST.Bit;
   subtype DBGMCU_APB2_FZ_DBG_TIM11_STOP_Field is Interfaces.ST.Bit;

   --  Debug MCU APB2 Freeze registe
   type DBGMCU_APB2_FZ_Register is record
      --  TIM1 counter stopped when core is halted
      DBG_TIM1_STOP  : DBGMCU_APB2_FZ_DBG_TIM1_STOP_Field := 16#0#;
      --  TIM8 counter stopped when core is halted
      DBG_TIM8_STOP  : DBGMCU_APB2_FZ_DBG_TIM8_STOP_Field := 16#0#;
      --  unspecified
      Reserved_2_15  : Interfaces.ST.UInt14 := 16#0#;
      --  TIM9 counter stopped when core is halted
      DBG_TIM9_STOP  : DBGMCU_APB2_FZ_DBG_TIM9_STOP_Field := 16#0#;
      --  TIM10 counter stopped when core is halted
      DBG_TIM10_STOP : DBGMCU_APB2_FZ_DBG_TIM10_STOP_Field := 16#0#;
      --  TIM11 counter stopped when core is halted
      DBG_TIM11_STOP : DBGMCU_APB2_FZ_DBG_TIM11_STOP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.ST.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGMCU_APB2_FZ_Register use record
      DBG_TIM1_STOP  at 0 range 0 .. 0;
      DBG_TIM8_STOP  at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      DBG_TIM9_STOP  at 0 range 16 .. 16;
      DBG_TIM10_STOP at 0 range 17 .. 17;
      DBG_TIM11_STOP at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Debug support
   type DBG_Peripheral is record
      --  IDCODE
      DBGMCU_IDCODE  : aliased DBGMCU_IDCODE_Register;
      --  Control Register
      DBGMCU_CR      : aliased DBGMCU_CR_Register;
      --  Debug MCU APB1 Freeze registe
      DBGMCU_APB1_FZ : aliased DBGMCU_APB1_FZ_Register;
      --  Debug MCU APB2 Freeze registe
      DBGMCU_APB2_FZ : aliased DBGMCU_APB2_FZ_Register;
   end record
     with Volatile;

   for DBG_Peripheral use record
      DBGMCU_IDCODE  at 16#0# range 0 .. 31;
      DBGMCU_CR      at 16#4# range 0 .. 31;
      DBGMCU_APB1_FZ at 16#8# range 0 .. 31;
      DBGMCU_APB2_FZ at 16#C# range 0 .. 31;
   end record;

   --  Debug support
   DBG_Periph : aliased DBG_Peripheral
     with Import, Address => DBG_Base;

end Interfaces.ST.DBG;
