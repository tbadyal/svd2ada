--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM4SD32C.svd


with System;

--  Serial Peripheral Interface
package Interfaces.SAM.SPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SPI_CR_SPIEN_Field is Interfaces.SAM.Bit;
   subtype SPI_CR_SPIDIS_Field is Interfaces.SAM.Bit;
   subtype SPI_CR_SWRST_Field is Interfaces.SAM.Bit;
   subtype SPI_CR_LASTXFER_Field is Interfaces.SAM.Bit;

   --  Control Register
   type SPI_CR_Register is record
      --  Write-only. SPI Enable
      SPIEN          : SPI_CR_SPIEN_Field := 16#0#;
      --  Write-only. SPI Disable
      SPIDIS         : SPI_CR_SPIDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_6   : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. SPI Software Reset
      SWRST          : SPI_CR_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_8_23  : Interfaces.SAM.UInt16 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : SPI_CR_LASTXFER_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_CR_Register use record
      SPIEN          at 0 range 0 .. 0;
      SPIDIS         at 0 range 1 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      SWRST          at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SPI_MR_MSTR_Field is Interfaces.SAM.Bit;
   subtype SPI_MR_PS_Field is Interfaces.SAM.Bit;
   subtype SPI_MR_PCSDEC_Field is Interfaces.SAM.Bit;
   subtype SPI_MR_MODFDIS_Field is Interfaces.SAM.Bit;
   subtype SPI_MR_WDRBT_Field is Interfaces.SAM.Bit;
   subtype SPI_MR_LLB_Field is Interfaces.SAM.Bit;
   subtype SPI_MR_PCS_Field is Interfaces.SAM.UInt4;
   subtype SPI_MR_DLYBCS_Field is Interfaces.SAM.Byte;

   --  Mode Register
   type SPI_MR_Register is record
      --  Master/Slave Mode
      MSTR           : SPI_MR_MSTR_Field := 16#0#;
      --  Peripheral Select
      PS             : SPI_MR_PS_Field := 16#0#;
      --  Chip Select Decode
      PCSDEC         : SPI_MR_PCSDEC_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.SAM.Bit := 16#0#;
      --  Mode Fault Detection
      MODFDIS        : SPI_MR_MODFDIS_Field := 16#0#;
      --  Wait Data Read Before Transfer
      WDRBT          : SPI_MR_WDRBT_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.SAM.Bit := 16#0#;
      --  Local Loopback Enable
      LLB            : SPI_MR_LLB_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.SAM.Byte := 16#0#;
      --  Peripheral Chip Select
      PCS            : SPI_MR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Delay Between Chip Selects
      DLYBCS         : SPI_MR_DLYBCS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MR_Register use record
      MSTR           at 0 range 0 .. 0;
      PS             at 0 range 1 .. 1;
      PCSDEC         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      MODFDIS        at 0 range 4 .. 4;
      WDRBT          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LLB            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      DLYBCS         at 0 range 24 .. 31;
   end record;

   subtype SPI_RDR_RD_Field is Interfaces.SAM.UInt16;
   subtype SPI_RDR_PCS_Field is Interfaces.SAM.UInt4;

   --  Receive Data Register
   type SPI_RDR_Register is record
      --  Read-only. Receive Data
      RD             : SPI_RDR_RD_Field;
      --  Read-only. Peripheral Chip Select
      PCS            : SPI_RDR_PCS_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_RDR_Register use record
      RD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SPI_TDR_TD_Field is Interfaces.SAM.UInt16;
   subtype SPI_TDR_PCS_Field is Interfaces.SAM.UInt4;
   subtype SPI_TDR_LASTXFER_Field is Interfaces.SAM.Bit;

   --  Transmit Data Register
   type SPI_TDR_Register is record
      --  Write-only. Transmit Data
      TD             : SPI_TDR_TD_Field := 16#0#;
      --  Write-only. Peripheral Chip Select
      PCS            : SPI_TDR_PCS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Last Transfer
      LASTXFER       : SPI_TDR_LASTXFER_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_TDR_Register use record
      TD             at 0 range 0 .. 15;
      PCS            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      LASTXFER       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SPI_SR_RDRF_Field is Interfaces.SAM.Bit;
   subtype SPI_SR_TDRE_Field is Interfaces.SAM.Bit;
   subtype SPI_SR_MODF_Field is Interfaces.SAM.Bit;
   subtype SPI_SR_OVRES_Field is Interfaces.SAM.Bit;
   subtype SPI_SR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SPI_SR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SPI_SR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype SPI_SR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SPI_SR_NSSR_Field is Interfaces.SAM.Bit;
   subtype SPI_SR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SPI_SR_UNDES_Field is Interfaces.SAM.Bit;
   subtype SPI_SR_SPIENS_Field is Interfaces.SAM.Bit;

   --  Status Register
   type SPI_SR_Register is record
      --  Read-only. Receive Data Register Full
      RDRF           : SPI_SR_RDRF_Field;
      --  Read-only. Transmit Data Register Empty
      TDRE           : SPI_SR_TDRE_Field;
      --  Read-only. Mode Fault Error
      MODF           : SPI_SR_MODF_Field;
      --  Read-only. Overrun Error Status
      OVRES          : SPI_SR_OVRES_Field;
      --  Read-only. End of RX buffer
      ENDRX          : SPI_SR_ENDRX_Field;
      --  Read-only. End of TX buffer
      ENDTX          : SPI_SR_ENDTX_Field;
      --  Read-only. RX Buffer Full
      RXBUFF         : SPI_SR_RXBUFF_Field;
      --  Read-only. TX Buffer Empty
      TXBUFE         : SPI_SR_TXBUFE_Field;
      --  Read-only. NSS Rising
      NSSR           : SPI_SR_NSSR_Field;
      --  Read-only. Transmission Registers Empty
      TXEMPTY        : SPI_SR_TXEMPTY_Field;
      --  Read-only. Underrun Error Status (Slave Mode Only)
      UNDES          : SPI_SR_UNDES_Field;
      --  unspecified
      Reserved_11_15 : Interfaces.SAM.UInt5;
      --  Read-only. SPI Enable Status
      SPIENS         : SPI_SR_SPIENS_Field;
      --  unspecified
      Reserved_17_31 : Interfaces.SAM.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_SR_Register use record
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
      Reserved_11_15 at 0 range 11 .. 15;
      SPIENS         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype SPI_IER_RDRF_Field is Interfaces.SAM.Bit;
   subtype SPI_IER_TDRE_Field is Interfaces.SAM.Bit;
   subtype SPI_IER_MODF_Field is Interfaces.SAM.Bit;
   subtype SPI_IER_OVRES_Field is Interfaces.SAM.Bit;
   subtype SPI_IER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SPI_IER_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SPI_IER_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype SPI_IER_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SPI_IER_NSSR_Field is Interfaces.SAM.Bit;
   subtype SPI_IER_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SPI_IER_UNDES_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type SPI_IER_Register is record
      --  Write-only. Receive Data Register Full Interrupt Enable
      RDRF           : SPI_IER_RDRF_Field := 16#0#;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Enable
      TDRE           : SPI_IER_TDRE_Field := 16#0#;
      --  Write-only. Mode Fault Error Interrupt Enable
      MODF           : SPI_IER_MODF_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRES          : SPI_IER_OVRES_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Enable
      ENDRX          : SPI_IER_ENDRX_Field := 16#0#;
      --  Write-only. End of Transmit Buffer Interrupt Enable
      ENDTX          : SPI_IER_ENDTX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : SPI_IER_RXBUFF_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE         : SPI_IER_TXBUFE_Field := 16#0#;
      --  Write-only. NSS Rising Interrupt Enable
      NSSR           : SPI_IER_NSSR_Field := 16#0#;
      --  Write-only. Transmission Registers Empty Enable
      TXEMPTY        : SPI_IER_TXEMPTY_Field := 16#0#;
      --  Write-only. Underrun Error Interrupt Enable
      UNDES          : SPI_IER_UNDES_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_IER_Register use record
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
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SPI_IDR_RDRF_Field is Interfaces.SAM.Bit;
   subtype SPI_IDR_TDRE_Field is Interfaces.SAM.Bit;
   subtype SPI_IDR_MODF_Field is Interfaces.SAM.Bit;
   subtype SPI_IDR_OVRES_Field is Interfaces.SAM.Bit;
   subtype SPI_IDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SPI_IDR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SPI_IDR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype SPI_IDR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SPI_IDR_NSSR_Field is Interfaces.SAM.Bit;
   subtype SPI_IDR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SPI_IDR_UNDES_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type SPI_IDR_Register is record
      --  Write-only. Receive Data Register Full Interrupt Disable
      RDRF           : SPI_IDR_RDRF_Field := 16#0#;
      --  Write-only. SPI Transmit Data Register Empty Interrupt Disable
      TDRE           : SPI_IDR_TDRE_Field := 16#0#;
      --  Write-only. Mode Fault Error Interrupt Disable
      MODF           : SPI_IDR_MODF_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRES          : SPI_IDR_OVRES_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Disable
      ENDRX          : SPI_IDR_ENDRX_Field := 16#0#;
      --  Write-only. End of Transmit Buffer Interrupt Disable
      ENDTX          : SPI_IDR_ENDTX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : SPI_IDR_RXBUFF_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE         : SPI_IDR_TXBUFE_Field := 16#0#;
      --  Write-only. NSS Rising Interrupt Disable
      NSSR           : SPI_IDR_NSSR_Field := 16#0#;
      --  Write-only. Transmission Registers Empty Disable
      TXEMPTY        : SPI_IDR_TXEMPTY_Field := 16#0#;
      --  Write-only. Underrun Error Interrupt Disable
      UNDES          : SPI_IDR_UNDES_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_IDR_Register use record
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
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SPI_IMR_RDRF_Field is Interfaces.SAM.Bit;
   subtype SPI_IMR_TDRE_Field is Interfaces.SAM.Bit;
   subtype SPI_IMR_MODF_Field is Interfaces.SAM.Bit;
   subtype SPI_IMR_OVRES_Field is Interfaces.SAM.Bit;
   subtype SPI_IMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SPI_IMR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SPI_IMR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype SPI_IMR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SPI_IMR_NSSR_Field is Interfaces.SAM.Bit;
   subtype SPI_IMR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SPI_IMR_UNDES_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type SPI_IMR_Register is record
      --  Read-only. Receive Data Register Full Interrupt Mask
      RDRF           : SPI_IMR_RDRF_Field;
      --  Read-only. SPI Transmit Data Register Empty Interrupt Mask
      TDRE           : SPI_IMR_TDRE_Field;
      --  Read-only. Mode Fault Error Interrupt Mask
      MODF           : SPI_IMR_MODF_Field;
      --  Read-only. Overrun Error Interrupt Mask
      OVRES          : SPI_IMR_OVRES_Field;
      --  Read-only. End of Receive Buffer Interrupt Mask
      ENDRX          : SPI_IMR_ENDRX_Field;
      --  Read-only. End of Transmit Buffer Interrupt Mask
      ENDTX          : SPI_IMR_ENDTX_Field;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : SPI_IMR_RXBUFF_Field;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE         : SPI_IMR_TXBUFE_Field;
      --  Read-only. NSS Rising Interrupt Mask
      NSSR           : SPI_IMR_NSSR_Field;
      --  Read-only. Transmission Registers Empty Mask
      TXEMPTY        : SPI_IMR_TXEMPTY_Field;
      --  Read-only. Underrun Error Interrupt Mask
      UNDES          : SPI_IMR_UNDES_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.SAM.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_IMR_Register use record
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
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SPI_CSR_CPOL_Field is Interfaces.SAM.Bit;
   subtype SPI_CSR_NCPHA_Field is Interfaces.SAM.Bit;
   subtype SPI_CSR_CSNAAT_Field is Interfaces.SAM.Bit;
   subtype SPI_CSR_CSAAT_Field is Interfaces.SAM.Bit;

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

   subtype SPI_CSR_SCBR_Field is Interfaces.SAM.Byte;
   subtype SPI_CSR_DLYBS_Field is Interfaces.SAM.Byte;
   subtype SPI_CSR_DLYBCT_Field is Interfaces.SAM.Byte;

   --  Chip Select Register
   type SPI_CSR_Register is record
      --  Clock Polarity
      CPOL   : SPI_CSR_CPOL_Field := 16#0#;
      --  Clock Phase
      NCPHA  : SPI_CSR_NCPHA_Field := 16#0#;
      --  Chip Select Not Active After Transfer (Ignored if CSAAT = 1)
      CSNAAT : SPI_CSR_CSNAAT_Field := 16#0#;
      --  Chip Select Active After Transfer
      CSAAT  : SPI_CSR_CSAAT_Field := 16#0#;
      --  Bits Per Transfer
      BITS   : CSR_BITS_Field := Interfaces.SAM.SPI.Val_8_BIT;
      --  Serial Clock Baud Rate
      SCBR   : SPI_CSR_SCBR_Field := 16#0#;
      --  Delay Before SPCK
      DLYBS  : SPI_CSR_DLYBS_Field := 16#0#;
      --  Delay Between Consecutive Transfers
      DLYBCT : SPI_CSR_DLYBCT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_CSR_Register use record
      CPOL   at 0 range 0 .. 0;
      NCPHA  at 0 range 1 .. 1;
      CSNAAT at 0 range 2 .. 2;
      CSAAT  at 0 range 3 .. 3;
      BITS   at 0 range 4 .. 7;
      SCBR   at 0 range 8 .. 15;
      DLYBS  at 0 range 16 .. 23;
      DLYBCT at 0 range 24 .. 31;
   end record;

   --  Chip Select Register
   type SPI_CSR_Registers is array (0 .. 3) of SPI_CSR_Register;

   subtype SPI_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype SPI_WPMR_WPKEY_Field is Interfaces.SAM.UInt24;

   --  Write Protection Control Register
   type SPI_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : SPI_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key Password
      WPKEY        : SPI_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype SPI_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype SPI_WPSR_WPVSRC_Field is Interfaces.SAM.Byte;

   --  Write Protection Status Register
   type SPI_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : SPI_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : SPI_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type SPI_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : SPI_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI_TCR_TXCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Counter Register
   type SPI_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : SPI_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type SPI_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : SPI_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI_TNCR_TXNCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Next Counter Register
   type SPI_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : SPI_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI_PTCR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype SPI_PTCR_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype SPI_PTCR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype SPI_PTCR_TXTDIS_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register
   type SPI_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : SPI_PTCR_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : SPI_PTCR_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : SPI_PTCR_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : SPI_PTCR_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SPI_PTSR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype SPI_PTSR_TXTEN_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register
   type SPI_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN         : SPI_PTSR_RXTEN_Field;
      --  unspecified
      Reserved_1_7  : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN         : SPI_PTSR_TXTEN_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface
   type SPI_Peripheral is record
      --  Control Register
      CR   : aliased SPI_CR_Register;
      --  Mode Register
      MR   : aliased SPI_MR_Register;
      --  Receive Data Register
      RDR  : aliased SPI_RDR_Register;
      --  Transmit Data Register
      TDR  : aliased SPI_TDR_Register;
      --  Status Register
      SR   : aliased SPI_SR_Register;
      --  Interrupt Enable Register
      IER  : aliased SPI_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased SPI_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased SPI_IMR_Register;
      --  Chip Select Register
      CSR  : aliased SPI_CSR_Registers;
      --  Write Protection Control Register
      WPMR : aliased SPI_WPMR_Register;
      --  Write Protection Status Register
      WPSR : aliased SPI_WPSR_Register;
      --  Receive Pointer Register
      RPR  : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR  : aliased SPI_RCR_Register;
      --  Transmit Pointer Register
      TPR  : aliased Interfaces.SAM.UInt32;
      --  Transmit Counter Register
      TCR  : aliased SPI_TCR_Register;
      --  Receive Next Pointer Register
      RNPR : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased SPI_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased Interfaces.SAM.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased SPI_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased SPI_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased SPI_PTSR_Register;
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
      CSR  at 16#30# range 0 .. 127;
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

   --  Serial Peripheral Interface
   SPI_Periph : aliased SPI_Peripheral
     with Import, Address => SPI_Base;

end Interfaces.SAM.SPI;
