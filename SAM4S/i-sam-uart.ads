--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM4SD32C.svd


with System;

package Interfaces.SAM.UART is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype UART0_CR_RSTRX_Field is Interfaces.SAM.Bit;
   subtype UART0_CR_RSTTX_Field is Interfaces.SAM.Bit;
   subtype UART0_CR_RXEN_Field is Interfaces.SAM.Bit;
   subtype UART0_CR_RXDIS_Field is Interfaces.SAM.Bit;
   subtype UART0_CR_TXEN_Field is Interfaces.SAM.Bit;
   subtype UART0_CR_TXDIS_Field is Interfaces.SAM.Bit;
   subtype UART0_CR_RSTSTA_Field is Interfaces.SAM.Bit;

   --  Control Register
   type UART0_CR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX         : UART0_CR_RSTRX_Field := 16#0#;
      --  Write-only. Reset Transmitter
      RSTTX         : UART0_CR_RSTTX_Field := 16#0#;
      --  Write-only. Receiver Enable
      RXEN          : UART0_CR_RXEN_Field := 16#0#;
      --  Write-only. Receiver Disable
      RXDIS         : UART0_CR_RXDIS_Field := 16#0#;
      --  Write-only. Transmitter Enable
      TXEN          : UART0_CR_TXEN_Field := 16#0#;
      --  Write-only. Transmitter Disable
      TXDIS         : UART0_CR_TXDIS_Field := 16#0#;
      --  Write-only. Reset Status Bits
      RSTSTA        : UART0_CR_RSTSTA_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      RSTRX         at 0 range 2 .. 2;
      RSTTX         at 0 range 3 .. 3;
      RXEN          at 0 range 4 .. 4;
      RXDIS         at 0 range 5 .. 5;
      TXEN          at 0 range 6 .. 6;
      TXDIS         at 0 range 7 .. 7;
      RSTSTA        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Parity Type
   type MR_PAR_Field is
     (--  Even Parity
      EVEN,
      --  Odd Parity
      ODD,
      --  Space: parity forced to 0
      SPACE,
      --  Mark: parity forced to 1
      MARK,
      --  No Parity
      NO)
     with Size => 3;
   for MR_PAR_Field use
     (EVEN => 0,
      ODD => 1,
      SPACE => 2,
      MARK => 3,
      NO => 4);

   --  Channel Mode
   type MR_CHMODE_Field is
     (--  Normal Mode
      NORMAL,
      --  Automatic Echo
      AUTOMATIC,
      --  Local Loopback
      LOCAL_LOOPBACK,
      --  Remote Loopback
      REMOTE_LOOPBACK)
     with Size => 2;
   for MR_CHMODE_Field use
     (NORMAL => 0,
      AUTOMATIC => 1,
      LOCAL_LOOPBACK => 2,
      REMOTE_LOOPBACK => 3);

   --  Mode Register
   type UART0_MR_Register is record
      --  unspecified
      Reserved_0_8   : Interfaces.SAM.UInt9 := 16#0#;
      --  Parity Type
      PAR            : MR_PAR_Field := Interfaces.SAM.UART.EVEN;
      --  unspecified
      Reserved_12_13 : Interfaces.SAM.UInt2 := 16#0#;
      --  Channel Mode
      CHMODE         : MR_CHMODE_Field := Interfaces.SAM.UART.NORMAL;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_MR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      PAR            at 0 range 9 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART0_IER_RXRDY_Field is Interfaces.SAM.Bit;
   subtype UART0_IER_TXRDY_Field is Interfaces.SAM.Bit;
   subtype UART0_IER_ENDRX_Field is Interfaces.SAM.Bit;
   subtype UART0_IER_ENDTX_Field is Interfaces.SAM.Bit;
   subtype UART0_IER_OVRE_Field is Interfaces.SAM.Bit;
   subtype UART0_IER_FRAME_Field is Interfaces.SAM.Bit;
   subtype UART0_IER_PARE_Field is Interfaces.SAM.Bit;
   subtype UART0_IER_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype UART0_IER_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype UART0_IER_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type UART0_IER_Register is record
      --  Write-only. Enable RXRDY Interrupt
      RXRDY          : UART0_IER_RXRDY_Field := 16#0#;
      --  Write-only. Enable TXRDY Interrupt
      TXRDY          : UART0_IER_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Enable End of Receive Transfer Interrupt
      ENDRX          : UART0_IER_ENDRX_Field := 16#0#;
      --  Write-only. Enable End of Transmit Interrupt
      ENDTX          : UART0_IER_ENDTX_Field := 16#0#;
      --  Write-only. Enable Overrun Error Interrupt
      OVRE           : UART0_IER_OVRE_Field := 16#0#;
      --  Write-only. Enable Framing Error Interrupt
      FRAME          : UART0_IER_FRAME_Field := 16#0#;
      --  Write-only. Enable Parity Error Interrupt
      PARE           : UART0_IER_PARE_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Enable TXEMPTY Interrupt
      TXEMPTY        : UART0_IER_TXEMPTY_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Enable Buffer Empty Interrupt
      TXBUFE         : UART0_IER_TXBUFE_Field := 16#0#;
      --  Write-only. Enable Buffer Full Interrupt
      RXBUFF         : UART0_IER_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.SAM.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype UART0_IDR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype UART0_IDR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype UART0_IDR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype UART0_IDR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype UART0_IDR_OVRE_Field is Interfaces.SAM.Bit;
   subtype UART0_IDR_FRAME_Field is Interfaces.SAM.Bit;
   subtype UART0_IDR_PARE_Field is Interfaces.SAM.Bit;
   subtype UART0_IDR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype UART0_IDR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype UART0_IDR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type UART0_IDR_Register is record
      --  Write-only. Disable RXRDY Interrupt
      RXRDY          : UART0_IDR_RXRDY_Field := 16#0#;
      --  Write-only. Disable TXRDY Interrupt
      TXRDY          : UART0_IDR_TXRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Disable End of Receive Transfer Interrupt
      ENDRX          : UART0_IDR_ENDRX_Field := 16#0#;
      --  Write-only. Disable End of Transmit Interrupt
      ENDTX          : UART0_IDR_ENDTX_Field := 16#0#;
      --  Write-only. Disable Overrun Error Interrupt
      OVRE           : UART0_IDR_OVRE_Field := 16#0#;
      --  Write-only. Disable Framing Error Interrupt
      FRAME          : UART0_IDR_FRAME_Field := 16#0#;
      --  Write-only. Disable Parity Error Interrupt
      PARE           : UART0_IDR_PARE_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Disable TXEMPTY Interrupt
      TXEMPTY        : UART0_IDR_TXEMPTY_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Disable Buffer Empty Interrupt
      TXBUFE         : UART0_IDR_TXBUFE_Field := 16#0#;
      --  Write-only. Disable Buffer Full Interrupt
      RXBUFF         : UART0_IDR_RXBUFF_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.SAM.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype UART0_IMR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype UART0_IMR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype UART0_IMR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype UART0_IMR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype UART0_IMR_OVRE_Field is Interfaces.SAM.Bit;
   subtype UART0_IMR_FRAME_Field is Interfaces.SAM.Bit;
   subtype UART0_IMR_PARE_Field is Interfaces.SAM.Bit;
   subtype UART0_IMR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype UART0_IMR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype UART0_IMR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type UART0_IMR_Register is record
      --  Read-only. Mask RXRDY Interrupt
      RXRDY          : UART0_IMR_RXRDY_Field;
      --  Read-only. Disable TXRDY Interrupt
      TXRDY          : UART0_IMR_TXRDY_Field;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit;
      --  Read-only. Mask End of Receive Transfer Interrupt
      ENDRX          : UART0_IMR_ENDRX_Field;
      --  Read-only. Mask End of Transmit Interrupt
      ENDTX          : UART0_IMR_ENDTX_Field;
      --  Read-only. Mask Overrun Error Interrupt
      OVRE           : UART0_IMR_OVRE_Field;
      --  Read-only. Mask Framing Error Interrupt
      FRAME          : UART0_IMR_FRAME_Field;
      --  Read-only. Mask Parity Error Interrupt
      PARE           : UART0_IMR_PARE_Field;
      --  unspecified
      Reserved_8_8   : Interfaces.SAM.Bit;
      --  Read-only. Mask TXEMPTY Interrupt
      TXEMPTY        : UART0_IMR_TXEMPTY_Field;
      --  unspecified
      Reserved_10_10 : Interfaces.SAM.Bit;
      --  Read-only. Mask TXBUFE Interrupt
      TXBUFE         : UART0_IMR_TXBUFE_Field;
      --  Read-only. Mask RXBUFF Interrupt
      RXBUFF         : UART0_IMR_RXBUFF_Field;
      --  unspecified
      Reserved_13_31 : Interfaces.SAM.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype UART0_SR_RXRDY_Field is Interfaces.SAM.Bit;
   subtype UART0_SR_TXRDY_Field is Interfaces.SAM.Bit;
   subtype UART0_SR_ENDRX_Field is Interfaces.SAM.Bit;
   subtype UART0_SR_ENDTX_Field is Interfaces.SAM.Bit;
   subtype UART0_SR_OVRE_Field is Interfaces.SAM.Bit;
   subtype UART0_SR_FRAME_Field is Interfaces.SAM.Bit;
   subtype UART0_SR_PARE_Field is Interfaces.SAM.Bit;
   subtype UART0_SR_TXEMPTY_Field is Interfaces.SAM.Bit;
   subtype UART0_SR_TXBUFE_Field is Interfaces.SAM.Bit;
   subtype UART0_SR_RXBUFF_Field is Interfaces.SAM.Bit;

   --  Status Register
   type UART0_SR_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : UART0_SR_RXRDY_Field;
      --  Read-only. Transmitter Ready
      TXRDY          : UART0_SR_TXRDY_Field;
      --  unspecified
      Reserved_2_2   : Interfaces.SAM.Bit;
      --  Read-only. End of Receiver Transfer
      ENDRX          : UART0_SR_ENDRX_Field;
      --  Read-only. End of Transmitter Transfer
      ENDTX          : UART0_SR_ENDTX_Field;
      --  Read-only. Overrun Error
      OVRE           : UART0_SR_OVRE_Field;
      --  Read-only. Framing Error
      FRAME          : UART0_SR_FRAME_Field;
      --  Read-only. Parity Error
      PARE           : UART0_SR_PARE_Field;
      --  unspecified
      Reserved_8_8   : Interfaces.SAM.Bit;
      --  Read-only. Transmitter Empty
      TXEMPTY        : UART0_SR_TXEMPTY_Field;
      --  unspecified
      Reserved_10_10 : Interfaces.SAM.Bit;
      --  Read-only. Transmission Buffer Empty
      TXBUFE         : UART0_SR_TXBUFE_Field;
      --  Read-only. Receive Buffer Full
      RXBUFF         : UART0_SR_RXBUFF_Field;
      --  unspecified
      Reserved_13_31 : Interfaces.SAM.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_SR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype UART0_RHR_RXCHR_Field is Interfaces.SAM.Byte;

   --  Receive Holding Register
   type UART0_RHR_Register is record
      --  Read-only. Received Character
      RXCHR         : UART0_RHR_RXCHR_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_RHR_Register use record
      RXCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UART0_THR_TXCHR_Field is Interfaces.SAM.Byte;

   --  Transmit Holding Register
   type UART0_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR         : UART0_THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_THR_Register use record
      TXCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UART0_BRGR_CD_Field is Interfaces.SAM.UInt16;

   --  Baud Rate Generator Register
   type UART0_BRGR_Register is record
      --  Clock Divisor
      CD             : UART0_BRGR_CD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART0_RCR_RXCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Counter Register
   type UART0_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : UART0_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART0_TCR_TXCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Counter Register
   type UART0_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : UART0_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART0_RNCR_RXNCTR_Field is Interfaces.SAM.UInt16;

   --  Receive Next Counter Register
   type UART0_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : UART0_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART0_TNCR_TXNCTR_Field is Interfaces.SAM.UInt16;

   --  Transmit Next Counter Register
   type UART0_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : UART0_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.SAM.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART0_PTCR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype UART0_PTCR_RXTDIS_Field is Interfaces.SAM.Bit;
   subtype UART0_PTCR_TXTEN_Field is Interfaces.SAM.Bit;
   subtype UART0_PTCR_TXTDIS_Field is Interfaces.SAM.Bit;

   --  Transfer Control Register
   type UART0_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : UART0_PTCR_RXTEN_Field := 16#0#;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : UART0_PTCR_RXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.SAM.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : UART0_PTCR_TXTEN_Field := 16#0#;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : UART0_PTCR_TXTDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype UART0_PTSR_RXTEN_Field is Interfaces.SAM.Bit;
   subtype UART0_PTSR_TXTEN_Field is Interfaces.SAM.Bit;

   --  Transfer Status Register
   type UART0_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN         : UART0_PTSR_RXTEN_Field;
      --  unspecified
      Reserved_1_7  : Interfaces.SAM.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN         : UART0_PTSR_TXTEN_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Asynchronous Receiver Transmitter 0
   type UART_Peripheral is record
      --  Control Register
      CR   : aliased UART0_CR_Register;
      --  Mode Register
      MR   : aliased UART0_MR_Register;
      --  Interrupt Enable Register
      IER  : aliased UART0_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased UART0_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased UART0_IMR_Register;
      --  Status Register
      SR   : aliased UART0_SR_Register;
      --  Receive Holding Register
      RHR  : aliased UART0_RHR_Register;
      --  Transmit Holding Register
      THR  : aliased UART0_THR_Register;
      --  Baud Rate Generator Register
      BRGR : aliased UART0_BRGR_Register;
      --  Receive Pointer Register
      RPR  : aliased Interfaces.SAM.UInt32;
      --  Receive Counter Register
      RCR  : aliased UART0_RCR_Register;
      --  Transmit Pointer Register
      TPR  : aliased Interfaces.SAM.UInt32;
      --  Transmit Counter Register
      TCR  : aliased UART0_TCR_Register;
      --  Receive Next Pointer Register
      RNPR : aliased Interfaces.SAM.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased UART0_RNCR_Register;
      --  Transmit Next Pointer Register
      TNPR : aliased Interfaces.SAM.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased UART0_TNCR_Register;
      --  Transfer Control Register
      PTCR : aliased UART0_PTCR_Register;
      --  Transfer Status Register
      PTSR : aliased UART0_PTSR_Register;
   end record
     with Volatile;

   for UART_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      IER  at 16#8# range 0 .. 31;
      IDR  at 16#C# range 0 .. 31;
      IMR  at 16#10# range 0 .. 31;
      SR   at 16#14# range 0 .. 31;
      RHR  at 16#18# range 0 .. 31;
      THR  at 16#1C# range 0 .. 31;
      BRGR at 16#20# range 0 .. 31;
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

   --  Universal Asynchronous Receiver Transmitter 0
   UART0_Periph : aliased UART_Peripheral
     with Import, Address => UART0_Base;

   --  Universal Asynchronous Receiver Transmitter 1
   UART1_Periph : aliased UART_Peripheral
     with Import, Address => UART1_Base;

end Interfaces.SAM.UART;
