--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

package Interfaces.SAM.I2SC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype I2SC0_CR_RXEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_CR_RXDIS_Field is Interfaces.SAM.Bit;
   subtype I2SC0_CR_CKEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_CR_CKDIS_Field is Interfaces.SAM.Bit;
   subtype I2SC0_CR_TXEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_CR_TXDIS_Field is Interfaces.SAM.Bit;
   subtype I2SC0_CR_SWRST_Field is Interfaces.SAM.Bit;

   --  Control Register
   type I2SC0_CR_Register is record
      --  Write-only. Receiver Enable
      RXEN          : I2SC0_CR_RXEN_Field := 16#0#;
      --  Write-only. Receiver Disable
      RXDIS         : I2SC0_CR_RXDIS_Field := 16#0#;
      --  Write-only. Clocks Enable
      CKEN          : I2SC0_CR_CKEN_Field := 16#0#;
      --  Write-only. Clocks Disable
      CKDIS         : I2SC0_CR_CKDIS_Field := 16#0#;
      --  Write-only. Transmitter Enable
      TXEN          : I2SC0_CR_TXEN_Field := 16#0#;
      --  Write-only. Transmitter Disable
      TXDIS         : I2SC0_CR_TXDIS_Field := 16#0#;
      --  unspecified
      Reserved_6_6  : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Software Reset
      SWRST         : I2SC0_CR_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_CR_Register use record
      RXEN          at 0 range 0 .. 0;
      RXDIS         at 0 range 1 .. 1;
      CKEN          at 0 range 2 .. 2;
      CKDIS         at 0 range 3 .. 3;
      TXEN          at 0 range 4 .. 4;
      TXDIS         at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      SWRST         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Inter-IC Sound Controller Mode
   type MR_MODE_Field is
     (--  I2SCK and i2SWS pin inputs used as bit clock and word select/frame
--  synchronization.
      SLAVE,
      --  Bit clock and word select/frame synchronization generated by I2SC from MCK
--  and output to I2SCK and I2SWS pins. MCK is output as master clock on I2SMCK
--  if IMCKMODE bit of I2SC_MR is set.
      MASTER)
     with Size => 1;
   for MR_MODE_Field use
     (SLAVE => 0,
      MASTER => 1);

   --  Data Word Length
   type MR_DATALENGTH_Field is
     (--  Data length is set to 32 bits
      Val_32_BITS,
      --  Data length is set to 24 bits
      Val_24_BITS,
      --  Data length is set to 20 bits
      Val_20_BITS,
      --  Data length is set to 18 bits
      Val_18_BITS,
      --  Data length is set to 16 bits
      Val_16_BITS,
      --  Data length is set to 16-bit compact stereo. Left sample in bits 15:0 and
--  right sample in bits 31:16 of same word.
      Val_16_BITS_COMPACT,
      --  Data length is set to 8 bits
      Val_8_BITS,
      --  Data length is set to 8-bit compact stereo. Left sample in bits 7:0 and
--  right sample in bits 15:8 of the same word.
      Val_8_BITS_COMPACT)
     with Size => 3;
   for MR_DATALENGTH_Field use
     (Val_32_BITS => 0,
      Val_24_BITS => 1,
      Val_20_BITS => 2,
      Val_18_BITS => 3,
      Val_16_BITS => 4,
      Val_16_BITS_COMPACT => 5,
      Val_8_BITS => 6,
      Val_8_BITS_COMPACT => 7);

   subtype I2SC0_MR_RXMONO_Field is Interfaces.SAM.Bit;
   subtype I2SC0_MR_RXDMA_Field is Interfaces.SAM.Bit;
   subtype I2SC0_MR_RXLOOP_Field is Interfaces.SAM.Bit;
   subtype I2SC0_MR_TXMONO_Field is Interfaces.SAM.Bit;
   subtype I2SC0_MR_TXDMA_Field is Interfaces.SAM.Bit;
   subtype I2SC0_MR_TXSAME_Field is Interfaces.SAM.Bit;
   subtype I2SC0_MR_IMCKDIV_Field is Interfaces.SAM.UInt6;

   --  Master Clock to fs Ratio
   type MR_IMCKFS_Field is
     (--  Sample frequency ratio set to 16
      M2SF16,
      --  Sample frequency ratio set to 32
      M2SF32,
      --  Sample frequency ratio set to 48
      M2SF48,
      --  Sample frequency ratio set to 64
      M2SF64,
      --  Sample frequency ratio set to 96
      M2SF96,
      --  Sample frequency ratio set to 128
      M2SF128,
      --  Sample frequency ratio set to 192
      M2SF192,
      --  Sample frequency ratio set to 256
      M2SF256,
      --  Sample frequency ratio set to 384
      M2SF384,
      --  Sample frequency ratio set to 512
      M2SF512,
      --  Sample frequency ratio set to 768
      M2SF768,
      --  Sample frequency ratio set to 1024
      M2SF1024)
     with Size => 6;
   for MR_IMCKFS_Field use
     (M2SF16 => 0,
      M2SF32 => 1,
      M2SF48 => 2,
      M2SF64 => 3,
      M2SF96 => 5,
      M2SF128 => 7,
      M2SF192 => 11,
      M2SF256 => 15,
      M2SF384 => 23,
      M2SF512 => 31,
      M2SF768 => 47,
      M2SF1024 => 63);

   subtype I2SC0_MR_IMCKMODE_Field is Interfaces.SAM.Bit;
   subtype I2SC0_MR_IWS_Field is Interfaces.SAM.Bit;

   --  Mode Register
   type I2SC0_MR_Register is record
      --  Inter-IC Sound Controller Mode
      MODE           : MR_MODE_Field := Interfaces.SAM.I2SC.SLAVE;
      --  unspecified
      Reserved_1_1   : Interfaces.SAM.Bit := 16#0#;
      --  Data Word Length
      DATALENGTH     : MR_DATALENGTH_Field := Interfaces.SAM.I2SC.Val_32_BITS;
      --  unspecified
      Reserved_5_7   : Interfaces.SAM.UInt3 := 16#0#;
      --  Receive Mono
      RXMONO         : I2SC0_MR_RXMONO_Field := 16#0#;
      --  Single or Multiple PDC Channels for Receiver
      RXDMA          : I2SC0_MR_RXDMA_Field := 16#0#;
      --  Loop-back Test Mode
      RXLOOP         : I2SC0_MR_RXLOOP_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.SAM.Bit := 16#0#;
      --  Transmit Mono
      TXMONO         : I2SC0_MR_TXMONO_Field := 16#0#;
      --  Single or Multiple PDC Channels for Transmitter
      TXDMA          : I2SC0_MR_TXDMA_Field := 16#0#;
      --  Transmit Data when Underrun
      TXSAME         : I2SC0_MR_TXSAME_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit := 16#0#;
      --  Peripheral Clock to I2SC Master Clock Ratio
      IMCKDIV        : I2SC0_MR_IMCKDIV_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.SAM.UInt2 := 16#0#;
      --  Master Clock to fs Ratio
      IMCKFS         : MR_IMCKFS_Field := Interfaces.SAM.I2SC.M2SF16;
      --  Master Clock Mode
      IMCKMODE       : I2SC0_MR_IMCKMODE_Field := 16#0#;
      --  I2SWS TDM Slot Width
      IWS            : I2SC0_MR_IWS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_MR_Register use record
      MODE           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      DATALENGTH     at 0 range 2 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RXMONO         at 0 range 8 .. 8;
      RXDMA          at 0 range 9 .. 9;
      RXLOOP         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TXMONO         at 0 range 12 .. 12;
      TXDMA          at 0 range 13 .. 13;
      TXSAME         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      IMCKDIV        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      IMCKFS         at 0 range 24 .. 29;
      IMCKMODE       at 0 range 30 .. 30;
      IWS            at 0 range 31 .. 31;
   end record;

   subtype I2SC0_SR_RXEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SR_RXOR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SR_TXEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SR_TXUR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SR_RXORCH_Field is Interfaces.SAM.UInt2;
   subtype I2SC0_SR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SR_TXURCH_Field is Interfaces.SAM.UInt2;
   subtype I2SC0_SR_TXBUFE_Field is Interfaces.SAM.Bit;

   --  Status Register
   type I2SC0_SR_Register is record
      --  Read-only. Receiver Enabled
      RXEN           : I2SC0_SR_RXEN_Field;
      --  Read-only. Receive Ready
      RXRDY          : I2SC0_SR_RXRDY_Field;
      --  Read-only. Receive Overrun
      RXOR           : I2SC0_SR_RXOR_Field;
      --  Read-only. End of Receiver Transfer
      ENDRX          : I2SC0_SR_ENDRX_Field;
      --  Read-only. Transmitter Enabled
      TXEN           : I2SC0_SR_TXEN_Field;
      --  Read-only. Transmit Ready
      TXRDY          : I2SC0_SR_TXRDY_Field;
      --  Read-only. Transmit Underrun
      TXUR           : I2SC0_SR_TXUR_Field;
      --  Read-only. End of Transmitter Transfer
      ENDTX          : I2SC0_SR_ENDTX_Field;
      --  Read-only. Receive Overrun Channel
      RXORCH         : I2SC0_SR_RXORCH_Field;
      --  unspecified
      Reserved_10_18 : Interfaces.SAM.UInt9;
      --  Read-only. Receive Buffer Full
      RXBUFF         : I2SC0_SR_RXBUFF_Field;
      --  Read-only. Transmit Underrun Channel
      TXURCH         : I2SC0_SR_TXURCH_Field;
      --  unspecified
      Reserved_22_30 : Interfaces.SAM.UInt9;
      --  Read-only. Transmit Buffer Empty
      TXBUFE         : I2SC0_SR_TXBUFE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_SR_Register use record
      RXEN           at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      RXOR           at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      TXEN           at 0 range 4 .. 4;
      TXRDY          at 0 range 5 .. 5;
      TXUR           at 0 range 6 .. 6;
      ENDTX          at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      RXBUFF         at 0 range 19 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      TXBUFE         at 0 range 31 .. 31;
   end record;

   subtype I2SC0_SCR_RXOR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SCR_TXUR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SCR_RXORCH_Field is Interfaces.SAM.UInt2;
   subtype I2SC0_SCR_TXURCH_Field is Interfaces.SAM.UInt2;

   --  Status Clear Register
   type I2SC0_SCR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Receive Overrun Status Clear
      RXOR           : I2SC0_SCR_RXOR_Field := 16#0#;
      --  unspecified
      Reserved_3_5   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Transmit Underrun Status Clear
      TXUR           : I2SC0_SCR_TXUR_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Receive Overrun Per Channel Status Clear
      RXORCH         : I2SC0_SCR_RXORCH_Field := 16#0#;
      --  unspecified
      Reserved_10_19 : Interfaces.SAM.UInt10 := 16#0#;
      --  Write-only. Transmit Underrun Per Channel Status Clear
      TXURCH         : I2SC0_SCR_TXURCH_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_SCR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RXOR           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      TXUR           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_19 at 0 range 10 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype I2SC0_SSR_RXOR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SSR_TXUR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_SSR_RXORCH_Field is Interfaces.SAM.UInt2;
   subtype I2SC0_SSR_TXURCH_Field is Interfaces.SAM.UInt2;

   --  Status Set Register
   type I2SC0_SSR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Receive Overrun Status Set
      RXOR           : I2SC0_SSR_RXOR_Field := 16#0#;
      --  unspecified
      Reserved_3_5   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. Transmit Underrun Status Set
      TXUR           : I2SC0_SSR_TXUR_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Receive Overrun Per Channel Status Set
      RXORCH         : I2SC0_SSR_RXORCH_Field := 16#0#;
      --  unspecified
      Reserved_10_19 : Interfaces.SAM.UInt10 := 16#0#;
      --  Write-only. Transmit Underrun Per Channel Status Set
      TXURCH         : I2SC0_SSR_TXURCH_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.SAM.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_SSR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RXOR           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      TXUR           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXORCH         at 0 range 8 .. 9;
      Reserved_10_19 at 0 range 10 .. 19;
      TXURCH         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype I2SC0_IER_RXRDY_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IER_RXOR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IER_TXRDY_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IER_TXUR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IER_ENDTX_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IER_RXFULL_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IER_TXEMPTY_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type I2SC0_IER_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Receiver Ready Interrupt Enable
      RXRDY          : I2SC0_IER_RXRDY_Field := 16#0#;
      --  Write-only. Receiver Overrun Interrupt Enable
      RXOR           : I2SC0_IER_RXOR_Field := 16#0#;
      --  Write-only. End of Reception Interrupt Enable
      ENDRX          : I2SC0_IER_ENDRX_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY          : I2SC0_IER_TXRDY_Field := 16#0#;
      --  Write-only. Transmit Underflow Interrupt Enable
      TXUR           : I2SC0_IER_TXUR_Field := 16#0#;
      --  Write-only. End of Transmission Interrupt Enable
      ENDTX          : I2SC0_IER_ENDTX_Field := 16#0#;
      --  unspecified
      Reserved_8_18  : Interfaces.SAM.UInt11 := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXFULL         : I2SC0_IER_RXFULL_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : Interfaces.SAM.UInt11 := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXEMPTY        : I2SC0_IER_TXEMPTY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_IER_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      RXOR           at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      TXRDY          at 0 range 5 .. 5;
      TXUR           at 0 range 6 .. 6;
      ENDTX          at 0 range 7 .. 7;
      Reserved_8_18  at 0 range 8 .. 18;
      RXFULL         at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      TXEMPTY        at 0 range 31 .. 31;
   end record;

   subtype I2SC0_IDR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IDR_RXOR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IDR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IDR_TXUR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IDR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IDR_RXFULL_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IDR_TXEMPTY_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type I2SC0_IDR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Receiver Ready Interrupt Disable
      RXRDY          : I2SC0_IDR_RXRDY_Field := 16#0#;
      --  Write-only. Receiver Overrun Interrupt Disable
      RXOR           : I2SC0_IDR_RXOR_Field := 16#0#;
      --  Write-only. End of Reception Interrupt Disable
      ENDRX          : I2SC0_IDR_ENDRX_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY          : I2SC0_IDR_TXRDY_Field := 16#0#;
      --  Write-only. Transmit Underflow Interrupt Disable
      TXUR           : I2SC0_IDR_TXUR_Field := 16#0#;
      --  Write-only. End of Transmission Interrupt Disable
      ENDTX          : I2SC0_IDR_ENDTX_Field := 16#0#;
      --  unspecified
      Reserved_8_18  : Interfaces.SAM.UInt11 := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXFULL         : I2SC0_IDR_RXFULL_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : Interfaces.SAM.UInt11 := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXEMPTY        : I2SC0_IDR_TXEMPTY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_IDR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      RXOR           at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      TXRDY          at 0 range 5 .. 5;
      TXUR           at 0 range 6 .. 6;
      ENDTX          at 0 range 7 .. 7;
      Reserved_8_18  at 0 range 8 .. 18;
      RXFULL         at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      TXEMPTY        at 0 range 31 .. 31;
   end record;

   subtype I2SC0_IMR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IMR_RXOR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IMR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IMR_TXUR_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IMR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IMR_RXFULL_Field is Interfaces.SAM.Bit;
   subtype I2SC0_IMR_TXEMPTY_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type I2SC0_IMR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.SAM.Bit;
      --  Read-only. Receiver Ready Interrupt Disable
      RXRDY          : I2SC0_IMR_RXRDY_Field;
      --  Read-only. Receiver Overrun Interrupt Disable
      RXOR           : I2SC0_IMR_RXOR_Field;
      --  Read-only. End of Reception Interrupt Disable
      ENDRX          : I2SC0_IMR_ENDRX_Field;
      --  unspecified
      Reserved_4_4   : Interfaces.SAM.Bit;
      --  Read-only. Transmit Ready Interrupt Disable
      TXRDY          : I2SC0_IMR_TXRDY_Field;
      --  Read-only. Transmit Underflow Interrupt Disable
      TXUR           : I2SC0_IMR_TXUR_Field;
      --  Read-only. End of Transmission Interrupt Disable
      ENDTX          : I2SC0_IMR_ENDTX_Field;
      --  unspecified
      Reserved_8_18  : Interfaces.SAM.UInt11;
      --  Read-only. Receive Buffer Full Interrupt Disable
      RXFULL         : I2SC0_IMR_RXFULL_Field;
      --  unspecified
      Reserved_20_30 : Interfaces.SAM.UInt11;
      --  Read-only. Transmit Buffer Empty Interrupt Disable
      TXEMPTY        : I2SC0_IMR_TXEMPTY_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_IMR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RXRDY          at 0 range 1 .. 1;
      RXOR           at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      TXRDY          at 0 range 5 .. 5;
      TXUR           at 0 range 6 .. 6;
      ENDTX          at 0 range 7 .. 7;
      Reserved_8_18  at 0 range 8 .. 18;
      RXFULL         at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      TXEMPTY        at 0 range 31 .. 31;
   end record;

   subtype I2SC0_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type I2SC0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : I2SC0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2SC0_TCR_TXCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Counter Register
   type I2SC0_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : I2SC0_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2SC0_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type I2SC0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : I2SC0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2SC0_TNCR_TXNCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Next Counter Register
   type I2SC0_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : I2SC0_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2SC0_PTCR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTCR_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTCR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTCR_TXTDIS_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTCR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTCR_RXCBDIS_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTCR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTCR_TXCBDIS_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTCR_ERRCLR_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register
   type I2SC0_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : I2SC0_PTCR_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : I2SC0_PTCR_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : I2SC0_PTCR_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : I2SC0_PTCR_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : I2SC0_PTCR_RXCBEN_Field := 16#0#;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : I2SC0_PTCR_RXCBDIS_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : I2SC0_PTCR_TXCBEN_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : I2SC0_PTCR_TXCBDIS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : I2SC0_PTCR_ERRCLR_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_PTCR_Register use record
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

   subtype I2SC0_PTSR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTSR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTSR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTSR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype I2SC0_PTSR_ERR_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register
   type I2SC0_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : I2SC0_PTSR_RXTEN_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : I2SC0_PTSR_TXTEN_Field;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7;
      --  Read-only. Receiver Transfer Enable
      RXCBEN         : I2SC0_PTSR_RXCBEN_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit;
      --  Read-only. Transmitter Transfer Enable
      TXCBEN         : I2SC0_PTSR_TXCBEN_Field;
      --  unspecified
      Reserved_19_23 : Interfaces.SAM.UInt5;
      --  Read-only. Transfer Bus Error (clear on read)
      ERR            : I2SC0_PTSR_ERR_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SC0_PTSR_Register use record
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

   --  Inter-IC Sound Controller 0
   type I2SC_Peripheral is record
      --  Control Register
      CR   : aliased I2SC0_CR_Register;
      --  Mode Register
      MR   : aliased I2SC0_MR_Register;
      --  Status Register
      SR   : aliased I2SC0_SR_Register;
      --  Status Clear Register
      SCR  : aliased I2SC0_SCR_Register;
      --  Status Set Register
      SSR  : aliased I2SC0_SSR_Register;
      --  Interrupt Enable Register
      IER  : aliased I2SC0_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased I2SC0_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased I2SC0_IMR_Register;
      --  Receiver Holding Register
      RHR  : aliased Interfaces.SAM.UInt32;
      --  Transmitter Holding Register
      THR  : aliased Interfaces.SAM.UInt32;
      --  Receive Pointer Register
      RPR  : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR  : aliased I2SC0_RCR_Register;
      --  Transmit Pointer Register
      TPR  : aliased Interfaces.SAM.UInt32;
      --  Transmit Counter Register
      TCR  : aliased I2SC0_TCR_Register;
      --  Receive Next Pointer Register
      RNPR : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased I2SC0_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased Interfaces.SAM.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased I2SC0_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased I2SC0_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased I2SC0_PTSR_Register;
   end record
     with Volatile;

   for I2SC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      SR   at 16#8# range 0 .. 31;
      SCR  at 16#C# range 0 .. 31;
      SSR  at 16#10# range 0 .. 31;
      IER  at 16#14# range 0 .. 31;
      IDR  at 16#18# range 0 .. 31;
      IMR  at 16#1C# range 0 .. 31;
      RHR  at 16#20# range 0 .. 31;
      THR  at 16#24# range 0 .. 31;
      RPR  at 16#100# range 0 .. 31;
      RCR  at 16#104# range 0 .. 31;
      TPR  at 16#108# range 0 .. 31;
      TCR  at 16#10C# range 0 .. 31;
      RNPR at 16#110# range 0 .. 31;
      RNCR at 16#114# range 0 .. 31;
      TNPR at 16#118# range 0 .. 31;
      TNCR at 16#11C# range 0 .. 31;
      PTCR at 16#120# range 0 .. 31;
      PTSR at 16#124# range 0 .. 31;
   end record;

   --  Inter-IC Sound Controller 0
   I2SC0_Periph : aliased I2SC_Peripheral
     with Import, Address => I2SC0_Base;

   --  Inter-IC Sound Controller 1
   I2SC1_Periph : aliased I2SC_Peripheral
     with Import, Address => I2SC1_Base;

end Interfaces.SAM.I2SC;
