--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

package Interfaces.SAM.SPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SPI0_CR_SPIEN_Field is Interfaces.SAM.Bit;
   subtype SPI0_CR_SPIDIS_Field is Interfaces.SAM.Bit;
   subtype SPI0_CR_SWRST_Field is Interfaces.SAM.Bit;
   subtype SPI0_CR_REQCLR_Field is Interfaces.SAM.Bit;
   subtype SPI0_CR_LASTXFER_Field is Interfaces.SAM.Bit;

   --  SPI Control Register
   type SPI0_CR_Register is record
      --  Write-only. SPI Enable
      SPIEN          : SPI0_CR_SPIEN_Field := 16#0#;
      --  Write-only. SPI Disable
      SPIDIS         : SPI0_CR_SPIDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_6   : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. SPI Software Reset
      SWRST          : SPI0_CR_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Request to Clear the Comparison Trigger
      REQCLR         : SPI0_CR_REQCLR_Field := 16#0#;
      --  unspecified
      Reserved_13_23 : Interfaces.SAM.UInt11 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : SPI0_CR_LASTXFER_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_CR_Register use record
      SPIEN          at 0 range 0 .. 0;
      SPIDIS         at 0 range 1 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      SWRST          at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      REQCLR         at 0 range 12 .. 12;
      Reserved_13_23 at 0 range 13 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SPI0_MR_MSTR_Field is Interfaces.SAM.Bit;
   subtype SPI0_MR_PS_Field is Interfaces.SAM.Bit;
   subtype SPI0_MR_PCSDEC_Field is Interfaces.SAM.Bit;

   --  Bit Rate Source Clock
   type MR_BRSRCCLK_Field is
     (--  The peripheral clock is the source clock for the bit rate generation.
      PERIPH_CLK,
      --  PMC PCKx is the source clock for the bit rate generation, thus the bit rate
--  can be independent of the core/peripheral clock.
      PMC_PCK)
     with Size => 1;
   for MR_BRSRCCLK_Field use
     (PERIPH_CLK => 0,
      PMC_PCK => 1);

   subtype SPI0_MR_MODFDIS_Field is Interfaces.SAM.Bit;
   subtype SPI0_MR_WDRBT_Field is Interfaces.SAM.Bit;
   subtype SPI0_MR_LLB_Field is Interfaces.SAM.Bit;

   --  Comparison Mode
   type MR_CMPMODE_Field is
     (--  Any character is received and comparison function drives CMP flag.
      FLAG_ONLY,
      --  Comparison condition must be met to start reception of all incoming
--  characters until REQCLR is set.
      START_CONDITION)
     with Size => 1;
   for MR_CMPMODE_Field use
     (FLAG_ONLY => 0,
      START_CONDITION => 1);

   subtype SPI0_MR_PCS_Field is Interfaces.SAM.UInt2;
   subtype SPI0_MR_DLYBCS_Field is Interfaces.SAM.Byte;

   --  SPI Mode Register
   type SPI0_MR_Register is record
      --  Master/Slave Mode
      MSTR           : SPI0_MR_MSTR_Field := 16#0#;
      --  Peripheral Select
      PS             : SPI0_MR_PS_Field := 16#0#;
      --  Chip Select Decode
      PCSDEC         : SPI0_MR_PCSDEC_Field := 16#0#;
      --  Bit Rate Source Clock
      BRSRCCLK       : MR_BRSRCCLK_Field := Interfaces.SAM.SPI.PERIPH_CLK;
      --  Mode Fault Detection
      MODFDIS        : SPI0_MR_MODFDIS_Field := 16#0#;
      --  Wait Data Read Before Transfer
      WDRBT          : SPI0_MR_WDRBT_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.SAM.Bit := 16#0#;
      --  Local Loopback Enable
      LLB            : SPI0_MR_LLB_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : Interfaces.SAM.UInt4 := 16#0#;
      --  Comparison Mode
      CMPMODE        : MR_CMPMODE_Field := Interfaces.SAM.SPI.FLAG_ONLY;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Peripheral Chip Select
      PCS            : SPI0_MR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : Interfaces.SAM.UInt6 := 16#0#;
      --  Delay Between Chip Selects
      DLYBCS         : SPI0_MR_DLYBCS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_MR_Register use record
      MSTR           at 0 range 0 .. 0;
      PS             at 0 range 1 .. 1;
      PCSDEC         at 0 range 2 .. 2;
      BRSRCCLK       at 0 range 3 .. 3;
      MODFDIS        at 0 range 4 .. 4;
      WDRBT          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LLB            at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CMPMODE        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PCS            at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      DLYBCS         at 0 range 24 .. 31;
   end record;

   subtype SPI0_RDR_RD_Field is Interfaces.SAM.UInt16;
   subtype SPI0_RDR_PCS_Field is Interfaces.SAM.UInt4;

   --  SPI Receive Data Register
   type SPI0_RDR_Register is record
      --  Read-only. Receive Data
      RD             : SPI0_RDR_RD_Field;
      --  Read-only. Peripheral Chip Select
      PCS            : SPI0_RDR_PCS_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_RDR_Register use record
      RD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SPI0_TDR_TD_Field is Interfaces.SAM.UInt16;
   subtype SPI0_TDR_PCS_Field is Interfaces.SAM.UInt4;
   subtype SPI0_TDR_LASTXFER_Field is Interfaces.SAM.Bit;

   --  SPI Transmit Data Register
   type SPI0_TDR_Register is record
      --  Write-only. Transmit Data
      TD             : SPI0_TDR_TD_Field := 16#0#;
      --  Write-only. Peripheral Chip Select
      PCS            : SPI0_TDR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : SPI0_TDR_LASTXFER_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_TDR_Register use record
      TD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SPI0_SR_RDRF_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_TDRE_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_MODF_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_OVRES_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_NSSR_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_UNDES_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_CMP_Field is Interfaces.SAM.Bit;
   subtype SPI0_SR_SPIENS_Field is Interfaces.SAM.Bit;

   --  SPI Status Register
   type SPI0_SR_Register is record
      --  Read-only. Receive Data Register Full (automatically set/cleared)
      RDRF           : SPI0_SR_RDRF_Field;
      --  Read-only. Transmit Data Register Empty (automatically set/cleared)
      TDRE           : SPI0_SR_TDRE_Field;
      --  Read-only. Mode Fault Error (cleared on read)
      MODF           : SPI0_SR_MODF_Field;
      --  Read-only. Overrun Error Status (cleared on read)
      OVRES          : SPI0_SR_OVRES_Field;
      --  Read-only. End of RX buffer (automatically set/cleared)
      ENDRX          : SPI0_SR_ENDRX_Field;
      --  Read-only. End of TX buffer (automatically set/cleared)
      ENDTX          : SPI0_SR_ENDTX_Field;
      --  Read-only. RX Buffer Full (automatically set/cleared)
      RXBUFF         : SPI0_SR_RXBUFF_Field;
      --  Read-only. TX Buffer Empty (automatically set/cleared)
      TXBUFE         : SPI0_SR_TXBUFE_Field;
      --  Read-only. NSS Rising (cleared on read)
      NSSR           : SPI0_SR_NSSR_Field;
      --  Read-only. Transmission Registers Empty (automatically set/cleared)
      TXEMPTY        : SPI0_SR_TXEMPTY_Field;
      --  Read-only. Underrun Error Status (slave mode only) (cleared on read)
      UNDES          : SPI0_SR_UNDES_Field;
      --  Read-only. Comparison Status (cleared on read)
      CMP            : SPI0_SR_CMP_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4;
      --  Read-only. SPI Enable Status (automatically set/cleared)
      SPIENS         : SPI0_SR_SPIENS_Field;
      --  unspecified
      Reserved_17_31 : Interfaces.SAM.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_SR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SPIENS         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype SPI0_IER_RDRF_Field is Interfaces.SAM.Bit;
   subtype SPI0_IER_TDRE_Field is Interfaces.SAM.Bit;
   subtype SPI0_IER_MODF_Field is Interfaces.SAM.Bit;
   subtype SPI0_IER_OVRES_Field is Interfaces.SAM.Bit;
   subtype SPI0_IER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SPI0_IER_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SPI0_IER_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype SPI0_IER_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SPI0_IER_NSSR_Field is Interfaces.SAM.Bit;
   subtype SPI0_IER_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SPI0_IER_UNDES_Field is Interfaces.SAM.Bit;
   subtype SPI0_IER_CMP_Field is Interfaces.SAM.Bit;

   --  SPI Interrupt Enable Register
   type SPI0_IER_Register is record
      --  Write-only. Receive Data Register Full Interrupt Enable
      RDRF           : SPI0_IER_RDRF_Field := 16#0#;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Enable
      TDRE           : SPI0_IER_TDRE_Field := 16#0#;
      --  Write-only. Mode Fault Error Interrupt Enable
      MODF           : SPI0_IER_MODF_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRES          : SPI0_IER_OVRES_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : SPI0_IER_ENDRX_Field := 16#0#;
      --  Write-only. End of Transmit Buffer Interrupt Enable
      ENDTX          : SPI0_IER_ENDTX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : SPI0_IER_RXBUFF_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE         : SPI0_IER_TXBUFE_Field := 16#0#;
      --  Write-only. NSS Rising Interrupt Enable
      NSSR           : SPI0_IER_NSSR_Field := 16#0#;
      --  Write-only. Transmission Registers Empty Enable
      TXEMPTY        : SPI0_IER_TXEMPTY_Field := 16#0#;
      --  Write-only. Underrun Error Interrupt Enable
      UNDES          : SPI0_IER_UNDES_Field := 16#0#;
      --  Write-only. Comparison Interrupt Enable
      CMP            : SPI0_IER_CMP_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IER_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SPI0_IDR_RDRF_Field is Interfaces.SAM.Bit;
   subtype SPI0_IDR_TDRE_Field is Interfaces.SAM.Bit;
   subtype SPI0_IDR_MODF_Field is Interfaces.SAM.Bit;
   subtype SPI0_IDR_OVRES_Field is Interfaces.SAM.Bit;
   subtype SPI0_IDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SPI0_IDR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SPI0_IDR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype SPI0_IDR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SPI0_IDR_NSSR_Field is Interfaces.SAM.Bit;
   subtype SPI0_IDR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SPI0_IDR_UNDES_Field is Interfaces.SAM.Bit;
   subtype SPI0_IDR_CMP_Field is Interfaces.SAM.Bit;

   --  SPI Interrupt Disable Register
   type SPI0_IDR_Register is record
      --  Write-only. Receive Data Register Full Interrupt Disable
      RDRF           : SPI0_IDR_RDRF_Field := 16#0#;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Disable
      TDRE           : SPI0_IDR_TDRE_Field := 16#0#;
      --  Write-only. Mode Fault Error Interrupt Disable
      MODF           : SPI0_IDR_MODF_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRES          : SPI0_IDR_OVRES_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : SPI0_IDR_ENDRX_Field := 16#0#;
      --  Write-only. End of Transmit Buffer Interrupt Disable
      ENDTX          : SPI0_IDR_ENDTX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : SPI0_IDR_RXBUFF_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE         : SPI0_IDR_TXBUFE_Field := 16#0#;
      --  Write-only. NSS Rising Interrupt Disable
      NSSR           : SPI0_IDR_NSSR_Field := 16#0#;
      --  Write-only. Transmission Registers Empty Disable
      TXEMPTY        : SPI0_IDR_TXEMPTY_Field := 16#0#;
      --  Write-only. Underrun Error Interrupt Disable
      UNDES          : SPI0_IDR_UNDES_Field := 16#0#;
      --  Write-only. Comparison Interrupt Disable
      CMP            : SPI0_IDR_CMP_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IDR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SPI0_IMR_RDRF_Field is Interfaces.SAM.Bit;
   subtype SPI0_IMR_TDRE_Field is Interfaces.SAM.Bit;
   subtype SPI0_IMR_MODF_Field is Interfaces.SAM.Bit;
   subtype SPI0_IMR_OVRES_Field is Interfaces.SAM.Bit;
   subtype SPI0_IMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SPI0_IMR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SPI0_IMR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype SPI0_IMR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SPI0_IMR_NSSR_Field is Interfaces.SAM.Bit;
   subtype SPI0_IMR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SPI0_IMR_UNDES_Field is Interfaces.SAM.Bit;
   subtype SPI0_IMR_CMP_Field is Interfaces.SAM.Bit;

   --  SPI Interrupt Mask Register
   type SPI0_IMR_Register is record
      --  Read-only. Receive Data Register Full Interrupt Mask
      RDRF           : SPI0_IMR_RDRF_Field;
      --  Read-only. SPI Transmit Data Register Empty Interrupt Mask
      TDRE           : SPI0_IMR_TDRE_Field;
      --  Read-only. Mode Fault Error Interrupt Mask
      MODF           : SPI0_IMR_MODF_Field;
      --  Read-only. Overrun Error Interrupt Mask
      OVRES          : SPI0_IMR_OVRES_Field;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : SPI0_IMR_ENDRX_Field;
      --  Read-only. End of Transmit Buffer Interrupt Mask
      ENDTX          : SPI0_IMR_ENDTX_Field;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : SPI0_IMR_RXBUFF_Field;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE         : SPI0_IMR_TXBUFE_Field;
      --  Read-only. NSS Rising Interrupt Mask
      NSSR           : SPI0_IMR_NSSR_Field;
      --  Read-only. Transmission Registers Empty Mask
      TXEMPTY        : SPI0_IMR_TXEMPTY_Field;
      --  Read-only. Underrun Error Interrupt Mask
      UNDES          : SPI0_IMR_UNDES_Field;
      --  Read-only. Comparison Interrupt Mask
      CMP            : SPI0_IMR_CMP_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IMR_Register use record
      RDRF           at 0 range 0 .. 0;
      TDRE           at 0 range 1 .. 1;
      MODF           at 0 range 2 .. 2;
      OVRES          at 0 range 3 .. 3;
      ENDRX          at 0 range 4 .. 4;
      ENDTX          at 0 range 5 .. 5;
      RXBUFF         at 0 range 6 .. 6;
      TXBUFE         at 0 range 7 .. 7;
      NSSR           at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNDES          at 0 range 10 .. 10;
      CMP            at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SPI0_CSR_CPOL_Field is Interfaces.SAM.Bit;
   subtype SPI0_CSR_NCPHA_Field is Interfaces.SAM.Bit;
   subtype SPI0_CSR_CSNAAT_Field is Interfaces.SAM.Bit;
   subtype SPI0_CSR_CSAAT_Field is Interfaces.SAM.Bit;

   --  Bits Per Transfer
   type CSR_BITS_Field is
     (--  8 bits for transfer
      Val_8_BIT,
      --  9 bits for transfer
      Val_9_BIT,
      --  10 bits for transfer
      Val_10_BIT,
      --  11 bits for transfer
      Val_11_BIT,
      --  12 bits for transfer
      Val_12_BIT,
      --  13 bits for transfer
      Val_13_BIT,
      --  14 bits for transfer
      Val_14_BIT,
      --  15 bits for transfer
      Val_15_BIT,
      --  16 bits for transfer
      Val_16_BIT)
     with Size => 4;
   for CSR_BITS_Field use
     (Val_8_BIT => 0,
      Val_9_BIT => 1,
      Val_10_BIT => 2,
      Val_11_BIT => 3,
      Val_12_BIT => 4,
      Val_13_BIT => 5,
      Val_14_BIT => 6,
      Val_15_BIT => 7,
      Val_16_BIT => 8);

   subtype SPI0_CSR_SCBR_Field is Interfaces.SAM.Byte;
   subtype SPI0_CSR_DLYBS_Field is Interfaces.SAM.Byte;
   subtype SPI0_CSR_DLYBCT_Field is Interfaces.SAM.Byte;

   --  SPI Chip Select Register
   type SPI0_CSR_Register is record
      --  Clock Polarity
      CPOL   : SPI0_CSR_CPOL_Field := 16#0#;
      --  Clock Phase
      NCPHA  : SPI0_CSR_NCPHA_Field := 16#0#;
      --  Chip Select Not Active After Transfer (Ignored if CSAAT = 1)
      CSNAAT : SPI0_CSR_CSNAAT_Field := 16#0#;
      --  Chip Select Active After Transfer
      CSAAT  : SPI0_CSR_CSAAT_Field := 16#0#;
      --  Bits Per Transfer
      BITS   : CSR_BITS_Field := Interfaces.SAM.SPI.Val_8_BIT;
      --  Serial Clock Bit Rate
      SCBR   : SPI0_CSR_SCBR_Field := 16#0#;
      --  Delay Before SPCK
      DLYBS  : SPI0_CSR_DLYBS_Field := 16#0#;
      --  Delay Between Consecutive Transfers
      DLYBCT : SPI0_CSR_DLYBCT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_CSR_Register use record
      CPOL   at 0 range 0 .. 0;
      NCPHA  at 0 range 1 .. 1;
      CSNAAT at 0 range 2 .. 2;
      CSAAT  at 0 range 3 .. 3;
      BITS   at 0 range 4 .. 7;
      SCBR   at 0 range 8 .. 15;
      DLYBS  at 0 range 16 .. 23;
      DLYBCT at 0 range 24 .. 31;
   end record;

   --  SPI Chip Select Register
   type SPI0_CSR_Registers is array (0 .. 1) of SPI0_CSR_Register;

   --  SPI0_CMPR_VAL array element
   subtype SPI0_CMPR_VAL_Element is Interfaces.SAM.UInt16;

   --  SPI0_CMPR_VAL array
   type SPI0_CMPR_VAL_Field_Array is array (1 .. 2) of SPI0_CMPR_VAL_Element
     with Component_Size => 16, Size => 32;

   --  SPI Comparison Register
   type SPI0_CMPR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VAL as a value
            Val : Interfaces.SAM.UInt32;
         when True =>
            --  VAL as an array
            Arr : SPI0_CMPR_VAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_CMPR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype SPI0_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protect Key
   type WPMR_WPKEY_Field is
     (--  Reset value for the field
      WPMR_WPKEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit.Always reads as 0
      PASSWD)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (WPMR_WPKEY_Field_Reset => 0,
      PASSWD => 5460041);

   --  SPI Write Protection Mode Register
   type SPI0_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : SPI0_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protect Key
      WPKEY        : WPMR_WPKEY_Field := WPMR_WPKEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype SPI0_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype SPI0_WPSR_WPVSRC_Field is Interfaces.SAM.Byte;

   --  SPI Write Protection Status Register
   type SPI0_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : SPI0_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : SPI0_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI0_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type SPI0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : SPI0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI0_TCR_TXCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Counter Register
   type SPI0_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : SPI0_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI0_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type SPI0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : SPI0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI0_TNCR_TXNCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Next Counter Register
   type SPI0_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : SPI0_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI0_PTCR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTCR_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTCR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTCR_TXTDIS_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTCR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTCR_RXCBDIS_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTCR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTCR_TXCBDIS_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTCR_ERRCLR_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register
   type SPI0_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : SPI0_PTCR_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : SPI0_PTCR_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : SPI0_PTCR_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : SPI0_PTCR_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : SPI0_PTCR_RXCBEN_Field := 16#0#;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : SPI0_PTCR_RXCBDIS_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : SPI0_PTCR_TXCBEN_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : SPI0_PTCR_TXCBDIS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : SPI0_PTCR_ERRCLR_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_PTCR_Register use record
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

   subtype SPI0_PTSR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTSR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTSR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTSR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype SPI0_PTSR_ERR_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register
   type SPI0_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : SPI0_PTSR_RXTEN_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : SPI0_PTSR_TXTEN_Field;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7;
      --  Read-only. Receiver Transfer Enable
      RXCBEN         : SPI0_PTSR_RXCBEN_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit;
      --  Read-only. Transmitter Transfer Enable
      TXCBEN         : SPI0_PTSR_TXCBEN_Field;
      --  unspecified
      Reserved_19_23 : Interfaces.SAM.UInt5;
      --  Read-only. Transfer Bus Error (clear on read)
      ERR            : SPI0_PTSR_ERR_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_PTSR_Register use record
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

   --  Serial Peripheral Interface 0
   type SPI_Peripheral is record
      --  SPI Control Register
      CR   : aliased SPI0_CR_Register;
      --  SPI Mode Register
      MR   : aliased SPI0_MR_Register;
      --  SPI Receive Data Register
      RDR  : aliased SPI0_RDR_Register;
      --  SPI Transmit Data Register
      TDR  : aliased SPI0_TDR_Register;
      --  SPI Status Register
      SR   : aliased SPI0_SR_Register;
      --  SPI Interrupt Enable Register
      IER  : aliased SPI0_IER_Register;
      --  SPI Interrupt Disable Register
      IDR  : aliased SPI0_IDR_Register;
      --  SPI Interrupt Mask Register
      IMR  : aliased SPI0_IMR_Register;
      --  SPI Chip Select Register
      CSR  : aliased SPI0_CSR_Registers;
      --  SPI Comparison Register
      CMPR : aliased SPI0_CMPR_Register;
      --  SPI Write Protection Mode Register
      WPMR : aliased SPI0_WPMR_Register;
      --  SPI Write Protection Status Register
      WPSR : aliased SPI0_WPSR_Register;
      --  Receive Pointer Register
      RPR  : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR  : aliased SPI0_RCR_Register;
      --  Transmit Pointer Register
      TPR  : aliased Interfaces.SAM.UInt32;
      --  Transmit Counter Register
      TCR  : aliased SPI0_TCR_Register;
      --  Receive Next Pointer Register
      RNPR : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased SPI0_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased Interfaces.SAM.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased SPI0_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased SPI0_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased SPI0_PTSR_Register;
   end record
     with Volatile;

   for SPI_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      RDR  at 16#8# range 0 .. 31;
      TDR  at 16#C# range 0 .. 31;
      SR   at 16#10# range 0 .. 31;
      IER  at 16#14# range 0 .. 31;
      IDR  at 16#18# range 0 .. 31;
      IMR  at 16#1C# range 0 .. 31;
      CSR  at 16#30# range 0 .. 63;
      CMPR at 16#48# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
      WPSR at 16#E8# range 0 .. 31;
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

   --  Serial Peripheral Interface 0
   SPI0_Periph : aliased SPI_Peripheral
     with Import, Address => SPI0_Base;

   --  Serial Peripheral Interface 1
   SPI1_Periph : aliased SPI_Peripheral
     with Import, Address => SPI1_Base;

   --  Serial Peripheral Interface 2
   SPI2_Periph : aliased SPI_Peripheral
     with Import, Address => SPI2_Base;

   --  Serial Peripheral Interface 3
   SPI3_Periph : aliased SPI_Peripheral
     with Import, Address => SPI3_Base;

   --  Serial Peripheral Interface 4
   SPI4_Periph : aliased SPI_Peripheral
     with Import, Address => SPI4_Base;

   --  Serial Peripheral Interface 5
   SPI5_Periph : aliased SPI_Peripheral
     with Import, Address => SPI5_Base;

   --  Serial Peripheral Interface 6
   SPI6_Periph : aliased SPI_Peripheral
     with Import, Address => SPI6_Base;

   --  Serial Peripheral Interface 7
   SPI7_Periph : aliased SPI_Peripheral
     with Import, Address => SPI7_Base;

end Interfaces.SAM.SPI;
