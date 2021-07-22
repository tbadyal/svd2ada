--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM4SD32C.svd


with System;

--  Synchronous Serial Controller
package Interfaces.SAM.SSC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SSC_CR_RXEN_Field is Interfaces.SAM.Bit;
   subtype SSC_CR_RXDIS_Field is Interfaces.SAM.Bit;
   subtype SSC_CR_TXEN_Field is Interfaces.SAM.Bit;
   subtype SSC_CR_TXDIS_Field is Interfaces.SAM.Bit;
   subtype SSC_CR_SWRST_Field is Interfaces.SAM.Bit;

   --  Control Register
   type SSC_CR_Register is record
      --  Write-only. Receive Enable
      RXEN           : SSC_CR_RXEN_Field := 16#0#;
      --  Write-only. Receive Disable
      RXDIS          : SSC_CR_RXDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmit Enable
      TXEN           : SSC_CR_TXEN_Field := 16#0#;
      --  Write-only. Transmit Disable
      TXDIS          : SSC_CR_TXDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. Software Reset
      SWRST          : SSC_CR_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_CR_Register use record
      RXEN           at 0 range 0 .. 0;
      RXDIS          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXEN           at 0 range 8 .. 8;
      TXDIS          at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      SWRST          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_CMR_DIV_Field is Interfaces.SAM.UInt12;

   --  Clock Mode Register
   type SSC_CMR_Register is record
      --  Clock Divider
      DIV            : SSC_CMR_DIV_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_CMR_Register use record
      DIV            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Receive Clock Selection
   type RCMR_CKS_Field is
     (--  Divided Clock
      MCK,
      --  TK Clock signal
      TK,
      --  RK pin
      RK)
     with Size => 2;
   for RCMR_CKS_Field use
     (MCK => 0,
      TK => 1,
      RK => 2);

   --  Receive Clock Output Mode Selection
   type RCMR_CKO_Field is
     (--  None, RK pin is an input
      NONE,
      --  Continuous Receive Clock, RK pin is an output
      CONTINUOUS,
      --  Receive Clock only during data transfers, RK pin is an output
      TRANSFER)
     with Size => 3;
   for RCMR_CKO_Field use
     (NONE => 0,
      CONTINUOUS => 1,
      TRANSFER => 2);

   subtype SSC_RCMR_CKI_Field is Interfaces.SAM.Bit;

   --  Receive Clock Gating Selection
   type RCMR_CKG_Field is
     (--  None
      CONTINUOUS,
      --  Receive Clock enabled only if RF Pin is Low
      EN_RF_LOW,
      --  Receive Clock enabled only if RF Pin is High
      EN_RF_HIGH)
     with Size => 2;
   for RCMR_CKG_Field use
     (CONTINUOUS => 0,
      EN_RF_LOW => 1,
      EN_RF_HIGH => 2);

   --  Receive Start Selection
   type RCMR_START_Field is
     (--  Continuous, as soon as the receiver is enabled, and immediately after the
--  end of transfer of the previous data.
      CONTINUOUS,
      --  Transmit start
      TRANSMIT,
      --  Detection of a low level on RF signal
      RF_LOW,
      --  Detection of a high level on RF signal
      RF_HIGH,
      --  Detection of a falling edge on RF signal
      RF_FALLING,
      --  Detection of a rising edge on RF signal
      RF_RISING,
      --  Detection of any level change on RF signal
      RF_LEVEL,
      --  Detection of any edge on RF signal
      RF_EDGE,
      --  Compare 0
      CMP_0)
     with Size => 4;
   for RCMR_START_Field use
     (CONTINUOUS => 0,
      TRANSMIT => 1,
      RF_LOW => 2,
      RF_HIGH => 3,
      RF_FALLING => 4,
      RF_RISING => 5,
      RF_LEVEL => 6,
      RF_EDGE => 7,
      CMP_0 => 8);

   subtype SSC_RCMR_STOP_Field is Interfaces.SAM.Bit;
   subtype SSC_RCMR_STTDLY_Field is Interfaces.SAM.Byte;
   subtype SSC_RCMR_PERIOD_Field is Interfaces.SAM.Byte;

   --  Receive Clock Mode Register
   type SSC_RCMR_Register is record
      --  Receive Clock Selection
      CKS            : RCMR_CKS_Field := Interfaces.SAM.SSC.MCK;
      --  Receive Clock Output Mode Selection
      CKO            : RCMR_CKO_Field := Interfaces.SAM.SSC.NONE;
      --  Receive Clock Inversion
      CKI            : SSC_RCMR_CKI_Field := 16#0#;
      --  Receive Clock Gating Selection
      CKG            : RCMR_CKG_Field := Interfaces.SAM.SSC.CONTINUOUS;
      --  Receive Start Selection
      START          : RCMR_START_Field := Interfaces.SAM.SSC.CONTINUOUS;
      --  Receive Stop Selection
      STOP           : SSC_RCMR_STOP_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.SAM.UInt3 := 16#0#;
      --  Receive Start Delay
      STTDLY         : SSC_RCMR_STTDLY_Field := 16#0#;
      --  Receive Period Divider Selection
      PERIOD         : SSC_RCMR_PERIOD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_RCMR_Register use record
      CKS            at 0 range 0 .. 1;
      CKO            at 0 range 2 .. 4;
      CKI            at 0 range 5 .. 5;
      CKG            at 0 range 6 .. 7;
      START          at 0 range 8 .. 11;
      STOP           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      STTDLY         at 0 range 16 .. 23;
      PERIOD         at 0 range 24 .. 31;
   end record;

   subtype SSC_RFMR_DATLEN_Field is Interfaces.SAM.UInt5;
   subtype SSC_RFMR_LOOP_Field is Interfaces.SAM.Bit;
   subtype SSC_RFMR_MSBF_Field is Interfaces.SAM.Bit;
   subtype SSC_RFMR_DATNB_Field is Interfaces.SAM.UInt4;
   subtype SSC_RFMR_FSLEN_Field is Interfaces.SAM.UInt4;

   --  Receive Frame Sync Output Selection
   type RFMR_FSOS_Field is
     (--  None, RF pin is an input
      NONE,
      --  Negative Pulse, RF pin is an output
      NEGATIVE,
      --  Positive Pulse, RF pin is an output
      POSITIVE,
      --  Driven Low during data transfer, RF pin is an output
      LOW,
      --  Driven High during data transfer, RF pin is an output
      HIGH,
      --  Toggling at each start of data transfer, RF pin is an output
      TOGGLING)
     with Size => 3;
   for RFMR_FSOS_Field use
     (NONE => 0,
      NEGATIVE => 1,
      POSITIVE => 2,
      LOW => 3,
      HIGH => 4,
      TOGGLING => 5);

   --  Frame Sync Edge Detection
   type RFMR_FSEDGE_Field is
     (--  Positive Edge Detection
      POSITIVE,
      --  Negative Edge Detection
      NEGATIVE)
     with Size => 1;
   for RFMR_FSEDGE_Field use
     (POSITIVE => 0,
      NEGATIVE => 1);

   subtype SSC_RFMR_FSLEN_EXT_Field is Interfaces.SAM.UInt4;

   --  Receive Frame Mode Register
   type SSC_RFMR_Register is record
      --  Data Length
      DATLEN         : SSC_RFMR_DATLEN_Field := 16#0#;
      --  Loop Mode
      LOOP_k         : SSC_RFMR_LOOP_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.SAM.Bit := 16#0#;
      --  Most Significant Bit First
      MSBF           : SSC_RFMR_MSBF_Field := 16#0#;
      --  Data Number per Frame
      DATNB          : SSC_RFMR_DATNB_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4 := 16#0#;
      --  Receive Frame Sync Length
      FSLEN          : SSC_RFMR_FSLEN_Field := 16#0#;
      --  Receive Frame Sync Output Selection
      FSOS           : RFMR_FSOS_Field := Interfaces.SAM.SSC.NONE;
      --  unspecified
      Reserved_23_23 : Interfaces.SAM.Bit := 16#0#;
      --  Frame Sync Edge Detection
      FSEDGE         : RFMR_FSEDGE_Field := Interfaces.SAM.SSC.POSITIVE;
      --  unspecified
      Reserved_25_27 : Interfaces.SAM.UInt3 := 16#0#;
      --  FSLEN Field Extension
      FSLEN_EXT      : SSC_RFMR_FSLEN_EXT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_RFMR_Register use record
      DATLEN         at 0 range 0 .. 4;
      LOOP_k         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      MSBF           at 0 range 7 .. 7;
      DATNB          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FSLEN          at 0 range 16 .. 19;
      FSOS           at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      FSEDGE         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      FSLEN_EXT      at 0 range 28 .. 31;
   end record;

   --  Transmit Clock Selection
   type TCMR_CKS_Field is
     (--  Divided Clock
      MCK,
      --  RK Clock signal
      RK,
      --  TK pin
      TK)
     with Size => 2;
   for TCMR_CKS_Field use
     (MCK => 0,
      RK => 1,
      TK => 2);

   --  Transmit Clock Output Mode Selection
   type TCMR_CKO_Field is
     (--  None, TK pin is an input
      NONE,
      --  Continuous Transmit Clock, TK pin is an output
      CONTINUOUS,
      --  Transmit Clock only during data transfers, TK pin is an output
      TRANSFER)
     with Size => 3;
   for TCMR_CKO_Field use
     (NONE => 0,
      CONTINUOUS => 1,
      TRANSFER => 2);

   subtype SSC_TCMR_CKI_Field is Interfaces.SAM.Bit;

   --  Transmit Clock Gating Selection
   type TCMR_CKG_Field is
     (--  None
      CONTINUOUS,
      --  Transmit Clock enabled only if TF pin is Low
      EN_TF_LOW,
      --  Transmit Clock enabled only if TF pin is High
      EN_TF_HIGH)
     with Size => 2;
   for TCMR_CKG_Field use
     (CONTINUOUS => 0,
      EN_TF_LOW => 1,
      EN_TF_HIGH => 2);

   --  Transmit Start Selection
   type TCMR_START_Field is
     (--  Continuous, as soon as a word is written in the SSC_THR Register (if
--  Transmit is enabled), and immediately after the end of transfer of the
--  previous data.
      CONTINUOUS,
      --  Receive start
      RECEIVE,
      --  Detection of a low level on TF signal
      TF_LOW,
      --  Detection of a high level on TF signal
      TF_HIGH,
      --  Detection of a falling edge on TF signal
      TF_FALLING,
      --  Detection of a rising edge on TF signal
      TF_RISING,
      --  Detection of any level change on TF signal
      TF_LEVEL,
      --  Detection of any edge on TF signal
      TF_EDGE)
     with Size => 4;
   for TCMR_START_Field use
     (CONTINUOUS => 0,
      RECEIVE => 1,
      TF_LOW => 2,
      TF_HIGH => 3,
      TF_FALLING => 4,
      TF_RISING => 5,
      TF_LEVEL => 6,
      TF_EDGE => 7);

   subtype SSC_TCMR_STTDLY_Field is Interfaces.SAM.Byte;
   subtype SSC_TCMR_PERIOD_Field is Interfaces.SAM.Byte;

   --  Transmit Clock Mode Register
   type SSC_TCMR_Register is record
      --  Transmit Clock Selection
      CKS            : TCMR_CKS_Field := Interfaces.SAM.SSC.MCK;
      --  Transmit Clock Output Mode Selection
      CKO            : TCMR_CKO_Field := Interfaces.SAM.SSC.NONE;
      --  Transmit Clock Inversion
      CKI            : SSC_TCMR_CKI_Field := 16#0#;
      --  Transmit Clock Gating Selection
      CKG            : TCMR_CKG_Field := Interfaces.SAM.SSC.CONTINUOUS;
      --  Transmit Start Selection
      START          : TCMR_START_Field := Interfaces.SAM.SSC.CONTINUOUS;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4 := 16#0#;
      --  Transmit Start Delay
      STTDLY         : SSC_TCMR_STTDLY_Field := 16#0#;
      --  Transmit Period Divider Selection
      PERIOD         : SSC_TCMR_PERIOD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_TCMR_Register use record
      CKS            at 0 range 0 .. 1;
      CKO            at 0 range 2 .. 4;
      CKI            at 0 range 5 .. 5;
      CKG            at 0 range 6 .. 7;
      START          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      STTDLY         at 0 range 16 .. 23;
      PERIOD         at 0 range 24 .. 31;
   end record;

   subtype SSC_TFMR_DATLEN_Field is Interfaces.SAM.UInt5;
   subtype SSC_TFMR_DATDEF_Field is Interfaces.SAM.Bit;
   subtype SSC_TFMR_MSBF_Field is Interfaces.SAM.Bit;
   subtype SSC_TFMR_DATNB_Field is Interfaces.SAM.UInt4;
   subtype SSC_TFMR_FSLEN_Field is Interfaces.SAM.UInt4;

   --  Transmit Frame Sync Output Selection
   type TFMR_FSOS_Field is
     (--  None, TF pin is an input
      NONE,
      --  Negative Pulse, TF pin is an output
      NEGATIVE,
      --  Positive Pulse,TF pin is an output
      POSITIVE,
      --  TF pin Driven Low during data transfer
      LOW,
      --  TF pin Driven High during data transfer
      HIGH,
      --  TF pin Toggles at each start of data transfer
      TOGGLING)
     with Size => 3;
   for TFMR_FSOS_Field use
     (NONE => 0,
      NEGATIVE => 1,
      POSITIVE => 2,
      LOW => 3,
      HIGH => 4,
      TOGGLING => 5);

   subtype SSC_TFMR_FSDEN_Field is Interfaces.SAM.Bit;

   --  Frame Sync Edge Detection
   type TFMR_FSEDGE_Field is
     (--  Positive Edge Detection
      POSITIVE,
      --  Negative Edge Detection
      NEGATIVE)
     with Size => 1;
   for TFMR_FSEDGE_Field use
     (POSITIVE => 0,
      NEGATIVE => 1);

   subtype SSC_TFMR_FSLEN_EXT_Field is Interfaces.SAM.UInt4;

   --  Transmit Frame Mode Register
   type SSC_TFMR_Register is record
      --  Data Length
      DATLEN         : SSC_TFMR_DATLEN_Field := 16#0#;
      --  Data Default Value
      DATDEF         : SSC_TFMR_DATDEF_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.SAM.Bit := 16#0#;
      --  Most Significant Bit First
      MSBF           : SSC_TFMR_MSBF_Field := 16#0#;
      --  Data Number per frame
      DATNB          : SSC_TFMR_DATNB_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4 := 16#0#;
      --  Transmit Frame Sync Length
      FSLEN          : SSC_TFMR_FSLEN_Field := 16#0#;
      --  Transmit Frame Sync Output Selection
      FSOS           : TFMR_FSOS_Field := Interfaces.SAM.SSC.NONE;
      --  Frame Sync Data Enable
      FSDEN          : SSC_TFMR_FSDEN_Field := 16#0#;
      --  Frame Sync Edge Detection
      FSEDGE         : TFMR_FSEDGE_Field := Interfaces.SAM.SSC.POSITIVE;
      --  unspecified
      Reserved_25_27 : Interfaces.SAM.UInt3 := 16#0#;
      --  FSLEN Field Extension
      FSLEN_EXT      : SSC_TFMR_FSLEN_EXT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_TFMR_Register use record
      DATLEN         at 0 range 0 .. 4;
      DATDEF         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      MSBF           at 0 range 7 .. 7;
      DATNB          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FSLEN          at 0 range 16 .. 19;
      FSOS           at 0 range 20 .. 22;
      FSDEN          at 0 range 23 .. 23;
      FSEDGE         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      FSLEN_EXT      at 0 range 28 .. 31;
   end record;

   subtype SSC_RSHR_RSDAT_Field is Interfaces.SAM.UInt16;

   --  Receive Sync. Holding Register
   type SSC_RSHR_Register is record
      --  Read-only. Receive Synchronization Data
      RSDAT          : SSC_RSHR_RSDAT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_RSHR_Register use record
      RSDAT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_TSHR_TSDAT_Field is Interfaces.SAM.UInt16;

   --  Transmit Sync. Holding Register
   type SSC_TSHR_Register is record
      --  Transmit Synchronization Data
      TSDAT          : SSC_TSHR_TSDAT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_TSHR_Register use record
      TSDAT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_RC0R_CP0_Field is Interfaces.SAM.UInt16;

   --  Receive Compare 0 Register
   type SSC_RC0R_Register is record
      --  Receive Compare Data 0
      CP0            : SSC_RC0R_CP0_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_RC0R_Register use record
      CP0            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_RC1R_CP1_Field is Interfaces.SAM.UInt16;

   --  Receive Compare 1 Register
   type SSC_RC1R_Register is record
      --  Receive Compare Data 1
      CP1            : SSC_RC1R_CP1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_RC1R_Register use record
      CP1            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_SR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype SSC_SR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SSC_SR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SSC_SR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SSC_SR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype SSC_SR_OVRUN_Field is Interfaces.SAM.Bit;
   subtype SSC_SR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SSC_SR_RXBUFF_Field is Interfaces.SAM.Bit;
   --  SSC_SR_CP array element
   subtype SSC_SR_CP_Element is Interfaces.SAM.Bit;

   --  SSC_SR_CP array
   type SSC_SR_CP_Field_Array is array (0 .. 1) of SSC_SR_CP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_SR_CP
   type SSC_SR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_SR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_SR_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype SSC_SR_TXSYN_Field is Interfaces.SAM.Bit;
   subtype SSC_SR_RXSYN_Field is Interfaces.SAM.Bit;
   subtype SSC_SR_TXEN_Field is Interfaces.SAM.Bit;
   subtype SSC_SR_RXEN_Field is Interfaces.SAM.Bit;

   --  Status Register
   type SSC_SR_Register is record
      --  Read-only. Transmit Ready
      TXRDY          : SSC_SR_TXRDY_Field;
      --  Read-only. Transmit Empty
      TXEMPTY        : SSC_SR_TXEMPTY_Field;
      --  Read-only. End of Transmission
      ENDTX          : SSC_SR_ENDTX_Field;
      --  Read-only. Transmit Buffer Empty
      TXBUFE         : SSC_SR_TXBUFE_Field;
      --  Read-only. Receive Ready
      RXRDY          : SSC_SR_RXRDY_Field;
      --  Read-only. Receive Overrun
      OVRUN          : SSC_SR_OVRUN_Field;
      --  Read-only. End of Reception
      ENDRX          : SSC_SR_ENDRX_Field;
      --  Read-only. Receive Buffer Full
      RXBUFF         : SSC_SR_RXBUFF_Field;
      --  Read-only. Compare 0
      CP             : SSC_SR_CP_Field;
      --  Read-only. Transmit Sync
      TXSYN          : SSC_SR_TXSYN_Field;
      --  Read-only. Receive Sync
      RXSYN          : SSC_SR_RXSYN_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.SAM.UInt4;
      --  Read-only. Transmit Enable
      TXEN           : SSC_SR_TXEN_Field;
      --  Read-only. Receive Enable
      RXEN           : SSC_SR_RXEN_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.SAM.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_SR_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      ENDTX          at 0 range 2 .. 2;
      TXBUFE         at 0 range 3 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      ENDRX          at 0 range 6 .. 6;
      RXBUFF         at 0 range 7 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TXEN           at 0 range 16 .. 16;
      RXEN           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype SSC_IER_TXRDY_Field is Interfaces.SAM.Bit;
   subtype SSC_IER_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SSC_IER_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SSC_IER_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SSC_IER_RXRDY_Field is Interfaces.SAM.Bit;
   subtype SSC_IER_OVRUN_Field is Interfaces.SAM.Bit;
   subtype SSC_IER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SSC_IER_RXBUFF_Field is Interfaces.SAM.Bit;
   --  SSC_IER_CP array element
   subtype SSC_IER_CP_Element is Interfaces.SAM.Bit;

   --  SSC_IER_CP array
   type SSC_IER_CP_Field_Array is array (0 .. 1) of SSC_IER_CP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_IER_CP
   type SSC_IER_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_IER_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_IER_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype SSC_IER_TXSYN_Field is Interfaces.SAM.Bit;
   subtype SSC_IER_RXSYN_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type SSC_IER_Register is record
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY          : SSC_IER_TXRDY_Field := 16#0#;
      --  Write-only. Transmit Empty Interrupt Enable
      TXEMPTY        : SSC_IER_TXEMPTY_Field := 16#0#;
      --  Write-only. End of Transmission Interrupt Enable
      ENDTX          : SSC_IER_ENDTX_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Enable
      TXBUFE         : SSC_IER_TXBUFE_Field := 16#0#;
      --  Write-only. Receive Ready Interrupt Enable
      RXRDY          : SSC_IER_RXRDY_Field := 16#0#;
      --  Write-only. Receive Overrun Interrupt Enable
      OVRUN          : SSC_IER_OVRUN_Field := 16#0#;
      --  Write-only. End of Reception Interrupt Enable
      ENDRX          : SSC_IER_ENDRX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Enable
      RXBUFF         : SSC_IER_RXBUFF_Field := 16#0#;
      --  Write-only. Compare 0 Interrupt Enable
      CP             : SSC_IER_CP_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Tx Sync Interrupt Enable
      TXSYN          : SSC_IER_TXSYN_Field := 16#0#;
      --  Write-only. Rx Sync Interrupt Enable
      RXSYN          : SSC_IER_RXSYN_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_IER_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      ENDTX          at 0 range 2 .. 2;
      TXBUFE         at 0 range 3 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      ENDRX          at 0 range 6 .. 6;
      RXBUFF         at 0 range 7 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SSC_IDR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype SSC_IDR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SSC_IDR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SSC_IDR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SSC_IDR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype SSC_IDR_OVRUN_Field is Interfaces.SAM.Bit;
   subtype SSC_IDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SSC_IDR_RXBUFF_Field is Interfaces.SAM.Bit;
   --  SSC_IDR_CP array element
   subtype SSC_IDR_CP_Element is Interfaces.SAM.Bit;

   --  SSC_IDR_CP array
   type SSC_IDR_CP_Field_Array is array (0 .. 1) of SSC_IDR_CP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_IDR_CP
   type SSC_IDR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_IDR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_IDR_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype SSC_IDR_TXSYN_Field is Interfaces.SAM.Bit;
   subtype SSC_IDR_RXSYN_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type SSC_IDR_Register is record
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY          : SSC_IDR_TXRDY_Field := 16#0#;
      --  Write-only. Transmit Empty Interrupt Disable
      TXEMPTY        : SSC_IDR_TXEMPTY_Field := 16#0#;
      --  Write-only. End of Transmission Interrupt Disable
      ENDTX          : SSC_IDR_ENDTX_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Disable
      TXBUFE         : SSC_IDR_TXBUFE_Field := 16#0#;
      --  Write-only. Receive Ready Interrupt Disable
      RXRDY          : SSC_IDR_RXRDY_Field := 16#0#;
      --  Write-only. Receive Overrun Interrupt Disable
      OVRUN          : SSC_IDR_OVRUN_Field := 16#0#;
      --  Write-only. End of Reception Interrupt Disable
      ENDRX          : SSC_IDR_ENDRX_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Disable
      RXBUFF         : SSC_IDR_RXBUFF_Field := 16#0#;
      --  Write-only. Compare 0 Interrupt Disable
      CP             : SSC_IDR_CP_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Tx Sync Interrupt Enable
      TXSYN          : SSC_IDR_TXSYN_Field := 16#0#;
      --  Write-only. Rx Sync Interrupt Enable
      RXSYN          : SSC_IDR_RXSYN_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_IDR_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      ENDTX          at 0 range 2 .. 2;
      TXBUFE         at 0 range 3 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      ENDRX          at 0 range 6 .. 6;
      RXBUFF         at 0 range 7 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SSC_IMR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype SSC_IMR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype SSC_IMR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype SSC_IMR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype SSC_IMR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype SSC_IMR_OVRUN_Field is Interfaces.SAM.Bit;
   subtype SSC_IMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype SSC_IMR_RXBUFF_Field is Interfaces.SAM.Bit;
   --  SSC_IMR_CP array element
   subtype SSC_IMR_CP_Element is Interfaces.SAM.Bit;

   --  SSC_IMR_CP array
   type SSC_IMR_CP_Field_Array is array (0 .. 1) of SSC_IMR_CP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_IMR_CP
   type SSC_IMR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_IMR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_IMR_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype SSC_IMR_TXSYN_Field is Interfaces.SAM.Bit;
   subtype SSC_IMR_RXSYN_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type SSC_IMR_Register is record
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY          : SSC_IMR_TXRDY_Field;
      --  Read-only. Transmit Empty Interrupt Mask
      TXEMPTY        : SSC_IMR_TXEMPTY_Field;
      --  Read-only. End of Transmission Interrupt Mask
      ENDTX          : SSC_IMR_ENDTX_Field;
      --  Read-only. Transmit Buffer Empty Interrupt Mask
      TXBUFE         : SSC_IMR_TXBUFE_Field;
      --  Read-only. Receive Ready Interrupt Mask
      RXRDY          : SSC_IMR_RXRDY_Field;
      --  Read-only. Receive Overrun Interrupt Mask
      OVRUN          : SSC_IMR_OVRUN_Field;
      --  Read-only. End of Reception Interrupt Mask
      ENDRX          : SSC_IMR_ENDRX_Field;
      --  Read-only. Receive Buffer Full Interrupt Mask
      RXBUFF         : SSC_IMR_RXBUFF_Field;
      --  Read-only. Compare 0 Interrupt Mask
      CP             : SSC_IMR_CP_Field;
      --  Read-only. Tx Sync Interrupt Mask
      TXSYN          : SSC_IMR_TXSYN_Field;
      --  Read-only. Rx Sync Interrupt Mask
      RXSYN          : SSC_IMR_RXSYN_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.SAM.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_IMR_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      ENDTX          at 0 range 2 .. 2;
      TXBUFE         at 0 range 3 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      ENDRX          at 0 range 6 .. 6;
      RXBUFF         at 0 range 7 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SSC_WPMR_WPEN_Field is Interfaces.SAM.Bit;
   subtype SSC_WPMR_WPKEY_Field is Interfaces.SAM.UInt24;

   --  Write Protect Mode Register
   type SSC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : SSC_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : SSC_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype SSC_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type SSC_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : SSC_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_TCR_TXCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Counter Register
   type SSC_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : SSC_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type SSC_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : SSC_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_TNCR_TXNCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Next Counter Register
   type SSC_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : SSC_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_PTCR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype SSC_PTCR_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype SSC_PTCR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype SSC_PTCR_TXTDIS_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register
   type SSC_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : SSC_PTCR_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : SSC_PTCR_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : SSC_PTCR_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : SSC_PTCR_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SSC_PTSR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype SSC_PTSR_TXTEN_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register
   type SSC_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN         : SSC_PTSR_RXTEN_Field;
      --  unspecified
      Reserved_1_7  : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN         : SSC_PTSR_TXTEN_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSC_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Synchronous Serial Controller
   type SSC_Peripheral is record
      --  Control Register
      CR   : aliased SSC_CR_Register;
      --  Clock Mode Register
      CMR  : aliased SSC_CMR_Register;
      --  Receive Clock Mode Register
      RCMR : aliased SSC_RCMR_Register;
      --  Receive Frame Mode Register
      RFMR : aliased SSC_RFMR_Register;
      --  Transmit Clock Mode Register
      TCMR : aliased SSC_TCMR_Register;
      --  Transmit Frame Mode Register
      TFMR : aliased SSC_TFMR_Register;
      --  Receive Holding Register
      RHR  : aliased Interfaces.SAM.UInt32;
      --  Transmit Holding Register
      THR  : aliased Interfaces.SAM.UInt32;
      --  Receive Sync. Holding Register
      RSHR : aliased SSC_RSHR_Register;
      --  Transmit Sync. Holding Register
      TSHR : aliased SSC_TSHR_Register;
      --  Receive Compare 0 Register
      RC0R : aliased SSC_RC0R_Register;
      --  Receive Compare 1 Register
      RC1R : aliased SSC_RC1R_Register;
      --  Status Register
      SR   : aliased SSC_SR_Register;
      --  Interrupt Enable Register
      IER  : aliased SSC_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased SSC_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased SSC_IMR_Register;
      --  Write Protect Mode Register
      WPMR : aliased SSC_WPMR_Register;
      --  Write Protect Status Register
      WPSR : aliased Interfaces.SAM.UInt32;
      --  Receive Pointer Register
      RPR  : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR  : aliased SSC_RCR_Register;
      --  Transmit Pointer Register
      TPR  : aliased Interfaces.SAM.UInt32;
      --  Transmit Counter Register
      TCR  : aliased SSC_TCR_Register;
      --  Receive Next Pointer Register
      RNPR : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased SSC_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased Interfaces.SAM.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased SSC_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased SSC_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased SSC_PTSR_Register;
   end record
     with Volatile;

   for SSC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      CMR  at 16#4# range 0 .. 31;
      RCMR at 16#10# range 0 .. 31;
      RFMR at 16#14# range 0 .. 31;
      TCMR at 16#18# range 0 .. 31;
      TFMR at 16#1C# range 0 .. 31;
      RHR  at 16#20# range 0 .. 31;
      THR  at 16#24# range 0 .. 31;
      RSHR at 16#30# range 0 .. 31;
      TSHR at 16#34# range 0 .. 31;
      RC0R at 16#38# range 0 .. 31;
      RC1R at 16#3C# range 0 .. 31;
      SR   at 16#40# range 0 .. 31;
      IER  at 16#44# range 0 .. 31;
      IDR  at 16#48# range 0 .. 31;
      IMR  at 16#4C# range 0 .. 31;
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

   --  Synchronous Serial Controller
   SSC_Periph : aliased SSC_Peripheral
     with Import, Address => SSC_Base;

end Interfaces.SAM.SSC;