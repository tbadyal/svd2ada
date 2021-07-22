--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

package Interfaces.SAM.TWI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype TWI0_CR_START_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_STOP_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_MSEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_MSDIS_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_SVEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_SVDIS_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_QUICK_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_SWRST_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_HSEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_HSDIS_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_SMBEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_SMBDIS_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_PECEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_PECDIS_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_PECRQ_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_CLEAR_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_ACMEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_ACMDIS_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_THRCLR_Field is Interfaces.SAM.Bit;
   subtype TWI0_CR_LOCKCLR_Field is Interfaces.SAM.Bit;

   --  TWI Control Register
   type TWI0_CR_Register is record
      --  Write-only. Send a START Condition
      START          : TWI0_CR_START_Field := 16#0#;
      --  Write-only. Send a STOP Condition
      STOP           : TWI0_CR_STOP_Field := 16#0#;
      --  Write-only. TWI Master Mode Enabled
      MSEN           : TWI0_CR_MSEN_Field := 16#0#;
      --  Write-only. TWI Master Mode Disabled
      MSDIS          : TWI0_CR_MSDIS_Field := 16#0#;
      --  Write-only. TWI Slave Mode Enabled
      SVEN           : TWI0_CR_SVEN_Field := 16#0#;
      --  Write-only. TWI Slave Mode Disabled
      SVDIS          : TWI0_CR_SVDIS_Field := 16#0#;
      --  Write-only. SMBUS Quick Command
      QUICK          : TWI0_CR_QUICK_Field := 16#0#;
      --  Write-only. Software Reset
      SWRST          : TWI0_CR_SWRST_Field := 16#0#;
      --  Write-only. TWI High-Speed Mode Enabled
      HSEN           : TWI0_CR_HSEN_Field := 16#0#;
      --  Write-only. TWI High-Speed Mode Disabled
      HSDIS          : TWI0_CR_HSDIS_Field := 16#0#;
      --  Write-only. SMBus Mode Enabled
      SMBEN          : TWI0_CR_SMBEN_Field := 16#0#;
      --  Write-only. SMBus Mode Disabled
      SMBDIS         : TWI0_CR_SMBDIS_Field := 16#0#;
      --  Write-only. Packet Error Checking Enable
      PECEN          : TWI0_CR_PECEN_Field := 16#0#;
      --  Write-only. Packet Error Checking Disable
      PECDIS         : TWI0_CR_PECDIS_Field := 16#0#;
      --  Write-only. PEC Request
      PECRQ          : TWI0_CR_PECRQ_Field := 16#0#;
      --  Write-only. Bus CLEAR Command
      CLEAR          : TWI0_CR_CLEAR_Field := 16#0#;
      --  Write-only. Alternative Command Mode Enable
      ACMEN          : TWI0_CR_ACMEN_Field := 16#0#;
      --  Write-only. Alternative Command Mode Disable
      ACMDIS         : TWI0_CR_ACMDIS_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmit Holding Register Clear
      THRCLR         : TWI0_CR_THRCLR_Field := 16#0#;
      --  unspecified
      Reserved_25_25 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Lock Clear
      LOCKCLR        : TWI0_CR_LOCKCLR_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.SAM.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_CR_Register use record
      START          at 0 range 0 .. 0;
      STOP           at 0 range 1 .. 1;
      MSEN           at 0 range 2 .. 2;
      MSDIS          at 0 range 3 .. 3;
      SVEN           at 0 range 4 .. 4;
      SVDIS          at 0 range 5 .. 5;
      QUICK          at 0 range 6 .. 6;
      SWRST          at 0 range 7 .. 7;
      HSEN           at 0 range 8 .. 8;
      HSDIS          at 0 range 9 .. 9;
      SMBEN          at 0 range 10 .. 10;
      SMBDIS         at 0 range 11 .. 11;
      PECEN          at 0 range 12 .. 12;
      PECDIS         at 0 range 13 .. 13;
      PECRQ          at 0 range 14 .. 14;
      CLEAR          at 0 range 15 .. 15;
      ACMEN          at 0 range 16 .. 16;
      ACMDIS         at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      THRCLR         at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      LOCKCLR        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Internal Device Address Size
   type MMR_IADRSZ_Field is
     (--  No internal device address
      NONE,
      --  One-byte internal device address
      Val_1_BYTE,
      --  Two-byte internal device address
      Val_2_BYTE,
      --  Three-byte internal device address
      Val_3_BYTE)
     with Size => 2;
   for MMR_IADRSZ_Field use
     (NONE => 0,
      Val_1_BYTE => 1,
      Val_2_BYTE => 2,
      Val_3_BYTE => 3);

   subtype TWI0_MMR_MREAD_Field is Interfaces.SAM.Bit;
   subtype TWI0_MMR_DADR_Field is Interfaces.SAM.UInt7;

   --  TWI Master Mode Register
   type TWI0_MMR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte := 16#0#;
      --  Internal Device Address Size
      IADRSZ         : MMR_IADRSZ_Field := Interfaces.SAM.TWI.NONE;
      --  unspecified
      Reserved_10_11 : Interfaces.SAM.UInt2 := 16#0#;
      --  Master Read Direction
      MREAD          : TWI0_MMR_MREAD_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Device Address
      DADR           : TWI0_MMR_DADR_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_MMR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      IADRSZ         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      MREAD          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DADR           at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype TWI0_SMR_NACKEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_SMR_SMDA_Field is Interfaces.SAM.Bit;
   subtype TWI0_SMR_SMHH_Field is Interfaces.SAM.Bit;
   subtype TWI0_SMR_SCLWSDIS_Field is Interfaces.SAM.Bit;
   subtype TWI0_SMR_MASK_Field is Interfaces.SAM.UInt7;
   subtype TWI0_SMR_SADR_Field is Interfaces.SAM.UInt7;
   subtype TWI0_SMR_SADR1EN_Field is Interfaces.SAM.Bit;
   subtype TWI0_SMR_SADR2EN_Field is Interfaces.SAM.Bit;
   subtype TWI0_SMR_SADR3EN_Field is Interfaces.SAM.Bit;
   subtype TWI0_SMR_DATAMEN_Field is Interfaces.SAM.Bit;

   --  TWI Slave Mode Register
   type TWI0_SMR_Register is record
      --  Slave Receiver Data Phase NACK Enable
      NACKEN         : TWI0_SMR_NACKEN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.SAM.Bit := 16#0#;
      --  SMBus Default Address
      SMDA           : TWI0_SMR_SMDA_Field := 16#0#;
      --  SMBus Host Header
      SMHH           : TWI0_SMR_SMHH_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : Interfaces.SAM.UInt2 := 16#0#;
      --  Clock Wait State Disable
      SCLWSDIS       : TWI0_SMR_SCLWSDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Slave Address Mask
      MASK           : TWI0_SMR_MASK_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit := 16#0#;
      --  Slave Address
      SADR           : TWI0_SMR_SADR_Field := 16#0#;
      --  unspecified
      Reserved_23_27 : Interfaces.SAM.UInt5 := 16#0#;
      --  Slave Address 1 Enable
      SADR1EN        : TWI0_SMR_SADR1EN_Field := 16#0#;
      --  Slave Address 2 Enable
      SADR2EN        : TWI0_SMR_SADR2EN_Field := 16#0#;
      --  Slave Address 3 Enable
      SADR3EN        : TWI0_SMR_SADR3EN_Field := 16#0#;
      --  Data Matching Enable
      DATAMEN        : TWI0_SMR_DATAMEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_SMR_Register use record
      NACKEN         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      SMDA           at 0 range 2 .. 2;
      SMHH           at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      SCLWSDIS       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MASK           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SADR           at 0 range 16 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      SADR1EN        at 0 range 28 .. 28;
      SADR2EN        at 0 range 29 .. 29;
      SADR3EN        at 0 range 30 .. 30;
      DATAMEN        at 0 range 31 .. 31;
   end record;

   subtype TWI0_IADR_IADR_Field is Interfaces.SAM.UInt24;

   --  TWI Internal Address Register
   type TWI0_IADR_Register is record
      --  Internal Address
      IADR           : TWI0_IADR_IADR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_IADR_Register use record
      IADR           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TWI0_CWGR_CLDIV_Field is Interfaces.SAM.Byte;
   subtype TWI0_CWGR_CHDIV_Field is Interfaces.SAM.Byte;
   subtype TWI0_CWGR_CKDIV_Field is Interfaces.SAM.UInt3;
   subtype TWI0_CWGR_BRSRCCLK_Field is Interfaces.SAM.Bit;
   subtype TWI0_CWGR_HOLD_Field is Interfaces.SAM.UInt5;

   --  TWI Clock Waveform Generator Register
   type TWI0_CWGR_Register is record
      --  Clock Low Divider
      CLDIV          : TWI0_CWGR_CLDIV_Field := 16#0#;
      --  Clock High Divider
      CHDIV          : TWI0_CWGR_CHDIV_Field := 16#0#;
      --  Clock Divider
      CKDIV          : TWI0_CWGR_CKDIV_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.SAM.Bit := 16#0#;
      --  Bit Rate Source Clock
      BRSRCCLK       : TWI0_CWGR_BRSRCCLK_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.SAM.UInt3 := 16#0#;
      --  TWD Hold Time Versus TWCK Falling
      HOLD           : TWI0_CWGR_HOLD_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_CWGR_Register use record
      CLDIV          at 0 range 0 .. 7;
      CHDIV          at 0 range 8 .. 15;
      CKDIV          at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      BRSRCCLK       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      HOLD           at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TWI0_SR_TXCOMP_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_SVREAD_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_SVACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_GACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_OVRE_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_UNRE_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_NACK_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_ARBLST_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_SCLWS_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_EOSACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_MCACK_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_TOUT_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_PECERR_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_SMBDAM_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_SMBHHM_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_LOCK_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_SCL_Field is Interfaces.SAM.Bit;
   subtype TWI0_SR_SDA_Field is Interfaces.SAM.Bit;

   --  TWI Status Register
   type TWI0_SR_Register is record
      --  Read-only. Transmission Completed (automatically set / reset)
      TXCOMP         : TWI0_SR_TXCOMP_Field;
      --  Read-only. Receive Holding Register Ready (automatically set / reset)
      RXRDY          : TWI0_SR_RXRDY_Field;
      --  Read-only. Transmit Holding Register Ready (automatically set /
      --  reset)
      TXRDY          : TWI0_SR_TXRDY_Field;
      --  Read-only. Slave Read (automatically set / reset)
      SVREAD         : TWI0_SR_SVREAD_Field;
      --  Read-only. Slave Access (automatically set / reset)
      SVACC          : TWI0_SR_SVACC_Field;
      --  Read-only. General Call Access (clear on read)
      GACC           : TWI0_SR_GACC_Field;
      --  Read-only. Overrun Error (clear on read)
      OVRE           : TWI0_SR_OVRE_Field;
      --  Read-only. Underrun Error (clear on read)
      UNRE           : TWI0_SR_UNRE_Field;
      --  Read-only. Not Acknowledged (clear on read)
      NACK           : TWI0_SR_NACK_Field;
      --  Read-only. Arbitration Lost (clear on read)
      ARBLST         : TWI0_SR_ARBLST_Field;
      --  Read-only. Clock Wait State (automatically set / reset)
      SCLWS          : TWI0_SR_SCLWS_Field;
      --  Read-only. End Of Slave Access (clear on read)
      EOSACC         : TWI0_SR_EOSACC_Field;
      --  Read-only. End of RX Buffer
      ENDRX          : TWI0_SR_ENDRX_Field;
      --  Read-only. End of TX Buffer
      ENDTX          : TWI0_SR_ENDTX_Field;
      --  Read-only. RX Buffer Full
      RXBUFF         : TWI0_SR_RXBUFF_Field;
      --  Read-only. TX Buffer Empty
      TXBUFE         : TWI0_SR_TXBUFE_Field;
      --  Read-only. Master Code Acknowledge (clear on read)
      MCACK          : TWI0_SR_MCACK_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit;
      --  Read-only. Timeout Error (clear on read)
      TOUT           : TWI0_SR_TOUT_Field;
      --  Read-only. PEC Error (clear on read)
      PECERR         : TWI0_SR_PECERR_Field;
      --  Read-only. SMBus Default Address Match (clear on read)
      SMBDAM         : TWI0_SR_SMBDAM_Field;
      --  Read-only. SMBus Host Header Address Match (clear on read)
      SMBHHM         : TWI0_SR_SMBHHM_Field;
      --  unspecified
      Reserved_22_22 : Interfaces.SAM.Bit;
      --  Read-only. TWI Lock due to Frame Errors
      LOCK           : TWI0_SR_LOCK_Field;
      --  Read-only. SCL line value
      SCL            : TWI0_SR_SCL_Field;
      --  Read-only. SDA line value
      SDA            : TWI0_SR_SDA_Field;
      --  unspecified
      Reserved_26_31 : Interfaces.SAM.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_SR_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      SVREAD         at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCLWS          at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      ENDRX          at 0 range 12 .. 12;
      ENDTX          at 0 range 13 .. 13;
      RXBUFF         at 0 range 14 .. 14;
      TXBUFE         at 0 range 15 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      LOCK           at 0 range 23 .. 23;
      SCL            at 0 range 24 .. 24;
      SDA            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype TWI0_IER_TXCOMP_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_RXRDY_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_TXRDY_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_SVACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_GACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_OVRE_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_UNRE_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_NACK_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_ARBLST_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_SCL_WS_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_EOSACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_ENDTX_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_MCACK_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_TOUT_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_PECERR_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_SMBDAM_Field is Interfaces.SAM.Bit;
   subtype TWI0_IER_SMBHHM_Field is Interfaces.SAM.Bit;

   --  TWI Interrupt Enable Register
   type TWI0_IER_Register is record
      --  Write-only. Transmission Completed Interrupt Enable
      TXCOMP         : TWI0_IER_TXCOMP_Field := 16#0#;
      --  Write-only. Receive Holding Register Ready Interrupt Enable
      RXRDY          : TWI0_IER_RXRDY_Field := 16#0#;
      --  Write-only. Transmit Holding Register Ready Interrupt Enable
      TXRDY          : TWI0_IER_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Slave Access Interrupt Enable
      SVACC          : TWI0_IER_SVACC_Field := 16#0#;
      --  Write-only. General Call Access Interrupt Enable
      GACC           : TWI0_IER_GACC_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : TWI0_IER_OVRE_Field := 16#0#;
      --  Write-only. Underrun Error Interrupt Enable
      UNRE           : TWI0_IER_UNRE_Field := 16#0#;
      --  Write-only. Not Acknowledge Interrupt Enable
      NACK           : TWI0_IER_NACK_Field := 16#0#;
      --  Write-only. Arbitration Lost Interrupt Enable
      ARBLST         : TWI0_IER_ARBLST_Field := 16#0#;
      --  Write-only. Clock Wait State Interrupt Enable
      SCL_WS         : TWI0_IER_SCL_WS_Field := 16#0#;
      --  Write-only. End Of Slave Access Interrupt Enable
      EOSACC         : TWI0_IER_EOSACC_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : TWI0_IER_ENDRX_Field := 16#0#;
      --  Write-only. End of Transmit Buffer Interrupt Enable
      ENDTX          : TWI0_IER_ENDTX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : TWI0_IER_RXBUFF_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE         : TWI0_IER_TXBUFE_Field := 16#0#;
      --  Write-only. Master Code Acknowledge Interrupt Enable
      MCACK          : TWI0_IER_MCACK_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Timeout Error Interrupt Enable
      TOUT           : TWI0_IER_TOUT_Field := 16#0#;
      --  Write-only. PEC Error Interrupt Enable
      PECERR         : TWI0_IER_PECERR_Field := 16#0#;
      --  Write-only. SMBus Default Address Match Interrupt Enable
      SMBDAM         : TWI0_IER_SMBDAM_Field := 16#0#;
      --  Write-only. SMBus Host Header Address Match Interrupt Enable
      SMBHHM         : TWI0_IER_SMBHHM_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_IER_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCL_WS         at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      ENDRX          at 0 range 12 .. 12;
      ENDTX          at 0 range 13 .. 13;
      RXBUFF         at 0 range 14 .. 14;
      TXBUFE         at 0 range 15 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TWI0_IDR_TXCOMP_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_SVACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_GACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_OVRE_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_UNRE_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_NACK_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_ARBLST_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_SCL_WS_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_EOSACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_MCACK_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_TOUT_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_PECERR_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_SMBDAM_Field is Interfaces.SAM.Bit;
   subtype TWI0_IDR_SMBHHM_Field is Interfaces.SAM.Bit;

   --  TWI Interrupt Disable Register
   type TWI0_IDR_Register is record
      --  Write-only. Transmission Completed Interrupt Disable
      TXCOMP         : TWI0_IDR_TXCOMP_Field := 16#0#;
      --  Write-only. Receive Holding Register Ready Interrupt Disable
      RXRDY          : TWI0_IDR_RXRDY_Field := 16#0#;
      --  Write-only. Transmit Holding Register Ready Interrupt Disable
      TXRDY          : TWI0_IDR_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Slave Access Interrupt Disable
      SVACC          : TWI0_IDR_SVACC_Field := 16#0#;
      --  Write-only. General Call Access Interrupt Disable
      GACC           : TWI0_IDR_GACC_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : TWI0_IDR_OVRE_Field := 16#0#;
      --  Write-only. Underrun Error Interrupt Disable
      UNRE           : TWI0_IDR_UNRE_Field := 16#0#;
      --  Write-only. Not Acknowledge Interrupt Disable
      NACK           : TWI0_IDR_NACK_Field := 16#0#;
      --  Write-only. Arbitration Lost Interrupt Disable
      ARBLST         : TWI0_IDR_ARBLST_Field := 16#0#;
      --  Write-only. Clock Wait State Interrupt Disable
      SCL_WS         : TWI0_IDR_SCL_WS_Field := 16#0#;
      --  Write-only. End Of Slave Access Interrupt Disable
      EOSACC         : TWI0_IDR_EOSACC_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : TWI0_IDR_ENDRX_Field := 16#0#;
      --  Write-only. End of Transmit Buffer Interrupt Disable
      ENDTX          : TWI0_IDR_ENDTX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : TWI0_IDR_RXBUFF_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE         : TWI0_IDR_TXBUFE_Field := 16#0#;
      --  Write-only. Master Code Acknowledge Interrupt Disable
      MCACK          : TWI0_IDR_MCACK_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Timeout Error Interrupt Disable
      TOUT           : TWI0_IDR_TOUT_Field := 16#0#;
      --  Write-only. PEC Error Interrupt Disable
      PECERR         : TWI0_IDR_PECERR_Field := 16#0#;
      --  Write-only. SMBus Default Address Match Interrupt Disable
      SMBDAM         : TWI0_IDR_SMBDAM_Field := 16#0#;
      --  Write-only. SMBus Host Header Address Match Interrupt Disable
      SMBHHM         : TWI0_IDR_SMBHHM_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_IDR_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCL_WS         at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      ENDRX          at 0 range 12 .. 12;
      ENDTX          at 0 range 13 .. 13;
      RXBUFF         at 0 range 14 .. 14;
      TXBUFE         at 0 range 15 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TWI0_IMR_TXCOMP_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_SVACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_GACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_OVRE_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_UNRE_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_NACK_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_ARBLST_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_SCL_WS_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_EOSACC_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_MCACK_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_TOUT_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_PECERR_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_SMBDAM_Field is Interfaces.SAM.Bit;
   subtype TWI0_IMR_SMBHHM_Field is Interfaces.SAM.Bit;

   --  TWI Interrupt Mask Register
   type TWI0_IMR_Register is record
      --  Read-only. Transmission Completed Interrupt Mask
      TXCOMP         : TWI0_IMR_TXCOMP_Field;
      --  Read-only. Receive Holding Register Ready Interrupt Mask
      RXRDY          : TWI0_IMR_RXRDY_Field;
      --  Read-only. Transmit Holding Register Ready Interrupt Mask
      TXRDY          : TWI0_IMR_TXRDY_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit;
      --  Read-only. Slave Access Interrupt Mask
      SVACC          : TWI0_IMR_SVACC_Field;
      --  Read-only. General Call Access Interrupt Mask
      GACC           : TWI0_IMR_GACC_Field;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : TWI0_IMR_OVRE_Field;
      --  Read-only. Underrun Error Interrupt Mask
      UNRE           : TWI0_IMR_UNRE_Field;
      --  Read-only. Not Acknowledge Interrupt Mask
      NACK           : TWI0_IMR_NACK_Field;
      --  Read-only. Arbitration Lost Interrupt Mask
      ARBLST         : TWI0_IMR_ARBLST_Field;
      --  Read-only. Clock Wait State Interrupt Mask
      SCL_WS         : TWI0_IMR_SCL_WS_Field;
      --  Read-only. End Of Slave Access Interrupt Mask
      EOSACC         : TWI0_IMR_EOSACC_Field;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : TWI0_IMR_ENDRX_Field;
      --  Read-only. End of Transmit Buffer Interrupt Mask
      ENDTX          : TWI0_IMR_ENDTX_Field;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : TWI0_IMR_RXBUFF_Field;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE         : TWI0_IMR_TXBUFE_Field;
      --  Read-only. Master Code Acknowledge Interrupt Mask
      MCACK          : TWI0_IMR_MCACK_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit;
      --  Read-only. Timeout Error Interrupt Mask
      TOUT           : TWI0_IMR_TOUT_Field;
      --  Read-only. PEC Error Interrupt Mask
      PECERR         : TWI0_IMR_PECERR_Field;
      --  Read-only. SMBus Default Address Match Interrupt Mask
      SMBDAM         : TWI0_IMR_SMBDAM_Field;
      --  Read-only. SMBus Host Header Address Match Interrupt Mask
      SMBHHM         : TWI0_IMR_SMBHHM_Field;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_IMR_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      TXRDY          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SVACC          at 0 range 4 .. 4;
      GACC           at 0 range 5 .. 5;
      OVRE           at 0 range 6 .. 6;
      UNRE           at 0 range 7 .. 7;
      NACK           at 0 range 8 .. 8;
      ARBLST         at 0 range 9 .. 9;
      SCL_WS         at 0 range 10 .. 10;
      EOSACC         at 0 range 11 .. 11;
      ENDRX          at 0 range 12 .. 12;
      ENDTX          at 0 range 13 .. 13;
      RXBUFF         at 0 range 14 .. 14;
      TXBUFE         at 0 range 15 .. 15;
      MCACK          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TOUT           at 0 range 18 .. 18;
      PECERR         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      SMBHHM         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype TWI0_RHR_RXDATA_Field is Interfaces.SAM.Byte;

   --  TWI Receive Holding Register
   type TWI0_RHR_Register is record
      --  Read-only. Master or Slave Receive Holding Data
      RXDATA        : TWI0_RHR_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_RHR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TWI0_THR_TXDATA_Field is Interfaces.SAM.Byte;

   --  TWI Transmit Holding Register
   type TWI0_THR_Register is record
      --  Write-only. Master or Slave Transmit Holding Data
      TXDATA        : TWI0_THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_THR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TWI0_SMBTR_PRESC_Field is Interfaces.SAM.UInt4;
   subtype TWI0_SMBTR_TLOWS_Field is Interfaces.SAM.Byte;
   subtype TWI0_SMBTR_TLOWM_Field is Interfaces.SAM.Byte;
   subtype TWI0_SMBTR_THMAX_Field is Interfaces.SAM.Byte;

   --  TWI SMBus Timing Register
   type TWI0_SMBTR_Register is record
      --  SMBus Clock Prescaler
      PRESC        : TWI0_SMBTR_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_4_7 : Interfaces.SAM.UInt4 := 16#0#;
      --  Slave Clock Stretch Maximum Cycles
      TLOWS        : TWI0_SMBTR_TLOWS_Field := 16#0#;
      --  Master Clock Stretch Maximum Cycles
      TLOWM        : TWI0_SMBTR_TLOWM_Field := 16#0#;
      --  Clock High Maximum Cycles
      THMAX        : TWI0_SMBTR_THMAX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_SMBTR_Register use record
      PRESC        at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      TLOWS        at 0 range 8 .. 15;
      TLOWM        at 0 range 16 .. 23;
      THMAX        at 0 range 24 .. 31;
   end record;

   subtype TWI0_ACR_DATAL_Field is Interfaces.SAM.Byte;
   subtype TWI0_ACR_DIR_Field is Interfaces.SAM.Bit;
   subtype TWI0_ACR_PEC_Field is Interfaces.SAM.Bit;
   subtype TWI0_ACR_NDATAL_Field is Interfaces.SAM.Byte;
   subtype TWI0_ACR_NDIR_Field is Interfaces.SAM.Bit;
   subtype TWI0_ACR_NPEC_Field is Interfaces.SAM.Bit;

   --  TWI Alternative Command Register
   type TWI0_ACR_Register is record
      --  Data Length
      DATAL          : TWI0_ACR_DATAL_Field := 16#0#;
      --  Transfer Direction
      DIR            : TWI0_ACR_DIR_Field := 16#0#;
      --  PEC Request (SMBus Mode only)
      PEC            : TWI0_ACR_PEC_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Next Data Length
      NDATAL         : TWI0_ACR_NDATAL_Field := 16#0#;
      --  Next Transfer Direction
      NDIR           : TWI0_ACR_NDIR_Field := 16#0#;
      --  Next PEC Request (SMBus Mode only)
      NPEC           : TWI0_ACR_NPEC_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.SAM.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_ACR_Register use record
      DATAL          at 0 range 0 .. 7;
      DIR            at 0 range 8 .. 8;
      PEC            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      NDATAL         at 0 range 16 .. 23;
      NDIR           at 0 range 24 .. 24;
      NPEC           at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype TWI0_FILTR_FILT_Field is Interfaces.SAM.Bit;
   subtype TWI0_FILTR_PADFEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_FILTR_PADFCFG_Field is Interfaces.SAM.Bit;
   subtype TWI0_FILTR_THRES_Field is Interfaces.SAM.UInt3;

   --  TWI Filter Register
   type TWI0_FILTR_Register is record
      --  RX Digital Filter
      FILT           : TWI0_FILTR_FILT_Field := 16#0#;
      --  PAD Filter Enable
      PADFEN         : TWI0_FILTR_PADFEN_Field := 16#0#;
      --  PAD Filter Config
      PADFCFG        : TWI0_FILTR_PADFCFG_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.SAM.UInt5 := 16#0#;
      --  Digital Filter Threshold
      THRES          : TWI0_FILTR_THRES_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_FILTR_Register use record
      FILT           at 0 range 0 .. 0;
      PADFEN         at 0 range 1 .. 1;
      PADFCFG        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      THRES          at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype TWI0_SWMR_SADR1_Field is Interfaces.SAM.UInt7;
   subtype TWI0_SWMR_SADR2_Field is Interfaces.SAM.UInt7;
   subtype TWI0_SWMR_SADR3_Field is Interfaces.SAM.UInt7;
   subtype TWI0_SWMR_DATAM_Field is Interfaces.SAM.Byte;

   --  TWI SleepWalking Matching Register
   type TWI0_SWMR_Register is record
      --  Slave Address 1
      SADR1          : TWI0_SWMR_SADR1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Slave Address 2
      SADR2          : TWI0_SWMR_SADR2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit := 16#0#;
      --  Slave Address 3
      SADR3          : TWI0_SWMR_SADR3_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit := 16#0#;
      --  Data Match
      DATAM          : TWI0_SWMR_DATAM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_SWMR_Register use record
      SADR1          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SADR2          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SADR3          at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DATAM          at 0 range 24 .. 31;
   end record;

   subtype TWI0_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (--  Reset value for the field
      WPMR_WPKEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit.Always reads as 0
      PASSWD)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (WPMR_WPKEY_Field_Reset => 0,
      PASSWD => 5527369);

   --  TWI Write Protection Mode Register
   type TWI0_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : TWI0_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := WPMR_WPKEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype TWI0_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype TWI0_WPSR_WPVSRC_Field is Interfaces.SAM.UInt24;

   --  TWI Write Protection Status Register
   type TWI0_WPSR_Register is record
      --  Read-only. Write Protect Violation Status
      WPVS         : TWI0_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC       : TWI0_WPSR_WPVSRC_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_WPSR_Register use record
      WPVS         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPVSRC       at 0 range 8 .. 31;
   end record;

   subtype TWI0_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type TWI0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : TWI0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TWI0_TCR_TXCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Counter Register
   type TWI0_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : TWI0_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TWI0_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type TWI0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : TWI0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TWI0_TNCR_TXNCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Next Counter Register
   type TWI0_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : TWI0_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TWI0_PTCR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTCR_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTCR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTCR_TXTDIS_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTCR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTCR_RXCBDIS_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTCR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTCR_TXCBDIS_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTCR_ERRCLR_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register
   type TWI0_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : TWI0_PTCR_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : TWI0_PTCR_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : TWI0_PTCR_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : TWI0_PTCR_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : TWI0_PTCR_RXCBEN_Field := 16#0#;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : TWI0_PTCR_RXCBDIS_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : TWI0_PTCR_TXCBEN_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : TWI0_PTCR_TXCBDIS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : TWI0_PTCR_ERRCLR_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_PTCR_Register use record
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

   subtype TWI0_PTSR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTSR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTSR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTSR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype TWI0_PTSR_ERR_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register
   type TWI0_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : TWI0_PTSR_RXTEN_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : TWI0_PTSR_TXTEN_Field;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7;
      --  Read-only. Receiver Transfer Enable
      RXCBEN         : TWI0_PTSR_RXCBEN_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit;
      --  Read-only. Transmitter Transfer Enable
      TXCBEN         : TWI0_PTSR_TXCBEN_Field;
      --  unspecified
      Reserved_19_23 : Interfaces.SAM.UInt5;
      --  Read-only. Transfer Bus Error (clear on read)
      ERR            : TWI0_PTSR_ERR_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWI0_PTSR_Register use record
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

   --  Two-wire Interface 0
   type TWI_Peripheral is record
      --  TWI Control Register
      CR    : aliased TWI0_CR_Register;
      --  TWI Master Mode Register
      MMR   : aliased TWI0_MMR_Register;
      --  TWI Slave Mode Register
      SMR   : aliased TWI0_SMR_Register;
      --  TWI Internal Address Register
      IADR  : aliased TWI0_IADR_Register;
      --  TWI Clock Waveform Generator Register
      CWGR  : aliased TWI0_CWGR_Register;
      --  TWI Status Register
      SR    : aliased TWI0_SR_Register;
      --  TWI Interrupt Enable Register
      IER   : aliased TWI0_IER_Register;
      --  TWI Interrupt Disable Register
      IDR   : aliased TWI0_IDR_Register;
      --  TWI Interrupt Mask Register
      IMR   : aliased TWI0_IMR_Register;
      --  TWI Receive Holding Register
      RHR   : aliased TWI0_RHR_Register;
      --  TWI Transmit Holding Register
      THR   : aliased TWI0_THR_Register;
      --  TWI SMBus Timing Register
      SMBTR : aliased TWI0_SMBTR_Register;
      --  TWI Alternative Command Register
      ACR   : aliased TWI0_ACR_Register;
      --  TWI Filter Register
      FILTR : aliased TWI0_FILTR_Register;
      --  TWI SleepWalking Matching Register
      SWMR  : aliased TWI0_SWMR_Register;
      --  TWI Write Protection Mode Register
      WPMR  : aliased TWI0_WPMR_Register;
      --  TWI Write Protection Status Register
      WPSR  : aliased TWI0_WPSR_Register;
      --  Receive Pointer Register
      RPR   : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR   : aliased TWI0_RCR_Register;
      --  Transmit Pointer Register
      TPR   : aliased Interfaces.SAM.UInt32;
      --  Transmit Counter Register
      TCR   : aliased TWI0_TCR_Register;
      --  Receive Next Pointer Register
      RNPR  : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR  : aliased TWI0_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR  : aliased Interfaces.SAM.UInt32;
      --  Transmit Next Counter Register
      TNCR  : aliased TWI0_TNCR_Register;
      --  Transfer Control Register
      PTCR  : aliased TWI0_PTCR_Register;
      --  Transfer Status Register
      PTSR  : aliased TWI0_PTSR_Register;
   end record
     with Volatile;

   for TWI_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      MMR   at 16#4# range 0 .. 31;
      SMR   at 16#8# range 0 .. 31;
      IADR  at 16#C# range 0 .. 31;
      CWGR  at 16#10# range 0 .. 31;
      SR    at 16#20# range 0 .. 31;
      IER   at 16#24# range 0 .. 31;
      IDR   at 16#28# range 0 .. 31;
      IMR   at 16#2C# range 0 .. 31;
      RHR   at 16#30# range 0 .. 31;
      THR   at 16#34# range 0 .. 31;
      SMBTR at 16#38# range 0 .. 31;
      ACR   at 16#40# range 0 .. 31;
      FILTR at 16#44# range 0 .. 31;
      SWMR  at 16#4C# range 0 .. 31;
      WPMR  at 16#E4# range 0 .. 31;
      WPSR  at 16#E8# range 0 .. 31;
      RPR   at 16#100# range 0 .. 31;
      RCR   at 16#104# range 0 .. 31;
      TPR   at 16#108# range 0 .. 31;
      TCR   at 16#10C# range 0 .. 31;
      RNPR  at 16#110# range 0 .. 31;
      RNCR  at 16#114# range 0 .. 31;
      TNPR  at 16#118# range 0 .. 31;
      TNCR  at 16#11C# range 0 .. 31;
      PTCR  at 16#120# range 0 .. 31;
      PTSR  at 16#124# range 0 .. 31;
   end record;

   --  Two-wire Interface 0
   TWI0_Periph : aliased TWI_Peripheral
     with Import, Address => TWI0_Base;

   --  Two-wire Interface 1
   TWI1_Periph : aliased TWI_Peripheral
     with Import, Address => TWI1_Base;

   --  Two-wire Interface 2
   TWI2_Periph : aliased TWI_Peripheral
     with Import, Address => TWI2_Base;

   --  Two-wire Interface 3
   TWI3_Periph : aliased TWI_Peripheral
     with Import, Address => TWI3_Base;

   --  Two-wire Interface 4
   TWI4_Periph : aliased TWI_Peripheral
     with Import, Address => TWI4_Base;

   --  Two-wire Interface 5
   TWI5_Periph : aliased TWI_Peripheral
     with Import, Address => TWI5_Base;

   --  Two-wire Interface 6
   TWI6_Periph : aliased TWI_Peripheral
     with Import, Address => TWI6_Base;

   --  Two-wire Interface 7
   TWI7_Periph : aliased TWI_Peripheral
     with Import, Address => TWI7_Base;

end Interfaces.SAM.TWI;
