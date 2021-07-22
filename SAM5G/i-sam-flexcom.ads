--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

package Interfaces.SAM.FLEXCOM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  FLEXCOM Operating Mode
   type MR_OPMODE_Field is
     (--  No communication
      NO_COM,
      --  All related USART related protocols are selected (RS232, RS485, ISO7816,
--  LIN,)All SPI/TWI related registers are not accessible and have no impact on
--  IOs.
      USART,
      --  SPI operating mode is selected.All USART/TWI related registers are not
--  accessible and have no impact on IOs.
      SPI,
      --  All related TWI protocols are selected (TWI, SMBUS). All USART/SPI related
--  registers are not accessible and have no impact on IOs.
      TWI)
     with Size => 2;
   for MR_OPMODE_Field use
     (NO_COM => 0,
      USART => 1,
      SPI => 2,
      TWI => 3);

   --  FLEXCOM Mode register
   type FLEXCOM0_MR_Register is record
      --  FLEXCOM Operating Mode
      OPMODE        : MR_OPMODE_Field := Interfaces.SAM.FLEXCOM.NO_COM;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM0_MR_Register use record
      OPMODE        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FLEXCOM0_RHR_RXDATA_Field is Interfaces.SAM.UInt16;

   --  FLEXCOM Receive Holding Register
   type FLEXCOM0_RHR_Register is record
      --  Read-only. Receive Data
      RXDATA         : FLEXCOM0_RHR_RXDATA_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM0_RHR_Register use record
      RXDATA         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FLEXCOM0_THR_TXDATA_Field is Interfaces.SAM.UInt16;

   --  FLEXCOM Transmit Holding Register
   type FLEXCOM0_THR_Register is record
      --  Transmit Data
      TXDATA         : FLEXCOM0_THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLEXCOM0_THR_Register use record
      TXDATA         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flexible Serial Communication 0
   type FLEXCOM_Peripheral is record
      --  FLEXCOM Mode register
      MR  : aliased FLEXCOM0_MR_Register;
      --  FLEXCOM Receive Holding Register
      RHR : aliased FLEXCOM0_RHR_Register;
      --  FLEXCOM Transmit Holding Register
      THR : aliased FLEXCOM0_THR_Register;
   end record
     with Volatile;

   for FLEXCOM_Peripheral use record
      MR  at 16#0# range 0 .. 31;
      RHR at 16#10# range 0 .. 31;
      THR at 16#20# range 0 .. 31;
   end record;

   --  Flexible Serial Communication 0
   FLEXCOM0_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM0_Base;

   --  Flexible Serial Communication 1
   FLEXCOM1_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM1_Base;

   --  Flexible Serial Communication 2
   FLEXCOM2_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM2_Base;

   --  Flexible Serial Communication 3
   FLEXCOM3_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM3_Base;

   --  Flexible Serial Communication 4
   FLEXCOM4_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM4_Base;

   --  Flexible Serial Communication 5
   FLEXCOM5_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM5_Base;

   --  Flexible Serial Communication 6
   FLEXCOM6_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM6_Base;

   --  Flexible Serial Communication 7
   FLEXCOM7_Periph : aliased FLEXCOM_Peripheral
     with Import, Address => FLEXCOM7_Base;

end Interfaces.SAM.FLEXCOM;
