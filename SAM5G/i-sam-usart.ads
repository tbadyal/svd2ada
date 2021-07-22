--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

package Interfaces.SAM.USART is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype USART0_CR_RSTRX_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_RSTTX_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_RXEN_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_RXDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_TXEN_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_TXDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_RSTSTA_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_STTBRK_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_STPBRK_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_STTTO_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_SENDA_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_RSTIT_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_RSTNACK_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_RETTO_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_RTSEN_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_RTSDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_LINABT_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_LINWKUP_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_REQCLR_Field is Interfaces.SAM.Bit;

   --  USART Control Register
   type USART0_CR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : USART0_CR_RSTRX_Field := 16#0#;
      --  Write-only. Reset Transmitter
      RSTTX          : USART0_CR_RSTTX_Field := 16#0#;
      --  Write-only. Receiver Enable
      RXEN           : USART0_CR_RXEN_Field := 16#0#;
      --  Write-only. Receiver Disable
      RXDIS          : USART0_CR_RXDIS_Field := 16#0#;
      --  Write-only. Transmitter Enable
      TXEN           : USART0_CR_TXEN_Field := 16#0#;
      --  Write-only. Transmitter Disable
      TXDIS          : USART0_CR_TXDIS_Field := 16#0#;
      --  Write-only. Reset Status Bits
      RSTSTA         : USART0_CR_RSTSTA_Field := 16#0#;
      --  Write-only. Start Break
      STTBRK         : USART0_CR_STTBRK_Field := 16#0#;
      --  Write-only. Stop Break
      STPBRK         : USART0_CR_STPBRK_Field := 16#0#;
      --  Write-only. Start Time-out
      STTTO          : USART0_CR_STTTO_Field := 16#0#;
      --  Write-only. Send Address
      SENDA          : USART0_CR_SENDA_Field := 16#0#;
      --  Write-only. Reset Iterations
      RSTIT          : USART0_CR_RSTIT_Field := 16#0#;
      --  Write-only. Reset Non Acknowledge
      RSTNACK        : USART0_CR_RSTNACK_Field := 16#0#;
      --  Write-only. Rearm Time-out
      RETTO          : USART0_CR_RETTO_Field := 16#0#;
      --  unspecified
      Reserved_16_17 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Request to Send Enable
      RTSEN          : USART0_CR_RTSEN_Field := 16#0#;
      --  Write-only. Request to Send Disable
      RTSDIS         : USART0_CR_RTSDIS_Field := 16#0#;
      --  Write-only. Abort LIN Transmission
      LINABT         : USART0_CR_LINABT_Field := 16#0#;
      --  Write-only. Send LIN Wakeup Signal
      LINWKUP        : USART0_CR_LINWKUP_Field := 16#0#;
      --  unspecified
      Reserved_22_27 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Request to Clear the Comparison Trigger
      REQCLR         : USART0_CR_REQCLR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      STTBRK         at 0 range 9 .. 9;
      STPBRK         at 0 range 10 .. 10;
      STTTO          at 0 range 11 .. 11;
      SENDA          at 0 range 12 .. 12;
      RSTIT          at 0 range 13 .. 13;
      RSTNACK        at 0 range 14 .. 14;
      RETTO          at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      RTSEN          at 0 range 18 .. 18;
      RTSDIS         at 0 range 19 .. 19;
      LINABT         at 0 range 20 .. 20;
      LINWKUP        at 0 range 21 .. 21;
      Reserved_22_27 at 0 range 22 .. 27;
      REQCLR         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype USART0_CR_SPI_MODE_RSTRX_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_SPI_MODE_RSTTX_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_SPI_MODE_RXEN_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_SPI_MODE_RXDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_SPI_MODE_TXEN_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_SPI_MODE_TXDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_SPI_MODE_RSTSTA_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_SPI_MODE_FCS_Field is Interfaces.SAM.Bit;
   subtype USART0_CR_SPI_MODE_RCS_Field is Interfaces.SAM.Bit;

   --  USART Control Register
   type USART0_CR_SPI_MODE_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : USART0_CR_SPI_MODE_RSTRX_Field := 16#0#;
      --  Write-only. Reset Transmitter
      RSTTX          : USART0_CR_SPI_MODE_RSTTX_Field := 16#0#;
      --  Write-only. Receiver Enable
      RXEN           : USART0_CR_SPI_MODE_RXEN_Field := 16#0#;
      --  Write-only. Receiver Disable
      RXDIS          : USART0_CR_SPI_MODE_RXDIS_Field := 16#0#;
      --  Write-only. Transmitter Enable
      TXEN           : USART0_CR_SPI_MODE_TXEN_Field := 16#0#;
      --  Write-only. Transmitter Disable
      TXDIS          : USART0_CR_SPI_MODE_TXDIS_Field := 16#0#;
      --  Write-only. Reset Status Bits
      RSTSTA         : USART0_CR_SPI_MODE_RSTSTA_Field := 16#0#;
      --  unspecified
      Reserved_9_17  : Interfaces.SAM.UInt9 := 16#0#;
      --  Write-only. Force SPI Chip Select
      FCS            : USART0_CR_SPI_MODE_FCS_Field := 16#0#;
      --  Write-only. Release SPI Chip Select
      RCS            : USART0_CR_SPI_MODE_RCS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CR_SPI_MODE_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      Reserved_9_17  at 0 range 9 .. 17;
      FCS            at 0 range 18 .. 18;
      RCS            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  USART Mode of Operation
   type MR_USART_MODE_Field is
     (--  Normal mode
      NORMAL,
      --  RS485 mode
      RS485,
      --  Hardware Handshaking
      HW_HANDSHAKING,
      --  IS07816 Protocol: T = 0
      IS07816_T_0,
      --  IS07816 Protocol: T = 1
      IS07816_T_1,
      --  LIN master mode
      LIN_MASTER,
      --  LIN Slave mode
      LIN_SLAVE,
      --  SPI master mode
      SPI_MASTER,
      --  SPI Slave mode
      SPI_SLAVE)
     with Size => 4;
   for MR_USART_MODE_Field use
     (NORMAL => 0,
      RS485 => 1,
      HW_HANDSHAKING => 2,
      IS07816_T_0 => 4,
      IS07816_T_1 => 6,
      LIN_MASTER => 10,
      LIN_SLAVE => 11,
      SPI_MASTER => 14,
      SPI_SLAVE => 15);

   --  Clock Selection
   type MR_USCLKS_Field is
     (--  Peripheral clock is selected
      MCK,
      --  Peripheral clock Divided (DIV=8) is selected
      DIV,
      --  PMC programmable clock (PCK) is selected.If the SCK pin is driven (CLKO=1),
--  the CD field must be greater than 1.
      PMC_PCK,
      --  External pin (SCK) is selected
      SCK)
     with Size => 2;
   for MR_USCLKS_Field use
     (MCK => 0,
      DIV => 1,
      PMC_PCK => 2,
      SCK => 3);

   --  Character Length
   type MR_CHRL_Field is
     (--  Character length is 5 bits
      Val_5_BIT,
      --  Character length is 6 bits
      Val_6_BIT,
      --  Character length is 7 bits
      Val_7_BIT,
      --  Character length is 8 bits
      Val_8_BIT)
     with Size => 2;
   for MR_CHRL_Field use
     (Val_5_BIT => 0,
      Val_6_BIT => 1,
      Val_7_BIT => 2,
      Val_8_BIT => 3);

   subtype USART0_MR_SYNC_Field is Interfaces.SAM.Bit;

   --  Parity Type
   type MR_PAR_Field is
     (--  Even parity
      EVEN,
      --  Odd parity
      ODD,
      --  Parity forced to 0 (Space)
      SPACE,
      --  Parity forced to 1 (Mark)
      MARK,
      --  No parity
      NO,
      --  Multidrop mode
      MULTIDROP)
     with Size => 3;
   for MR_PAR_Field use
     (EVEN => 0,
      ODD => 1,
      SPACE => 2,
      MARK => 3,
      NO => 4,
      MULTIDROP => 6);

   --  Number of Stop Bits
   type MR_NBSTOP_Field is
     (--  1 stop bit
      Val_1_BIT,
      --  1.5 stop bits (SYNC = 0) or reserved (SYNC = 1)
      Val_1_5_BIT,
      --  2 stop bits
      Val_2_BIT)
     with Size => 2;
   for MR_NBSTOP_Field use
     (Val_1_BIT => 0,
      Val_1_5_BIT => 1,
      Val_2_BIT => 2);

   --  Channel Mode
   type MR_CHMODE_Field is
     (--  Normal mode
      NORMAL,
      --  Automatic Echo. Receiver input is connected to the TXD pin.
      AUTOMATIC,
      --  Local Loopback. Transmitter output is connected to the Receiver Input.
      LOCAL_LOOPBACK,
      --  Remote Loopback. RXD pin is internally connected to the TXD pin.
      REMOTE_LOOPBACK)
     with Size => 2;
   for MR_CHMODE_Field use
     (NORMAL => 0,
      AUTOMATIC => 1,
      LOCAL_LOOPBACK => 2,
      REMOTE_LOOPBACK => 3);

   subtype USART0_MR_MSBF_Field is Interfaces.SAM.Bit;
   subtype USART0_MR_MODE9_Field is Interfaces.SAM.Bit;
   subtype USART0_MR_CLKO_Field is Interfaces.SAM.Bit;
   subtype USART0_MR_OVER_Field is Interfaces.SAM.Bit;
   subtype USART0_MR_INACK_Field is Interfaces.SAM.Bit;
   subtype USART0_MR_DSNACK_Field is Interfaces.SAM.Bit;
   subtype USART0_MR_INVDATA_Field is Interfaces.SAM.Bit;
   subtype USART0_MR_MAX_ITERATION_Field is Interfaces.SAM.UInt3;
   subtype USART0_MR_FILTER_Field is Interfaces.SAM.Bit;

   --  USART Mode Register
   type USART0_MR_Register is record
      --  USART Mode of Operation
      USART_MODE     : MR_USART_MODE_Field := Interfaces.SAM.USART.NORMAL;
      --  Clock Selection
      USCLKS         : MR_USCLKS_Field := Interfaces.SAM.USART.MCK;
      --  Character Length
      CHRL           : MR_CHRL_Field := Interfaces.SAM.USART.Val_5_BIT;
      --  Synchronous Mode Select
      SYNC           : USART0_MR_SYNC_Field := 16#0#;
      --  Parity Type
      PAR            : MR_PAR_Field := Interfaces.SAM.USART.EVEN;
      --  Number of Stop Bits
      NBSTOP         : MR_NBSTOP_Field := Interfaces.SAM.USART.Val_1_BIT;
      --  Channel Mode
      CHMODE         : MR_CHMODE_Field := Interfaces.SAM.USART.NORMAL;
      --  Bit Order
      MSBF           : USART0_MR_MSBF_Field := 16#0#;
      --  9-bit Character Length
      MODE9          : USART0_MR_MODE9_Field := 16#0#;
      --  Clock Output Select
      CLKO           : USART0_MR_CLKO_Field := 16#0#;
      --  Oversampling Mode
      OVER           : USART0_MR_OVER_Field := 16#0#;
      --  Inhibit Non Acknowledge
      INACK          : USART0_MR_INACK_Field := 16#0#;
      --  Disable Successive NACK
      DSNACK         : USART0_MR_DSNACK_Field := 16#0#;
      --  unspecified
      Reserved_22_22 : Interfaces.SAM.Bit := 16#0#;
      --  Inverted Data
      INVDATA        : USART0_MR_INVDATA_Field := 16#0#;
      --  Maximum Number of Automatic Iteration
      MAX_ITERATION  : USART0_MR_MAX_ITERATION_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.SAM.Bit := 16#0#;
      --  Receive Line Filter
      FILTER         : USART0_MR_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.SAM.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_MR_Register use record
      USART_MODE     at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      SYNC           at 0 range 8 .. 8;
      PAR            at 0 range 9 .. 11;
      NBSTOP         at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      MSBF           at 0 range 16 .. 16;
      MODE9          at 0 range 17 .. 17;
      CLKO           at 0 range 18 .. 18;
      OVER           at 0 range 19 .. 19;
      INACK          at 0 range 20 .. 20;
      DSNACK         at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      INVDATA        at 0 range 23 .. 23;
      MAX_ITERATION  at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FILTER         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  USART Mode of Operation
   type MR_SPI_MODE_USART_MODE_Field is
     (--  Reset value for the field
      MR_SPI_MODE_USART_MODE_Field_Reset,
      --  SPI master mode
      SPI_MASTER,
      --  SPI Slave mode
      SPI_SLAVE)
     with Size => 4;
   for MR_SPI_MODE_USART_MODE_Field use
     (MR_SPI_MODE_USART_MODE_Field_Reset => 0,
      SPI_MASTER => 14,
      SPI_SLAVE => 15);

   subtype USART0_MR_SPI_MODE_USCLKS_Field is Interfaces.SAM.UInt2;

   --  Character Length
   type MR_SPI_MODE_CHRL_Field is
     (--  Reset value for the field
      MR_SPI_MODE_CHRL_Field_Reset,
      --  Character length is 8 bits
      Val_8_BIT)
     with Size => 2;
   for MR_SPI_MODE_CHRL_Field use
     (MR_SPI_MODE_CHRL_Field_Reset => 0,
      Val_8_BIT => 3);

   subtype USART0_MR_SPI_MODE_CPHA_Field is Interfaces.SAM.Bit;
   subtype USART0_MR_SPI_MODE_CPOL_Field is Interfaces.SAM.Bit;
   subtype USART0_MR_SPI_MODE_WRDBT_Field is Interfaces.SAM.Bit;

   --  USART Mode Register
   type USART0_MR_SPI_MODE_Register is record
      --  USART Mode of Operation
      USART_MODE     : MR_SPI_MODE_USART_MODE_Field :=
                        MR_SPI_MODE_USART_MODE_Field_Reset;
      --  Clock Selection
      USCLKS         : USART0_MR_SPI_MODE_USCLKS_Field := 16#0#;
      --  Character Length
      CHRL           : MR_SPI_MODE_CHRL_Field := MR_SPI_MODE_CHRL_Field_Reset;
      --  SPI Clock Phase
      CPHA           : USART0_MR_SPI_MODE_CPHA_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7 := 16#0#;
      --  SPI Clock Polarity
      CPOL           : USART0_MR_SPI_MODE_CPOL_Field := 16#0#;
      --  unspecified
      Reserved_17_19 : Interfaces.SAM.UInt3 := 16#0#;
      --  Wait Read Data Before Transfer
      WRDBT          : USART0_MR_SPI_MODE_WRDBT_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.SAM.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_MR_SPI_MODE_Register use record
      USART_MODE     at 0 range 0 .. 3;
      USCLKS         at 0 range 4 .. 5;
      CHRL           at 0 range 6 .. 7;
      CPHA           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CPOL           at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      WRDBT          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype USART0_IER_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_RXBRK_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_FRAME_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_PARE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_ITER_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_NACK_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_CTSIC_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_CMP_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Enable Register
   type USART0_IER_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : USART0_IER_RXRDY_Field := 16#0#;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : USART0_IER_TXRDY_Field := 16#0#;
      --  Write-only. Receiver Break Interrupt Enable
      RXBRK          : USART0_IER_RXBRK_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Enable (available in all
      --  USART modes of operation)
      ENDRX          : USART0_IER_ENDRX_Field := 16#0#;
      --  Write-only. End of Transmit Buffer Interrupt Enable (available in all
      --  USART modes of operation)
      ENDTX          : USART0_IER_ENDTX_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : USART0_IER_OVRE_Field := 16#0#;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : USART0_IER_FRAME_Field := 16#0#;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : USART0_IER_PARE_Field := 16#0#;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : USART0_IER_TIMEOUT_Field := 16#0#;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : USART0_IER_TXEMPTY_Field := 16#0#;
      --  Write-only. Max number of Repetitions Reached Interrupt Enable
      ITER           : USART0_IER_ITER_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Enable (available in all
      --  USART modes of operation)
      TXBUFE         : USART0_IER_TXBUFE_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Enable (available in all
      --  USART modes of operation)
      RXBUFF         : USART0_IER_RXBUFF_Field := 16#0#;
      --  Write-only. Non Acknowledge Interrupt Enable
      NACK           : USART0_IER_NACK_Field := 16#0#;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Enable
      CTSIC          : USART0_IER_CTSIC_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Comparison Interrupt Enable
      CMP            : USART0_IER_CMP_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype USART0_IER_SPI_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_SPI_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_SPI_MODE_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_SPI_MODE_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_SPI_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_SPI_MODE_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_SPI_MODE_UNRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_SPI_MODE_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_SPI_MODE_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_SPI_MODE_CMP_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Enable Register
   type USART0_IER_SPI_MODE_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : USART0_IER_SPI_MODE_RXRDY_Field := 16#0#;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : USART0_IER_SPI_MODE_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only.
      ENDRX          : USART0_IER_SPI_MODE_ENDRX_Field := 16#0#;
      --  Write-only.
      ENDTX          : USART0_IER_SPI_MODE_ENDTX_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : USART0_IER_SPI_MODE_OVRE_Field := 16#0#;
      --  unspecified
      Reserved_6_8   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : USART0_IER_SPI_MODE_TXEMPTY_Field := 16#0#;
      --  Write-only. SPI Underrun Error Interrupt Enable
      UNRE           : USART0_IER_SPI_MODE_UNRE_Field := 16#0#;
      --  Write-only.
      TXBUFE         : USART0_IER_SPI_MODE_TXBUFE_Field := 16#0#;
      --  Write-only.
      RXBUFF         : USART0_IER_SPI_MODE_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_13_21 : Interfaces.SAM.UInt9 := 16#0#;
      --  Write-only. Comparison Interrupt Enable
      CMP            : USART0_IER_SPI_MODE_CMP_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_21 at 0 range 13 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype USART0_IER_LIN_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_FRAME_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_PARE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_LINBK_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_LINID_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_LINTC_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_LINBE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_LINISFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_LINIPE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_LINCE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_LINSNRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_LINSTE_Field is Interfaces.SAM.Bit;
   subtype USART0_IER_LIN_MODE_LINHTE_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Enable Register
   type USART0_IER_LIN_MODE_Register is record
      --  Write-only. RXRDY Interrupt Enable
      RXRDY          : USART0_IER_LIN_MODE_RXRDY_Field := 16#0#;
      --  Write-only. TXRDY Interrupt Enable
      TXRDY          : USART0_IER_LIN_MODE_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only.
      ENDRX          : USART0_IER_LIN_MODE_ENDRX_Field := 16#0#;
      --  Write-only.
      ENDTX          : USART0_IER_LIN_MODE_ENDTX_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : USART0_IER_LIN_MODE_OVRE_Field := 16#0#;
      --  Write-only. Framing Error Interrupt Enable
      FRAME          : USART0_IER_LIN_MODE_FRAME_Field := 16#0#;
      --  Write-only. Parity Error Interrupt Enable
      PARE           : USART0_IER_LIN_MODE_PARE_Field := 16#0#;
      --  Write-only. Time-out Interrupt Enable
      TIMEOUT        : USART0_IER_LIN_MODE_TIMEOUT_Field := 16#0#;
      --  Write-only. TXEMPTY Interrupt Enable
      TXEMPTY        : USART0_IER_LIN_MODE_TXEMPTY_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only.
      TXBUFE         : USART0_IER_LIN_MODE_TXBUFE_Field := 16#0#;
      --  Write-only.
      RXBUFF         : USART0_IER_LIN_MODE_RXBUFF_Field := 16#0#;
      --  Write-only. LIN Break Sent or LIN Break Received Interrupt Enable
      LINBK          : USART0_IER_LIN_MODE_LINBK_Field := 16#0#;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Enable
      LINID          : USART0_IER_LIN_MODE_LINID_Field := 16#0#;
      --  Write-only. LIN Transfer Completed Interrupt Enable
      LINTC          : USART0_IER_LIN_MODE_LINTC_Field := 16#0#;
      --  unspecified
      Reserved_16_24 : Interfaces.SAM.UInt9 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Enable
      LINBE          : USART0_IER_LIN_MODE_LINBE_Field := 16#0#;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Enable
      LINISFE        : USART0_IER_LIN_MODE_LINISFE_Field := 16#0#;
      --  Write-only. LIN Identifier Parity Interrupt Enable
      LINIPE         : USART0_IER_LIN_MODE_LINIPE_Field := 16#0#;
      --  Write-only. LIN Checksum Error Interrupt Enable
      LINCE          : USART0_IER_LIN_MODE_LINCE_Field := 16#0#;
      --  Write-only. LIN Slave Not Responding Error Interrupt Enable
      LINSNRE        : USART0_IER_LIN_MODE_LINSNRE_Field := 16#0#;
      --  Write-only. LIN Synch Tolerance Error Interrupt Enable
      LINSTE         : USART0_IER_LIN_MODE_LINSTE_Field := 16#0#;
      --  Write-only. LIN Header Timeout Error Interrupt Enable
      LINHTE         : USART0_IER_LIN_MODE_LINHTE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IER_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   subtype USART0_IDR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_RXBRK_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_FRAME_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_PARE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_ITER_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_NACK_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_CTSIC_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_CMP_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Disable Register
   type USART0_IDR_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : USART0_IDR_RXRDY_Field := 16#0#;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : USART0_IDR_TXRDY_Field := 16#0#;
      --  Write-only. Receiver Break Interrupt Disable
      RXBRK          : USART0_IDR_RXBRK_Field := 16#0#;
      --  Write-only. End of Receive Buffer Interrupt Enable (available in all
      --  USART modes of operation)
      ENDRX          : USART0_IDR_ENDRX_Field := 16#0#;
      --  Write-only. End of Transmit Buffer Interrupt Disable (available in
      --  all USART modes of operation)
      ENDTX          : USART0_IDR_ENDTX_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Enable
      OVRE           : USART0_IDR_OVRE_Field := 16#0#;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : USART0_IDR_FRAME_Field := 16#0#;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : USART0_IDR_PARE_Field := 16#0#;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : USART0_IDR_TIMEOUT_Field := 16#0#;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : USART0_IDR_TXEMPTY_Field := 16#0#;
      --  Write-only. Max Number of Repetitions Reached Interrupt Disable
      ITER           : USART0_IDR_ITER_Field := 16#0#;
      --  Write-only. Transmit Buffer Empty Interrupt Enable (available in all
      --  USART modes of operation)
      TXBUFE         : USART0_IDR_TXBUFE_Field := 16#0#;
      --  Write-only. Receive Buffer Full Interrupt Enable (available in all
      --  USART modes of operation)
      RXBUFF         : USART0_IDR_RXBUFF_Field := 16#0#;
      --  Write-only. Non Acknowledge Interrupt Disable
      NACK           : USART0_IDR_NACK_Field := 16#0#;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5 := 16#0#;
      --  Write-only. Clear to Send Input Change Interrupt Disable
      CTSIC          : USART0_IDR_CTSIC_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Comparison Interrupt Disable
      CMP            : USART0_IDR_CMP_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype USART0_IDR_SPI_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_SPI_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_SPI_MODE_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_SPI_MODE_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_SPI_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_SPI_MODE_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_SPI_MODE_UNRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_SPI_MODE_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_SPI_MODE_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_SPI_MODE_CMP_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Disable Register
   type USART0_IDR_SPI_MODE_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : USART0_IDR_SPI_MODE_RXRDY_Field := 16#0#;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : USART0_IDR_SPI_MODE_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only.
      ENDRX          : USART0_IDR_SPI_MODE_ENDRX_Field := 16#0#;
      --  Write-only.
      ENDTX          : USART0_IDR_SPI_MODE_ENDTX_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : USART0_IDR_SPI_MODE_OVRE_Field := 16#0#;
      --  unspecified
      Reserved_6_8   : Interfaces.SAM.UInt3 := 16#0#;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : USART0_IDR_SPI_MODE_TXEMPTY_Field := 16#0#;
      --  Write-only. SPI Underrun Error Interrupt Disable
      UNRE           : USART0_IDR_SPI_MODE_UNRE_Field := 16#0#;
      --  Write-only.
      TXBUFE         : USART0_IDR_SPI_MODE_TXBUFE_Field := 16#0#;
      --  Write-only.
      RXBUFF         : USART0_IDR_SPI_MODE_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_13_21 : Interfaces.SAM.UInt9 := 16#0#;
      --  Write-only. Comparison Interrupt Disable
      CMP            : USART0_IDR_SPI_MODE_CMP_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_21 at 0 range 13 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype USART0_IDR_LIN_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_FRAME_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_PARE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_LINBK_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_LINID_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_LINTC_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_LINBE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_LINISFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_LINIPE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_LINCE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_LINSNRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_LINSTE_Field is Interfaces.SAM.Bit;
   subtype USART0_IDR_LIN_MODE_LINHTE_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Disable Register
   type USART0_IDR_LIN_MODE_Register is record
      --  Write-only. RXRDY Interrupt Disable
      RXRDY          : USART0_IDR_LIN_MODE_RXRDY_Field := 16#0#;
      --  Write-only. TXRDY Interrupt Disable
      TXRDY          : USART0_IDR_LIN_MODE_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only.
      ENDRX          : USART0_IDR_LIN_MODE_ENDRX_Field := 16#0#;
      --  Write-only.
      ENDTX          : USART0_IDR_LIN_MODE_ENDTX_Field := 16#0#;
      --  Write-only. Overrun Error Interrupt Disable
      OVRE           : USART0_IDR_LIN_MODE_OVRE_Field := 16#0#;
      --  Write-only. Framing Error Interrupt Disable
      FRAME          : USART0_IDR_LIN_MODE_FRAME_Field := 16#0#;
      --  Write-only. Parity Error Interrupt Disable
      PARE           : USART0_IDR_LIN_MODE_PARE_Field := 16#0#;
      --  Write-only. Time-out Interrupt Disable
      TIMEOUT        : USART0_IDR_LIN_MODE_TIMEOUT_Field := 16#0#;
      --  Write-only. TXEMPTY Interrupt Disable
      TXEMPTY        : USART0_IDR_LIN_MODE_TXEMPTY_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only.
      TXBUFE         : USART0_IDR_LIN_MODE_TXBUFE_Field := 16#0#;
      --  Write-only.
      RXBUFF         : USART0_IDR_LIN_MODE_RXBUFF_Field := 16#0#;
      --  Write-only. LIN Break Sent or LIN Break Received Interrupt Disable
      LINBK          : USART0_IDR_LIN_MODE_LINBK_Field := 16#0#;
      --  Write-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Disable
      LINID          : USART0_IDR_LIN_MODE_LINID_Field := 16#0#;
      --  Write-only. LIN Transfer Completed Interrupt Disable
      LINTC          : USART0_IDR_LIN_MODE_LINTC_Field := 16#0#;
      --  unspecified
      Reserved_16_24 : Interfaces.SAM.UInt9 := 16#0#;
      --  Write-only. LIN Bus Error Interrupt Disable
      LINBE          : USART0_IDR_LIN_MODE_LINBE_Field := 16#0#;
      --  Write-only. LIN Inconsistent Synch Field Error Interrupt Disable
      LINISFE        : USART0_IDR_LIN_MODE_LINISFE_Field := 16#0#;
      --  Write-only. LIN Identifier Parity Interrupt Disable
      LINIPE         : USART0_IDR_LIN_MODE_LINIPE_Field := 16#0#;
      --  Write-only. LIN Checksum Error Interrupt Disable
      LINCE          : USART0_IDR_LIN_MODE_LINCE_Field := 16#0#;
      --  Write-only. LIN Slave Not Responding Error Interrupt Disable
      LINSNRE        : USART0_IDR_LIN_MODE_LINSNRE_Field := 16#0#;
      --  Write-only. LIN Synch Tolerance Error Interrupt Disable
      LINSTE         : USART0_IDR_LIN_MODE_LINSTE_Field := 16#0#;
      --  Write-only. LIN Header Timeout Error Interrupt Disable
      LINHTE         : USART0_IDR_LIN_MODE_LINHTE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IDR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   subtype USART0_IMR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_RXBRK_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_FRAME_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_PARE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_ITER_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_NACK_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_CTSIC_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_CMP_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Mask Register
   type USART0_IMR_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : USART0_IMR_RXRDY_Field;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : USART0_IMR_TXRDY_Field;
      --  Read-only. Receiver Break Interrupt Mask
      RXBRK          : USART0_IMR_RXBRK_Field;
      --  Read-only. End of Receive Buffer Interrupt Mask (available in all
      --  USART modes of operation)
      ENDRX          : USART0_IMR_ENDRX_Field;
      --  Read-only. End of Transmit Buffer Interrupt Mask (available in all
      --  USART modes of operation)
      ENDTX          : USART0_IMR_ENDTX_Field;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : USART0_IMR_OVRE_Field;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : USART0_IMR_FRAME_Field;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : USART0_IMR_PARE_Field;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : USART0_IMR_TIMEOUT_Field;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : USART0_IMR_TXEMPTY_Field;
      --  Read-only. Max Number of Repetitions Reached Interrupt Mask
      ITER           : USART0_IMR_ITER_Field;
      --  Read-only. Transmit Buffer Empty Interrupt Mask (available in all
      --  USART modes of operation)
      TXBUFE         : USART0_IMR_TXBUFE_Field;
      --  Read-only. Receive Buffer Full Interrupt Mask (available in all USART
      --  modes of operation)
      RXBUFF         : USART0_IMR_RXBUFF_Field;
      --  Read-only. Non Acknowledge Interrupt Mask
      NACK           : USART0_IMR_NACK_Field;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5;
      --  Read-only. Clear to Send Input Change Interrupt Mask
      CTSIC          : USART0_IMR_CTSIC_Field;
      --  unspecified
      Reserved_20_21 : Interfaces.SAM.UInt2;
      --  Read-only. Comparison Interrupt Mask
      CMP            : USART0_IMR_CMP_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype USART0_IMR_SPI_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_SPI_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_SPI_MODE_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_SPI_MODE_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_SPI_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_SPI_MODE_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_SPI_MODE_UNRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_SPI_MODE_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_SPI_MODE_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_SPI_MODE_CMP_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Mask Register
   type USART0_IMR_SPI_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : USART0_IMR_SPI_MODE_RXRDY_Field;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : USART0_IMR_SPI_MODE_TXRDY_Field;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit;
      --  Read-only.
      ENDRX          : USART0_IMR_SPI_MODE_ENDRX_Field;
      --  Read-only.
      ENDTX          : USART0_IMR_SPI_MODE_ENDTX_Field;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : USART0_IMR_SPI_MODE_OVRE_Field;
      --  unspecified
      Reserved_6_8   : Interfaces.SAM.UInt3;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : USART0_IMR_SPI_MODE_TXEMPTY_Field;
      --  Read-only. SPI Underrun Error Interrupt Mask
      UNRE           : USART0_IMR_SPI_MODE_UNRE_Field;
      --  Read-only.
      TXBUFE         : USART0_IMR_SPI_MODE_TXBUFE_Field;
      --  Read-only.
      RXBUFF         : USART0_IMR_SPI_MODE_RXBUFF_Field;
      --  unspecified
      Reserved_13_21 : Interfaces.SAM.UInt9;
      --  Read-only. Comparison Interrupt Mask
      CMP            : USART0_IMR_SPI_MODE_CMP_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_21 at 0 range 13 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype USART0_IMR_LIN_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_FRAME_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_PARE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_LINBK_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_LINID_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_LINTC_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_LINBE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_LINISFE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_LINIPE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_LINCE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_LINSNRE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_LINSTE_Field is Interfaces.SAM.Bit;
   subtype USART0_IMR_LIN_MODE_LINHTE_Field is Interfaces.SAM.Bit;

   --  USART Interrupt Mask Register
   type USART0_IMR_LIN_MODE_Register is record
      --  Read-only. RXRDY Interrupt Mask
      RXRDY          : USART0_IMR_LIN_MODE_RXRDY_Field;
      --  Read-only. TXRDY Interrupt Mask
      TXRDY          : USART0_IMR_LIN_MODE_TXRDY_Field;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit;
      --  Read-only.
      ENDRX          : USART0_IMR_LIN_MODE_ENDRX_Field;
      --  Read-only.
      ENDTX          : USART0_IMR_LIN_MODE_ENDTX_Field;
      --  Read-only. Overrun Error Interrupt Mask
      OVRE           : USART0_IMR_LIN_MODE_OVRE_Field;
      --  Read-only. Framing Error Interrupt Mask
      FRAME          : USART0_IMR_LIN_MODE_FRAME_Field;
      --  Read-only. Parity Error Interrupt Mask
      PARE           : USART0_IMR_LIN_MODE_PARE_Field;
      --  Read-only. Time-out Interrupt Mask
      TIMEOUT        : USART0_IMR_LIN_MODE_TIMEOUT_Field;
      --  Read-only. TXEMPTY Interrupt Mask
      TXEMPTY        : USART0_IMR_LIN_MODE_TXEMPTY_Field;
      --  unspecified
      Reserved_10_10 : Interfaces.SAM.Bit;
      --  Read-only.
      TXBUFE         : USART0_IMR_LIN_MODE_TXBUFE_Field;
      --  Read-only.
      RXBUFF         : USART0_IMR_LIN_MODE_RXBUFF_Field;
      --  Read-only. LIN Break Sent or LIN Break Received Interrupt Mask
      LINBK          : USART0_IMR_LIN_MODE_LINBK_Field;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received Interrupt
      --  Mask
      LINID          : USART0_IMR_LIN_MODE_LINID_Field;
      --  Read-only. LIN Transfer Completed Interrupt Mask
      LINTC          : USART0_IMR_LIN_MODE_LINTC_Field;
      --  unspecified
      Reserved_16_24 : Interfaces.SAM.UInt9;
      --  Read-only. LIN Bus Error Interrupt Mask
      LINBE          : USART0_IMR_LIN_MODE_LINBE_Field;
      --  Read-only. LIN Inconsistent Synch Field Error Interrupt Mask
      LINISFE        : USART0_IMR_LIN_MODE_LINISFE_Field;
      --  Read-only. LIN Identifier Parity Interrupt Mask
      LINIPE         : USART0_IMR_LIN_MODE_LINIPE_Field;
      --  Read-only. LIN Checksum Error Interrupt Mask
      LINCE          : USART0_IMR_LIN_MODE_LINCE_Field;
      --  Read-only. LIN Slave Not Responding Error Interrupt Mask
      LINSNRE        : USART0_IMR_LIN_MODE_LINSNRE_Field;
      --  Read-only. LIN Synch Tolerance Error Interrupt Mask
      LINSTE         : USART0_IMR_LIN_MODE_LINSTE_Field;
      --  Read-only. LIN Header Timeout Error Interrupt Mask
      LINHTE         : USART0_IMR_LIN_MODE_LINHTE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_IMR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_24 at 0 range 16 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   subtype USART0_CSR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_RXBRK_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_FRAME_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_PARE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_ITER_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_NACK_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_CTSIC_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_CMP_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_CTS_Field is Interfaces.SAM.Bit;

   --  USART Channel Status Register
   type USART0_CSR_Register is record
      --  Read-only. Receiver Ready (automatically set / cleared)
      RXRDY          : USART0_CSR_RXRDY_Field;
      --  Read-only. Transmitter Ready (automatically set / cleared)
      TXRDY          : USART0_CSR_TXRDY_Field;
      --  Read-only. Break Received/End of Break (cleared by US_CR.RSTSTA
      --  command)
      RXBRK          : USART0_CSR_RXBRK_Field;
      --  Read-only. End of RX Buffer (automatically set / cleared)
      ENDRX          : USART0_CSR_ENDRX_Field;
      --  Read-only. End of TX Buffer (automatically set / cleared)
      ENDTX          : USART0_CSR_ENDTX_Field;
      --  Read-only. Overrun Error (cleared by US_CR.RSTSTA command)
      OVRE           : USART0_CSR_OVRE_Field;
      --  Read-only. Framing Error (cleared by US_CR.RSTSTA command)
      FRAME          : USART0_CSR_FRAME_Field;
      --  Read-only. Parity Error (cleared by US_CR.RSTSTA command)
      PARE           : USART0_CSR_PARE_Field;
      --  Read-only. Receiver Time-out (cleared by US_CR.STTTO command)
      TIMEOUT        : USART0_CSR_TIMEOUT_Field;
      --  Read-only. Transmitter Empty (automatically set / cleared)
      TXEMPTY        : USART0_CSR_TXEMPTY_Field;
      --  Read-only. Max Number of Repetitions Reached (cleared by US_CR.RSTIT
      --  command)
      ITER           : USART0_CSR_ITER_Field;
      --  Read-only. TX Buffer Empty (automatically set / cleared)
      TXBUFE         : USART0_CSR_TXBUFE_Field;
      --  Read-only. RX Buffer Full (automatically set / cleared)
      RXBUFF         : USART0_CSR_RXBUFF_Field;
      --  Read-only. Non Acknowledge Interrupt (cleared by US_CR.RSTNACK
      --  command)
      NACK           : USART0_CSR_NACK_Field;
      --  unspecified
      Reserved_14_18 : Interfaces.SAM.UInt5;
      --  Read-only. Clear to Send Input Change Flag (clear on read)
      CTSIC          : USART0_CSR_CTSIC_Field;
      --  unspecified
      Reserved_20_21 : Interfaces.SAM.UInt2;
      --  Read-only. Comparison Status (cleared by US_CR.RSTSTA command)
      CMP            : USART0_CSR_CMP_Field;
      --  Read-only. Image of CTS Input (automatically set / cleared)
      CTS            : USART0_CSR_CTS_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      RXBRK          at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      ITER           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      NACK           at 0 range 13 .. 13;
      Reserved_14_18 at 0 range 14 .. 18;
      CTSIC          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      CMP            at 0 range 22 .. 22;
      CTS            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART0_CSR_SPI_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_SPI_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_SPI_MODE_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_SPI_MODE_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_SPI_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_SPI_MODE_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_SPI_MODE_UNRE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_SPI_MODE_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_SPI_MODE_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_SPI_MODE_CMP_Field is Interfaces.SAM.Bit;

   --  USART Channel Status Register
   type USART0_CSR_SPI_MODE_Register is record
      --  Read-only. Receiver Ready (automatically set / cleared)
      RXRDY          : USART0_CSR_SPI_MODE_RXRDY_Field;
      --  Read-only. Transmitter Ready (automatically set / cleared)
      TXRDY          : USART0_CSR_SPI_MODE_TXRDY_Field;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit;
      --  Read-only.
      ENDRX          : USART0_CSR_SPI_MODE_ENDRX_Field;
      --  Read-only.
      ENDTX          : USART0_CSR_SPI_MODE_ENDTX_Field;
      --  Read-only. Overrun Error (cleared by US_CR.RSTSTA)
      OVRE           : USART0_CSR_SPI_MODE_OVRE_Field;
      --  unspecified
      Reserved_6_8   : Interfaces.SAM.UInt3;
      --  Read-only. Transmitter Empty (automatically set / cleared)
      TXEMPTY        : USART0_CSR_SPI_MODE_TXEMPTY_Field;
      --  Read-only. Underrun Error (cleared by US_CR.RSTSTA)
      UNRE           : USART0_CSR_SPI_MODE_UNRE_Field;
      --  Read-only.
      TXBUFE         : USART0_CSR_SPI_MODE_TXBUFE_Field;
      --  Read-only.
      RXBUFF         : USART0_CSR_SPI_MODE_RXBUFF_Field;
      --  unspecified
      Reserved_13_21 : Interfaces.SAM.UInt9;
      --  Read-only. Comparison Match (cleared by US_CR.RSTSTA)
      CMP            : USART0_CSR_SPI_MODE_CMP_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.SAM.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_SPI_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      UNRE           at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_21 at 0 range 13 .. 21;
      CMP            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype USART0_CSR_LIN_MODE_RXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_TXRDY_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_ENDRX_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_ENDTX_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_OVRE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_FRAME_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_PARE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_TIMEOUT_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_RXBUFF_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_LINBK_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_LINID_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_LINTC_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_LINBLS_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_LINBE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_LINISFE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_LINIPE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_LINCE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_LINSNRE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_LINSTE_Field is Interfaces.SAM.Bit;
   subtype USART0_CSR_LIN_MODE_LINHTE_Field is Interfaces.SAM.Bit;

   --  USART Channel Status Register
   type USART0_CSR_LIN_MODE_Register is record
      --  Read-only. Receiver Ready (automatically set / cleared)
      RXRDY          : USART0_CSR_LIN_MODE_RXRDY_Field;
      --  Read-only. Transmitter Ready (automatically set / cleared)
      TXRDY          : USART0_CSR_LIN_MODE_TXRDY_Field;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit;
      --  Read-only.
      ENDRX          : USART0_CSR_LIN_MODE_ENDRX_Field;
      --  Read-only.
      ENDTX          : USART0_CSR_LIN_MODE_ENDTX_Field;
      --  Read-only. Overrun Error (cleared by US_CR.RSTSTA command)
      OVRE           : USART0_CSR_LIN_MODE_OVRE_Field;
      --  Read-only. Framing Error (cleared by US_CR.RSTSTA command)
      FRAME          : USART0_CSR_LIN_MODE_FRAME_Field;
      --  Read-only. Parity Error (cleared by US_CR.RSTSTA command)
      PARE           : USART0_CSR_LIN_MODE_PARE_Field;
      --  Read-only. Receiver Time-out (cleared by US_CR.STTTO command)
      TIMEOUT        : USART0_CSR_LIN_MODE_TIMEOUT_Field;
      --  Read-only. Transmitter Empty (automatically set / cleared)
      TXEMPTY        : USART0_CSR_LIN_MODE_TXEMPTY_Field;
      --  unspecified
      Reserved_10_10 : Interfaces.SAM.Bit;
      --  Read-only.
      TXBUFE         : USART0_CSR_LIN_MODE_TXBUFE_Field;
      --  Read-only.
      RXBUFF         : USART0_CSR_LIN_MODE_RXBUFF_Field;
      --  Read-only. LIN Break Sent or LIN Break Received (cleared by
      --  US_CR.RSTSTA command)
      LINBK          : USART0_CSR_LIN_MODE_LINBK_Field;
      --  Read-only. LIN Identifier Sent or LIN Identifier Received (cleared by
      --  US_CR.RSTSTA command)
      LINID          : USART0_CSR_LIN_MODE_LINID_Field;
      --  Read-only. LIN Transfer Completed (cleared by US_CR.RSTSTA command)
      LINTC          : USART0_CSR_LIN_MODE_LINTC_Field;
      --  unspecified
      Reserved_16_22 : Interfaces.SAM.UInt7;
      --  Read-only. LIN Bus Line Status
      LINBLS         : USART0_CSR_LIN_MODE_LINBLS_Field;
      --  unspecified
      Reserved_24_24 : Interfaces.SAM.Bit;
      --  Read-only. LIN Bit Error (cleared by US_CR.RSTSTA command)
      LINBE          : USART0_CSR_LIN_MODE_LINBE_Field;
      --  Read-only. LIN Inconsistent Synch Field Error (cleared by
      --  US_CR.RSTSTA command)
      LINISFE        : USART0_CSR_LIN_MODE_LINISFE_Field;
      --  Read-only. LIN Identifier Parity Error (cleared by US_CR.RSTSTA
      --  command)
      LINIPE         : USART0_CSR_LIN_MODE_LINIPE_Field;
      --  Read-only. LIN Checksum Error (cleared by US_CR.RSTSTA command)
      LINCE          : USART0_CSR_LIN_MODE_LINCE_Field;
      --  Read-only. LIN Slave Not Responding Error (cleared by US_CR.RSTSTA
      --  command)
      LINSNRE        : USART0_CSR_LIN_MODE_LINSNRE_Field;
      --  Read-only. LIN Synch Tolerance Error (cleared by US_CR.RSTSTA
      --  command)
      LINSTE         : USART0_CSR_LIN_MODE_LINSTE_Field;
      --  Read-only. LIN Header Timeout Error (cleared by US_CR.RSTSTA command)
      LINHTE         : USART0_CSR_LIN_MODE_LINHTE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CSR_LIN_MODE_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      TIMEOUT        at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      LINBK          at 0 range 13 .. 13;
      LINID          at 0 range 14 .. 14;
      LINTC          at 0 range 15 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      LINBLS         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      LINBE          at 0 range 25 .. 25;
      LINISFE        at 0 range 26 .. 26;
      LINIPE         at 0 range 27 .. 27;
      LINCE          at 0 range 28 .. 28;
      LINSNRE        at 0 range 29 .. 29;
      LINSTE         at 0 range 30 .. 30;
      LINHTE         at 0 range 31 .. 31;
   end record;

   subtype USART0_RHR_RXCHR_Field is Interfaces.SAM.UInt9;
   subtype USART0_RHR_RXSYNH_Field is Interfaces.SAM.Bit;

   --  USART Receive Holding Register
   type USART0_RHR_Register is record
      --  Read-only. Received Character
      RXCHR          : USART0_RHR_RXCHR_Field;
      --  unspecified
      Reserved_9_14  : Interfaces.SAM.UInt6;
      --  Read-only. Received Sync
      RXSYNH         : USART0_RHR_RXSYNH_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RHR_Register use record
      RXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      RXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_THR_TXCHR_Field is Interfaces.SAM.UInt9;
   subtype USART0_THR_TXSYNH_Field is Interfaces.SAM.Bit;

   --  USART Transmit Holding Register
   type USART0_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR          : USART0_THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_9_14  : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Sync Field to be Transmitted
      TXSYNH         : USART0_THR_TXSYNH_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_THR_Register use record
      TXCHR          at 0 range 0 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      TXSYNH         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_BRGR_CD_Field is Interfaces.SAM.UInt16;
   subtype USART0_BRGR_FP_Field is Interfaces.SAM.UInt3;

   --  USART Baud Rate Generator Register
   type USART0_BRGR_Register is record
      --  Clock Divider
      CD             : USART0_BRGR_CD_Field := 16#0#;
      --  Fractional Part
      FP             : USART0_BRGR_FP_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      FP             at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype USART0_RTOR_TO_Field is Interfaces.SAM.UInt17;

   --  USART Receiver Time-out Register
   type USART0_RTOR_Register is record
      --  Time-out Value
      TO             : USART0_RTOR_TO_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.SAM.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RTOR_Register use record
      TO             at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype USART0_TTGR_TG_Field is Interfaces.SAM.Byte;

   --  USART Transmitter Timeguard Register
   type USART0_TTGR_Register is record
      --  Timeguard Value
      TG            : USART0_TTGR_TG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_TTGR_Register use record
      TG            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART0_FIDI_FI_DI_RATIO_Field is Interfaces.SAM.UInt16;

   --  USART FI DI Ratio Register
   type USART0_FIDI_Register is record
      --  FI Over DI Ratio Value
      FI_DI_RATIO    : USART0_FIDI_FI_DI_RATIO_Field := 16#174#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_FIDI_Register use record
      FI_DI_RATIO    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_NER_NB_ERRORS_Field is Interfaces.SAM.Byte;

   --  USART Number of Errors Register
   type USART0_NER_Register is record
      --  Read-only. Number of Errors
      NB_ERRORS     : USART0_NER_NB_ERRORS_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_NER_Register use record
      NB_ERRORS     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  LIN Node Action
   type LINMR_NACT_Field is
     (--  The USART transmits the response.
      PUBLISH,
      --  The USART receives the response.
      SUBSCRIBE,
      --  The USART does not transmit and does not receive the response.
      IGNORE)
     with Size => 2;
   for LINMR_NACT_Field use
     (PUBLISH => 0,
      SUBSCRIBE => 1,
      IGNORE => 2);

   subtype USART0_LINMR_PARDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_LINMR_CHKDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_LINMR_CHKTYP_Field is Interfaces.SAM.Bit;
   subtype USART0_LINMR_DLM_Field is Interfaces.SAM.Bit;
   subtype USART0_LINMR_FSDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_LINMR_WKUPTYP_Field is Interfaces.SAM.Bit;
   subtype USART0_LINMR_DLC_Field is Interfaces.SAM.Byte;
   subtype USART0_LINMR_PDCM_Field is Interfaces.SAM.Bit;
   subtype USART0_LINMR_SYNCDIS_Field is Interfaces.SAM.Bit;

   --  USART LIN Mode Register
   type USART0_LINMR_Register is record
      --  LIN Node Action
      NACT           : LINMR_NACT_Field := Interfaces.SAM.USART.PUBLISH;
      --  Parity Disable
      PARDIS         : USART0_LINMR_PARDIS_Field := 16#0#;
      --  Checksum Disable
      CHKDIS         : USART0_LINMR_CHKDIS_Field := 16#0#;
      --  Checksum Type
      CHKTYP         : USART0_LINMR_CHKTYP_Field := 16#0#;
      --  Data Length Mode
      DLM            : USART0_LINMR_DLM_Field := 16#0#;
      --  Frame Slot Mode Disable
      FSDIS          : USART0_LINMR_FSDIS_Field := 16#0#;
      --  Wakeup Signal Type
      WKUPTYP        : USART0_LINMR_WKUPTYP_Field := 16#0#;
      --  Data Length Control
      DLC            : USART0_LINMR_DLC_Field := 16#0#;
      --  PDC Mode
      PDCM           : USART0_LINMR_PDCM_Field := 16#0#;
      --  Synchronization Disable
      SYNCDIS        : USART0_LINMR_SYNCDIS_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.SAM.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LINMR_Register use record
      NACT           at 0 range 0 .. 1;
      PARDIS         at 0 range 2 .. 2;
      CHKDIS         at 0 range 3 .. 3;
      CHKTYP         at 0 range 4 .. 4;
      DLM            at 0 range 5 .. 5;
      FSDIS          at 0 range 6 .. 6;
      WKUPTYP        at 0 range 7 .. 7;
      DLC            at 0 range 8 .. 15;
      PDCM           at 0 range 16 .. 16;
      SYNCDIS        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype USART0_LINIR_IDCHR_Field is Interfaces.SAM.Byte;

   --  USART LIN Identifier Register
   type USART0_LINIR_Register is record
      --  Identifier Character
      IDCHR         : USART0_LINIR_IDCHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LINIR_Register use record
      IDCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USART0_LINBRR_LINCD_Field is Interfaces.SAM.UInt16;
   subtype USART0_LINBRR_LINFP_Field is Interfaces.SAM.UInt3;

   --  USART LIN Baud Rate Register
   type USART0_LINBRR_Register is record
      --  Read-only. Clock Divider after Synchronization
      LINCD          : USART0_LINBRR_LINCD_Field;
      --  Read-only. Fractional Part after Synchronization
      LINFP          : USART0_LINBRR_LINFP_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_LINBRR_Register use record
      LINCD          at 0 range 0 .. 15;
      LINFP          at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype USART0_CMPR_VAL1_Field is Interfaces.SAM.UInt9;

   --  Comparison Mode
   type CMPR_CMPMODE_Field is
     (--  Any character is received and comparison function drives CMP flag.
      FLAG_ONLY,
      --  Comparison condition must be met to start reception of all incoming
--  charactersuntil REQCLR is set.
      START_CONDITION)
     with Size => 1;
   for CMPR_CMPMODE_Field use
     (FLAG_ONLY => 0,
      START_CONDITION => 1);

   subtype USART0_CMPR_CMPPAR_Field is Interfaces.SAM.Bit;
   subtype USART0_CMPR_VAL2_Field is Interfaces.SAM.UInt9;

   --  USART Comparison Register
   type USART0_CMPR_Register is record
      --  First Comparison Value for Received Character
      VAL1           : USART0_CMPR_VAL1_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.SAM.UInt3 := 16#0#;
      --  Comparison Mode
      CMPMODE        : CMPR_CMPMODE_Field := Interfaces.SAM.USART.FLAG_ONLY;
      --  unspecified
      Reserved_13_13 : Interfaces.SAM.Bit := 16#0#;
      --  Compare Parity
      CMPPAR         : USART0_CMPR_CMPPAR_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.SAM.Bit := 16#0#;
      --  Second Comparison Value for Received Character
      VAL2           : USART0_CMPR_VAL2_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_CMPR_Register use record
      VAL1           at 0 range 0 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CMPMODE        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CMPPAR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      VAL2           at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype USART0_WPMR_WPEN_Field is Interfaces.SAM.Bit;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (--  Reset value for the field
      WPMR_WPKEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit. Always reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (WPMR_WPKEY_Field_Reset => 0,
      PASSWD => 5591873);

   --  USART Write Protection Mode Register
   type USART0_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : USART0_WPMR_WPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := WPMR_WPKEY_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype USART0_WPSR_WPVS_Field is Interfaces.SAM.Bit;
   subtype USART0_WPSR_WPVSRC_Field is Interfaces.SAM.UInt16;

   --  USART Write Protection Status Register
   type USART0_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : USART0_WPSR_WPVS_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : USART0_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.SAM.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USART0_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type USART0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : USART0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_TCR_TXCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Counter Register
   type USART0_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : USART0_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type USART0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : USART0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_TNCR_TXNCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Next Counter Register
   type USART0_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : USART0_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART0_PTCR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype USART0_PTCR_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_PTCR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype USART0_PTCR_TXTDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_PTCR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype USART0_PTCR_RXCBDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_PTCR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype USART0_PTCR_TXCBDIS_Field is Interfaces.SAM.Bit;
   subtype USART0_PTCR_ERRCLR_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register
   type USART0_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : USART0_PTCR_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : USART0_PTCR_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : USART0_PTCR_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : USART0_PTCR_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Receiver Circular Buffer Enable
      RXCBEN         : USART0_PTCR_RXCBEN_Field := 16#0#;
      --  Write-only. Receiver Circular Buffer Disable
      RXCBDIS        : USART0_PTCR_RXCBDIS_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Enable
      TXCBEN         : USART0_PTCR_TXCBEN_Field := 16#0#;
      --  Write-only. Transmitter Circular Buffer Disable
      TXCBDIS        : USART0_PTCR_TXCBDIS_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.SAM.UInt4 := 16#0#;
      --  Write-only. Transfer Bus Error Clear
      ERRCLR         : USART0_PTCR_ERRCLR_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_PTCR_Register use record
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

   subtype USART0_PTSR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype USART0_PTSR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype USART0_PTSR_RXCBEN_Field is Interfaces.SAM.Bit;
   subtype USART0_PTSR_TXCBEN_Field is Interfaces.SAM.Bit;
   subtype USART0_PTSR_ERR_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register
   type USART0_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN          : USART0_PTSR_RXTEN_Field;
      --  unspecified
      Reserved_1_7   : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN          : USART0_PTSR_TXTEN_Field;
      --  unspecified
      Reserved_9_15  : Interfaces.SAM.UInt7;
      --  Read-only. Receiver Transfer Enable
      RXCBEN         : USART0_PTSR_RXCBEN_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.SAM.Bit;
      --  Read-only. Transmitter Transfer Enable
      TXCBEN         : USART0_PTSR_TXCBEN_Field;
      --  unspecified
      Reserved_19_23 : Interfaces.SAM.UInt5;
      --  Read-only. Transfer Bus Error (clear on read)
      ERR            : USART0_PTSR_ERR_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.SAM.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART0_PTSR_Register use record
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

   type USART0_Disc is
     (Default,
      SPI_MODE,
      LIN_MODE);

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   type USART_Peripheral
     (Discriminent : USART0_Disc := Default)
   is record
      --  USART Receive Holding Register
      RHR          : aliased USART0_RHR_Register;
      --  USART Transmit Holding Register
      THR          : aliased USART0_THR_Register;
      --  USART Baud Rate Generator Register
      BRGR         : aliased USART0_BRGR_Register;
      --  USART Receiver Time-out Register
      RTOR         : aliased USART0_RTOR_Register;
      --  USART Transmitter Timeguard Register
      TTGR         : aliased USART0_TTGR_Register;
      --  USART FI DI Ratio Register
      FIDI         : aliased USART0_FIDI_Register;
      --  USART Number of Errors Register
      NER          : aliased USART0_NER_Register;
      --  USART LIN Mode Register
      LINMR        : aliased USART0_LINMR_Register;
      --  USART LIN Identifier Register
      LINIR        : aliased USART0_LINIR_Register;
      --  USART LIN Baud Rate Register
      LINBRR       : aliased USART0_LINBRR_Register;
      --  USART Comparison Register
      CMPR         : aliased USART0_CMPR_Register;
      --  USART Write Protection Mode Register
      WPMR         : aliased USART0_WPMR_Register;
      --  USART Write Protection Status Register
      WPSR         : aliased USART0_WPSR_Register;
      --  Receive Pointer Register
      RPR          : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR          : aliased USART0_RCR_Register;
      --  Transmit Pointer Register
      TPR          : aliased Interfaces.SAM.UInt32;
      --  Transmit Counter Register
      TCR          : aliased USART0_TCR_Register;
      --  Receive Next Pointer Register
      RNPR         : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR         : aliased USART0_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR         : aliased Interfaces.SAM.UInt32;
      --  Transmit Next Counter Register
      TNCR         : aliased USART0_TNCR_Register;
      --  Transfer Control Register
      PTCR         : aliased USART0_PTCR_Register;
      --  Transfer Status Register
      PTSR         : aliased USART0_PTSR_Register;
      case Discriminent is
         when Default =>
            --  USART Control Register
            CR : aliased USART0_CR_Register;
            --  USART Mode Register
            MR : aliased USART0_MR_Register;
            --  USART Interrupt Enable Register
            IER : aliased USART0_IER_Register;
            --  USART Interrupt Disable Register
            IDR : aliased USART0_IDR_Register;
            --  USART Interrupt Mask Register
            IMR : aliased USART0_IMR_Register;
            --  USART Channel Status Register
            CSR : aliased USART0_CSR_Register;
         when SPI_MODE =>
            --  USART Control Register
            CR_SPI_MODE : aliased USART0_CR_SPI_MODE_Register;
            --  USART Mode Register
            MR_SPI_MODE : aliased USART0_MR_SPI_MODE_Register;
            --  USART Interrupt Enable Register
            IER_SPI_MODE : aliased USART0_IER_SPI_MODE_Register;
            --  USART Interrupt Disable Register
            IDR_SPI_MODE : aliased USART0_IDR_SPI_MODE_Register;
            --  USART Interrupt Mask Register
            IMR_SPI_MODE : aliased USART0_IMR_SPI_MODE_Register;
            --  USART Channel Status Register
            CSR_SPI_MODE : aliased USART0_CSR_SPI_MODE_Register;
         when LIN_MODE =>
            --  USART Interrupt Enable Register
            IER_LIN_MODE : aliased USART0_IER_LIN_MODE_Register;
            --  USART Interrupt Disable Register
            IDR_LIN_MODE : aliased USART0_IDR_LIN_MODE_Register;
            --  USART Interrupt Mask Register
            IMR_LIN_MODE : aliased USART0_IMR_LIN_MODE_Register;
            --  USART Channel Status Register
            CSR_LIN_MODE : aliased USART0_CSR_LIN_MODE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      RHR          at 16#18# range 0 .. 31;
      THR          at 16#1C# range 0 .. 31;
      BRGR         at 16#20# range 0 .. 31;
      RTOR         at 16#24# range 0 .. 31;
      TTGR         at 16#28# range 0 .. 31;
      FIDI         at 16#40# range 0 .. 31;
      NER          at 16#44# range 0 .. 31;
      LINMR        at 16#54# range 0 .. 31;
      LINIR        at 16#58# range 0 .. 31;
      LINBRR       at 16#5C# range 0 .. 31;
      CMPR         at 16#90# range 0 .. 31;
      WPMR         at 16#E4# range 0 .. 31;
      WPSR         at 16#E8# range 0 .. 31;
      RPR          at 16#100# range 0 .. 31;
      RCR          at 16#104# range 0 .. 31;
      TPR          at 16#108# range 0 .. 31;
      TCR          at 16#10C# range 0 .. 31;
      RNPR         at 16#110# range 0 .. 31;
      RNCR         at 16#114# range 0 .. 31;
      TNPR         at 16#118# range 0 .. 31;
      TNCR         at 16#11C# range 0 .. 31;
      PTCR         at 16#120# range 0 .. 31;
      PTSR         at 16#124# range 0 .. 31;
      CR           at 16#0# range 0 .. 31;
      MR           at 16#4# range 0 .. 31;
      IER          at 16#8# range 0 .. 31;
      IDR          at 16#C# range 0 .. 31;
      IMR          at 16#10# range 0 .. 31;
      CSR          at 16#14# range 0 .. 31;
      CR_SPI_MODE  at 16#0# range 0 .. 31;
      MR_SPI_MODE  at 16#4# range 0 .. 31;
      IER_SPI_MODE at 16#8# range 0 .. 31;
      IDR_SPI_MODE at 16#C# range 0 .. 31;
      IMR_SPI_MODE at 16#10# range 0 .. 31;
      CSR_SPI_MODE at 16#14# range 0 .. 31;
      IER_LIN_MODE at 16#8# range 0 .. 31;
      IDR_LIN_MODE at 16#C# range 0 .. 31;
      IMR_LIN_MODE at 16#10# range 0 .. 31;
      CSR_LIN_MODE at 16#14# range 0 .. 31;
   end record;

   --  Universal Synchronous Asynchronous Receiver Transmitter 0
   USART0_Periph : aliased USART_Peripheral
     with Import, Address => USART0_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 1
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => USART1_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 2
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => USART2_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 3
   USART3_Periph : aliased USART_Peripheral
     with Import, Address => USART3_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 4
   USART4_Periph : aliased USART_Peripheral
     with Import, Address => USART4_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 5
   USART5_Periph : aliased USART_Peripheral
     with Import, Address => USART5_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 6
   USART6_Periph : aliased USART_Peripheral
     with Import, Address => USART6_Base;

   --  Universal Synchronous Asynchronous Receiver Transmitter 7
   USART7_Periph : aliased USART_Peripheral
     with Import, Address => USART7_Base;

end Interfaces.SAM.USART;
