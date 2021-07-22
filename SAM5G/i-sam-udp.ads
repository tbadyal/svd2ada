--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  USB Device Port
package Interfaces.SAM.UDP is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype UDP_FRM_NUM_FRM_NUM_Field is Interfaces.SAM.UInt11;
   subtype UDP_FRM_NUM_FRM_ERR_Field is Interfaces.SAM.Bit;
   subtype UDP_FRM_NUM_FRM_OK_Field is Interfaces.SAM.Bit;

   --  Frame Number Register
   type UDP_FRM_NUM_Register is record
      --  Read-only. Frame Number as Defined in the Packet Field Formats
      FRM_NUM        : UDP_FRM_NUM_FRM_NUM_Field;
      --  unspecified
      Reserved_11_15 : Interfaces.SAM.UInt5;
      --  Read-only. Frame Error
      FRM_ERR        : UDP_FRM_NUM_FRM_ERR_Field;
      --  Read-only. Frame OK
      FRM_OK         : UDP_FRM_NUM_FRM_OK_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.SAM.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_FRM_NUM_Register use record
      FRM_NUM        at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      FRM_ERR        at 0 range 16 .. 16;
      FRM_OK         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype UDP_GLB_STAT_FADDEN_Field is Interfaces.SAM.Bit;
   subtype UDP_GLB_STAT_CONFG_Field is Interfaces.SAM.Bit;
   subtype UDP_GLB_STAT_ESR_Field is Interfaces.SAM.Bit;
   subtype UDP_GLB_STAT_RSMINPR_Field is Interfaces.SAM.Bit;
   subtype UDP_GLB_STAT_RMWUPE_Field is Interfaces.SAM.Bit;

   --  Global State Register
   type UDP_GLB_STAT_Register is record
      --  Function Address Enable
      FADDEN        : UDP_GLB_STAT_FADDEN_Field := 16#0#;
      --  Configured
      CONFG         : UDP_GLB_STAT_CONFG_Field := 16#0#;
      --  Enable Send Resume
      ESR           : UDP_GLB_STAT_ESR_Field := 16#0#;
      RSMINPR       : UDP_GLB_STAT_RSMINPR_Field := 16#0#;
      --  Remote Wake Up Enable
      RMWUPE        : UDP_GLB_STAT_RMWUPE_Field := 16#1#;
      --  unspecified
      Reserved_5_31 : Interfaces.SAM.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_GLB_STAT_Register use record
      FADDEN        at 0 range 0 .. 0;
      CONFG         at 0 range 1 .. 1;
      ESR           at 0 range 2 .. 2;
      RSMINPR       at 0 range 3 .. 3;
      RMWUPE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype UDP_FADDR_FADD_Field is Interfaces.SAM.UInt7;
   subtype UDP_FADDR_FEN_Field is Interfaces.SAM.Bit;

   --  Function Address Register
   type UDP_FADDR_Register is record
      --  Function Address Value
      FADD          : UDP_FADDR_FADD_Field := 16#0#;
      --  unspecified
      Reserved_7_7  : Interfaces.SAM.Bit := 16#0#;
      --  Function Enable
      FEN           : UDP_FADDR_FEN_Field := 16#1#;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_FADDR_Register use record
      FADD          at 0 range 0 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      FEN           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype UDP_IER_EP0INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IER_EP1INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IER_EP2INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IER_EP3INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IER_EP4INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IER_EP5INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IER_RXSUSP_Field is Interfaces.SAM.Bit;
   subtype UDP_IER_RXRSM_Field is Interfaces.SAM.Bit;
   subtype UDP_IER_EXTRSM_Field is Interfaces.SAM.Bit;
   subtype UDP_IER_SOFINT_Field is Interfaces.SAM.Bit;
   subtype UDP_IER_WAKEUP_Field is Interfaces.SAM.Bit;

   --  Interrupt Enable Register
   type UDP_IER_Register is record
      --  Write-only. Enable Endpoint 0 Interrupt
      EP0INT         : UDP_IER_EP0INT_Field := 16#0#;
      --  Write-only. Enable Endpoint 1 Interrupt
      EP1INT         : UDP_IER_EP1INT_Field := 16#0#;
      --  Write-only. Enable Endpoint 2Interrupt
      EP2INT         : UDP_IER_EP2INT_Field := 16#0#;
      --  Write-only. Enable Endpoint 3 Interrupt
      EP3INT         : UDP_IER_EP3INT_Field := 16#0#;
      --  Write-only. Enable Endpoint 4 Interrupt
      EP4INT         : UDP_IER_EP4INT_Field := 16#0#;
      --  Write-only. Enable Endpoint 5 Interrupt
      EP5INT         : UDP_IER_EP5INT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Enable UDP Suspend Interrupt
      RXSUSP         : UDP_IER_RXSUSP_Field := 16#0#;
      --  Write-only. Enable UDP Resume Interrupt
      RXRSM          : UDP_IER_RXRSM_Field := 16#0#;
      --  Write-only.
      EXTRSM         : UDP_IER_EXTRSM_Field := 16#0#;
      --  Write-only. Enable Start Of Frame Interrupt
      SOFINT         : UDP_IER_SOFINT_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Enable UDP bus Wakeup Interrupt
      WAKEUP         : UDP_IER_WAKEUP_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_IER_Register use record
      EP0INT         at 0 range 0 .. 0;
      EP1INT         at 0 range 1 .. 1;
      EP2INT         at 0 range 2 .. 2;
      EP3INT         at 0 range 3 .. 3;
      EP4INT         at 0 range 4 .. 4;
      EP5INT         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RXSUSP         at 0 range 8 .. 8;
      RXRSM          at 0 range 9 .. 9;
      EXTRSM         at 0 range 10 .. 10;
      SOFINT         at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      WAKEUP         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype UDP_IDR_EP0INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IDR_EP1INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IDR_EP2INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IDR_EP3INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IDR_EP4INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IDR_EP5INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IDR_RXSUSP_Field is Interfaces.SAM.Bit;
   subtype UDP_IDR_RXRSM_Field is Interfaces.SAM.Bit;
   subtype UDP_IDR_EXTRSM_Field is Interfaces.SAM.Bit;
   subtype UDP_IDR_SOFINT_Field is Interfaces.SAM.Bit;
   subtype UDP_IDR_WAKEUP_Field is Interfaces.SAM.Bit;

   --  Interrupt Disable Register
   type UDP_IDR_Register is record
      --  Write-only. Disable Endpoint 0 Interrupt
      EP0INT         : UDP_IDR_EP0INT_Field := 16#0#;
      --  Write-only. Disable Endpoint 1 Interrupt
      EP1INT         : UDP_IDR_EP1INT_Field := 16#0#;
      --  Write-only. Disable Endpoint 2 Interrupt
      EP2INT         : UDP_IDR_EP2INT_Field := 16#0#;
      --  Write-only. Disable Endpoint 3 Interrupt
      EP3INT         : UDP_IDR_EP3INT_Field := 16#0#;
      --  Write-only. Disable Endpoint 4 Interrupt
      EP4INT         : UDP_IDR_EP4INT_Field := 16#0#;
      --  Write-only. Disable Endpoint 5 Interrupt
      EP5INT         : UDP_IDR_EP5INT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2 := 16#0#;
      --  Write-only. Disable UDP Suspend Interrupt
      RXSUSP         : UDP_IDR_RXSUSP_Field := 16#0#;
      --  Write-only. Disable UDP Resume Interrupt
      RXRSM          : UDP_IDR_RXRSM_Field := 16#0#;
      --  Write-only.
      EXTRSM         : UDP_IDR_EXTRSM_Field := 16#0#;
      --  Write-only. Disable Start Of Frame Interrupt
      SOFINT         : UDP_IDR_SOFINT_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.SAM.Bit := 16#0#;
      --  Write-only. Disable USB Bus Interrupt
      WAKEUP         : UDP_IDR_WAKEUP_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_IDR_Register use record
      EP0INT         at 0 range 0 .. 0;
      EP1INT         at 0 range 1 .. 1;
      EP2INT         at 0 range 2 .. 2;
      EP3INT         at 0 range 3 .. 3;
      EP4INT         at 0 range 4 .. 4;
      EP5INT         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RXSUSP         at 0 range 8 .. 8;
      RXRSM          at 0 range 9 .. 9;
      EXTRSM         at 0 range 10 .. 10;
      SOFINT         at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      WAKEUP         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype UDP_IMR_EP0INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IMR_EP1INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IMR_EP2INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IMR_EP3INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IMR_EP4INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IMR_EP5INT_Field is Interfaces.SAM.Bit;
   subtype UDP_IMR_RXSUSP_Field is Interfaces.SAM.Bit;
   subtype UDP_IMR_RXRSM_Field is Interfaces.SAM.Bit;
   subtype UDP_IMR_EXTRSM_Field is Interfaces.SAM.Bit;
   subtype UDP_IMR_SOFINT_Field is Interfaces.SAM.Bit;
   subtype UDP_IMR_BIT12_Field is Interfaces.SAM.Bit;
   subtype UDP_IMR_WAKEUP_Field is Interfaces.SAM.Bit;

   --  Interrupt Mask Register
   type UDP_IMR_Register is record
      --  Read-only. Mask Endpoint 0 Interrupt
      EP0INT         : UDP_IMR_EP0INT_Field;
      --  Read-only. Mask Endpoint 1 Interrupt
      EP1INT         : UDP_IMR_EP1INT_Field;
      --  Read-only. Mask Endpoint 2 Interrupt
      EP2INT         : UDP_IMR_EP2INT_Field;
      --  Read-only. Mask Endpoint 3 Interrupt
      EP3INT         : UDP_IMR_EP3INT_Field;
      --  Read-only. Mask Endpoint 4 Interrupt
      EP4INT         : UDP_IMR_EP4INT_Field;
      --  Read-only. Mask Endpoint 5 Interrupt
      EP5INT         : UDP_IMR_EP5INT_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2;
      --  Read-only. Mask UDP Suspend Interrupt
      RXSUSP         : UDP_IMR_RXSUSP_Field;
      --  Read-only. Mask UDP Resume Interrupt.
      RXRSM          : UDP_IMR_RXRSM_Field;
      --  Read-only.
      EXTRSM         : UDP_IMR_EXTRSM_Field;
      --  Read-only. Mask Start Of Frame Interrupt
      SOFINT         : UDP_IMR_SOFINT_Field;
      --  Read-only. UDP_IMR Bit 12
      BIT12          : UDP_IMR_BIT12_Field;
      --  Read-only. USB Bus WAKEUP Interrupt
      WAKEUP         : UDP_IMR_WAKEUP_Field;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_IMR_Register use record
      EP0INT         at 0 range 0 .. 0;
      EP1INT         at 0 range 1 .. 1;
      EP2INT         at 0 range 2 .. 2;
      EP3INT         at 0 range 3 .. 3;
      EP4INT         at 0 range 4 .. 4;
      EP5INT         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RXSUSP         at 0 range 8 .. 8;
      RXRSM          at 0 range 9 .. 9;
      EXTRSM         at 0 range 10 .. 10;
      SOFINT         at 0 range 11 .. 11;
      BIT12          at 0 range 12 .. 12;
      WAKEUP         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype UDP_ISR_EP0INT_Field is Interfaces.SAM.Bit;
   subtype UDP_ISR_EP1INT_Field is Interfaces.SAM.Bit;
   subtype UDP_ISR_EP2INT_Field is Interfaces.SAM.Bit;
   subtype UDP_ISR_EP3INT_Field is Interfaces.SAM.Bit;
   subtype UDP_ISR_EP4INT_Field is Interfaces.SAM.Bit;
   subtype UDP_ISR_EP5INT_Field is Interfaces.SAM.Bit;
   subtype UDP_ISR_RXSUSP_Field is Interfaces.SAM.Bit;
   subtype UDP_ISR_RXRSM_Field is Interfaces.SAM.Bit;
   subtype UDP_ISR_EXTRSM_Field is Interfaces.SAM.Bit;
   subtype UDP_ISR_SOFINT_Field is Interfaces.SAM.Bit;
   subtype UDP_ISR_ENDBUSRES_Field is Interfaces.SAM.Bit;
   subtype UDP_ISR_WAKEUP_Field is Interfaces.SAM.Bit;

   --  Interrupt Status Register
   type UDP_ISR_Register is record
      --  Read-only. Endpoint 0 Interrupt Status
      EP0INT         : UDP_ISR_EP0INT_Field;
      --  Read-only. Endpoint 1 Interrupt Status
      EP1INT         : UDP_ISR_EP1INT_Field;
      --  Read-only. Endpoint 2 Interrupt Status
      EP2INT         : UDP_ISR_EP2INT_Field;
      --  Read-only. Endpoint 3 Interrupt Status
      EP3INT         : UDP_ISR_EP3INT_Field;
      --  Read-only. Endpoint 4 Interrupt Status
      EP4INT         : UDP_ISR_EP4INT_Field;
      --  Read-only. Endpoint 5 Interrupt Status
      EP5INT         : UDP_ISR_EP5INT_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2;
      --  Read-only. UDP Suspend Interrupt Status
      RXSUSP         : UDP_ISR_RXSUSP_Field;
      --  Read-only. UDP Resume Interrupt Status
      RXRSM          : UDP_ISR_RXRSM_Field;
      --  Read-only.
      EXTRSM         : UDP_ISR_EXTRSM_Field;
      --  Read-only. Start of Frame Interrupt Status
      SOFINT         : UDP_ISR_SOFINT_Field;
      --  Read-only. End of BUS Reset Interrupt Status
      ENDBUSRES      : UDP_ISR_ENDBUSRES_Field;
      --  Read-only. UDP Resume Interrupt Status
      WAKEUP         : UDP_ISR_WAKEUP_Field;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_ISR_Register use record
      EP0INT         at 0 range 0 .. 0;
      EP1INT         at 0 range 1 .. 1;
      EP2INT         at 0 range 2 .. 2;
      EP3INT         at 0 range 3 .. 3;
      EP4INT         at 0 range 4 .. 4;
      EP5INT         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RXSUSP         at 0 range 8 .. 8;
      RXRSM          at 0 range 9 .. 9;
      EXTRSM         at 0 range 10 .. 10;
      SOFINT         at 0 range 11 .. 11;
      ENDBUSRES      at 0 range 12 .. 12;
      WAKEUP         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype UDP_ICR_RXSUSP_Field is Interfaces.SAM.Bit;
   subtype UDP_ICR_RXRSM_Field is Interfaces.SAM.Bit;
   subtype UDP_ICR_EXTRSM_Field is Interfaces.SAM.Bit;
   subtype UDP_ICR_SOFINT_Field is Interfaces.SAM.Bit;
   subtype UDP_ICR_ENDBUSRES_Field is Interfaces.SAM.Bit;
   subtype UDP_ICR_WAKEUP_Field is Interfaces.SAM.Bit;

   --  Interrupt Clear Register
   type UDP_ICR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte := 16#0#;
      --  Write-only. Clear UDP Suspend Interrupt
      RXSUSP         : UDP_ICR_RXSUSP_Field := 16#0#;
      --  Write-only. Clear UDP Resume Interrupt
      RXRSM          : UDP_ICR_RXRSM_Field := 16#0#;
      --  Write-only.
      EXTRSM         : UDP_ICR_EXTRSM_Field := 16#0#;
      --  Write-only. Clear Start Of Frame Interrupt
      SOFINT         : UDP_ICR_SOFINT_Field := 16#0#;
      --  Write-only. Clear End of Bus Reset Interrupt
      ENDBUSRES      : UDP_ICR_ENDBUSRES_Field := 16#0#;
      --  Write-only. Clear Wakeup Interrupt
      WAKEUP         : UDP_ICR_WAKEUP_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.SAM.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_ICR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      RXSUSP         at 0 range 8 .. 8;
      RXRSM          at 0 range 9 .. 9;
      EXTRSM         at 0 range 10 .. 10;
      SOFINT         at 0 range 11 .. 11;
      ENDBUSRES      at 0 range 12 .. 12;
      WAKEUP         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  UDP_RST_EP_EP array element
   subtype UDP_RST_EP_EP_Element is Interfaces.SAM.Bit;

   --  UDP_RST_EP_EP array
   type UDP_RST_EP_EP_Field_Array is array (0 .. 5) of UDP_RST_EP_EP_Element
     with Component_Size => 1, Size => 6;

   --  Type definition for UDP_RST_EP_EP
   type UDP_RST_EP_EP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EP as a value
            Val : Interfaces.SAM.UInt6;
         when True =>
            --  EP as an array
            Arr : UDP_RST_EP_EP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for UDP_RST_EP_EP_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Reset Endpoint Register
   type UDP_RST_EP_Register is record
      --  Reset Endpoint 0
      EP            : UDP_RST_EP_EP_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : Interfaces.SAM.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_RST_EP_Register use record
      EP            at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype UDP_CSR_CONTROL_BULK_TXCOMP_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_CONTROL_BULK_RX_DATA_BK0_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_CONTROL_BULK_RXSETUP_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_CONTROL_BULK_STALLSENT_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_CONTROL_BULK_TXPKTRDY_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_CONTROL_BULK_FORCESTALL_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_CONTROL_BULK_RX_DATA_BK1_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_CONTROL_BULK_DIR_Field is Interfaces.SAM.Bit;

   --  Endpoint Type
   type CSR_CONTROL_BULK_EPTYPE_Field is
     (--  Control
      CTRL,
      --  Isochronous OUT
      ISO_OUT,
      --  Bulk OUT
      BULK_OUT,
      --  Interrupt OUT
      INT_OUT,
      --  Isochronous IN
      ISO_IN,
      --  Bulk IN
      BULK_IN,
      --  Interrupt IN
      INT_IN)
     with Size => 3;
   for CSR_CONTROL_BULK_EPTYPE_Field use
     (CTRL => 0,
      ISO_OUT => 1,
      BULK_OUT => 2,
      INT_OUT => 3,
      ISO_IN => 5,
      BULK_IN => 6,
      INT_IN => 7);

   subtype UDP_CSR_CONTROL_BULK_DTGLE_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_CONTROL_BULK_EPEDS_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_CONTROL_BULK_RXBYTECNT_Field is Interfaces.SAM.UInt11;

   --  Endpoint Control and Status Register
   type UDP_CSR_CONTROL_BULK_Register is record
      --  Generates an IN Packet with Data Previously Written in the DPR
      TXCOMP         : UDP_CSR_CONTROL_BULK_TXCOMP_Field := 16#0#;
      --  Receive Data Bank 0
      RX_DATA_BK0    : UDP_CSR_CONTROL_BULK_RX_DATA_BK0_Field := 16#0#;
      --  Received Setup
      RXSETUP        : UDP_CSR_CONTROL_BULK_RXSETUP_Field := 16#0#;
      --  Stall Sent
      STALLSENT      : UDP_CSR_CONTROL_BULK_STALLSENT_Field := 16#0#;
      --  Transmit Packet Ready
      TXPKTRDY       : UDP_CSR_CONTROL_BULK_TXPKTRDY_Field := 16#0#;
      --  Force Stall (used by Control, Bulk and Isochronous Endpoints)
      FORCESTALL     : UDP_CSR_CONTROL_BULK_FORCESTALL_Field := 16#0#;
      --  Receive Data Bank 1 (only used by endpoints with ping-pong
      --  attributes)
      RX_DATA_BK1    : UDP_CSR_CONTROL_BULK_RX_DATA_BK1_Field := 16#0#;
      --  Transfer Direction (only available for control endpoints)
      DIR            : UDP_CSR_CONTROL_BULK_DIR_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : CSR_CONTROL_BULK_EPTYPE_Field :=
                        Interfaces.SAM.UDP.CTRL;
      --  Data Toggle
      DTGLE          : UDP_CSR_CONTROL_BULK_DTGLE_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : Interfaces.SAM.UInt3 := 16#0#;
      --  Endpoint Enable Disable
      EPEDS          : UDP_CSR_CONTROL_BULK_EPEDS_Field := 16#0#;
      --  Number of Bytes Available in the FIFO
      RXBYTECNT      : UDP_CSR_CONTROL_BULK_RXBYTECNT_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.SAM.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_CSR_CONTROL_BULK_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RX_DATA_BK0    at 0 range 1 .. 1;
      RXSETUP        at 0 range 2 .. 2;
      STALLSENT      at 0 range 3 .. 3;
      TXPKTRDY       at 0 range 4 .. 4;
      FORCESTALL     at 0 range 5 .. 5;
      RX_DATA_BK1    at 0 range 6 .. 6;
      DIR            at 0 range 7 .. 7;
      EPTYPE         at 0 range 8 .. 10;
      DTGLE          at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EPEDS          at 0 range 15 .. 15;
      RXBYTECNT      at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Endpoint Control and Status Register
   type UDP_CSR_CONTROL_BULK_Registers is array (0 .. 5)
     of UDP_CSR_CONTROL_BULK_Register;

   subtype UDP_CSR_ISOCHRONOUS_TXCOMP_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_ISOCHRONOUS_RX_DATA_BK0_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_ISOCHRONOUS_RXSETUP_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_ISOCHRONOUS_ISOERROR_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_ISOCHRONOUS_TXPKTRDY_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_ISOCHRONOUS_FORCESTALL_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_ISOCHRONOUS_RX_DATA_BK1_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_ISOCHRONOUS_DIR_Field is Interfaces.SAM.Bit;

   --  Endpoint Type
   type CSR_ISOCHRONOUS_EPTYPE_Field is
     (--  Control
      CTRL,
      --  Isochronous OUT
      ISO_OUT,
      --  Bulk OUT
      BULK_OUT,
      --  Interrupt OUT
      INT_OUT,
      --  Isochronous IN
      ISO_IN,
      --  Bulk IN
      BULK_IN,
      --  Interrupt IN
      INT_IN)
     with Size => 3;
   for CSR_ISOCHRONOUS_EPTYPE_Field use
     (CTRL => 0,
      ISO_OUT => 1,
      BULK_OUT => 2,
      INT_OUT => 3,
      ISO_IN => 5,
      BULK_IN => 6,
      INT_IN => 7);

   subtype UDP_CSR_ISOCHRONOUS_DTGLE_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_ISOCHRONOUS_EPEDS_Field is Interfaces.SAM.Bit;
   subtype UDP_CSR_ISOCHRONOUS_RXBYTECNT_Field is Interfaces.SAM.UInt11;

   --  Endpoint Control and Status Register
   type UDP_CSR_ISOCHRONOUS_Register is record
      --  Generates an IN Packet with Data Previously Written in the DPR
      TXCOMP         : UDP_CSR_ISOCHRONOUS_TXCOMP_Field := 16#0#;
      --  Receive Data Bank 0
      RX_DATA_BK0    : UDP_CSR_ISOCHRONOUS_RX_DATA_BK0_Field := 16#0#;
      --  Received Setup
      RXSETUP        : UDP_CSR_ISOCHRONOUS_RXSETUP_Field := 16#0#;
      --  A CRC error has been detected in an isochronous transfer
      ISOERROR       : UDP_CSR_ISOCHRONOUS_ISOERROR_Field := 16#0#;
      --  Transmit Packet Ready
      TXPKTRDY       : UDP_CSR_ISOCHRONOUS_TXPKTRDY_Field := 16#0#;
      --  Force Stall (used by Control, Bulk and Isochronous Endpoints)
      FORCESTALL     : UDP_CSR_ISOCHRONOUS_FORCESTALL_Field := 16#0#;
      --  Receive Data Bank 1 (only used by endpoints with ping-pong
      --  attributes)
      RX_DATA_BK1    : UDP_CSR_ISOCHRONOUS_RX_DATA_BK1_Field := 16#0#;
      --  Transfer Direction (only available for control endpoints)
      DIR            : UDP_CSR_ISOCHRONOUS_DIR_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : CSR_ISOCHRONOUS_EPTYPE_Field :=
                        Interfaces.SAM.UDP.CTRL;
      --  Data Toggle
      DTGLE          : UDP_CSR_ISOCHRONOUS_DTGLE_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : Interfaces.SAM.UInt3 := 16#0#;
      --  Endpoint Enable Disable
      EPEDS          : UDP_CSR_ISOCHRONOUS_EPEDS_Field := 16#0#;
      --  Number of Bytes Available in the FIFO
      RXBYTECNT      : UDP_CSR_ISOCHRONOUS_RXBYTECNT_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.SAM.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_CSR_ISOCHRONOUS_Register use record
      TXCOMP         at 0 range 0 .. 0;
      RX_DATA_BK0    at 0 range 1 .. 1;
      RXSETUP        at 0 range 2 .. 2;
      ISOERROR       at 0 range 3 .. 3;
      TXPKTRDY       at 0 range 4 .. 4;
      FORCESTALL     at 0 range 5 .. 5;
      RX_DATA_BK1    at 0 range 6 .. 6;
      DIR            at 0 range 7 .. 7;
      EPTYPE         at 0 range 8 .. 10;
      DTGLE          at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      EPEDS          at 0 range 15 .. 15;
      RXBYTECNT      at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Endpoint Control and Status Register
   type UDP_CSR_ISOCHRONOUS_Registers is array (0 .. 5)
     of UDP_CSR_ISOCHRONOUS_Register;

   subtype UDP_FDR_FIFO_DATA_Field is Interfaces.SAM.Byte;

   --  Endpoint FIFO Data Register
   type UDP_FDR_Register is record
      --  FIFO Data Value
      FIFO_DATA     : UDP_FDR_FIFO_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_FDR_Register use record
      FIFO_DATA     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Endpoint FIFO Data Register
   type UDP_FDR_Registers is array (0 .. 5) of UDP_FDR_Register;

   subtype UDP_TXVC_TXVDIS_Field is Interfaces.SAM.Bit;
   subtype UDP_TXVC_PUON_Field is Interfaces.SAM.Bit;

   --  Transceiver Control Register
   type UDP_TXVC_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.SAM.Byte := 16#0#;
      --  Transceiver Disable
      TXVDIS         : UDP_TXVC_TXVDIS_Field := 16#1#;
      --  Pull-up On
      PUON           : UDP_TXVC_PUON_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.SAM.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UDP_TXVC_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TXVDIS         at 0 range 8 .. 8;
      PUON           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type UDP_Disc is
     (CONTROL_BULK,
      ISOCHRONOUS);

   --  USB Device Port
   type UDP_Peripheral
     (Discriminent : UDP_Disc := CONTROL_BULK)
   is record
      --  Frame Number Register
      FRM_NUM          : aliased UDP_FRM_NUM_Register;
      --  Global State Register
      GLB_STAT         : aliased UDP_GLB_STAT_Register;
      --  Function Address Register
      FADDR            : aliased UDP_FADDR_Register;
      --  Interrupt Enable Register
      IER              : aliased UDP_IER_Register;
      --  Interrupt Disable Register
      IDR              : aliased UDP_IDR_Register;
      --  Interrupt Mask Register
      IMR              : aliased UDP_IMR_Register;
      --  Interrupt Status Register
      ISR              : aliased UDP_ISR_Register;
      --  Interrupt Clear Register
      ICR              : aliased UDP_ICR_Register;
      --  Reset Endpoint Register
      RST_EP           : aliased UDP_RST_EP_Register;
      --  Endpoint FIFO Data Register
      FDR              : aliased UDP_FDR_Registers;
      --  Transceiver Control Register
      TXVC             : aliased UDP_TXVC_Register;
      case Discriminent is
         when CONTROL_BULK =>
            --  Endpoint Control and Status Register
            CSR_CONTROL_BULK : aliased UDP_CSR_CONTROL_BULK_Registers;
         when ISOCHRONOUS =>
            --  Endpoint Control and Status Register
            CSR_ISOCHRONOUS : aliased UDP_CSR_ISOCHRONOUS_Registers;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for UDP_Peripheral use record
      FRM_NUM          at 16#0# range 0 .. 31;
      GLB_STAT         at 16#4# range 0 .. 31;
      FADDR            at 16#8# range 0 .. 31;
      IER              at 16#10# range 0 .. 31;
      IDR              at 16#14# range 0 .. 31;
      IMR              at 16#18# range 0 .. 31;
      ISR              at 16#1C# range 0 .. 31;
      ICR              at 16#20# range 0 .. 31;
      RST_EP           at 16#28# range 0 .. 31;
      FDR              at 16#50# range 0 .. 191;
      TXVC             at 16#74# range 0 .. 31;
      CSR_CONTROL_BULK at 16#30# range 0 .. 191;
      CSR_ISOCHRONOUS  at 16#30# range 0 .. 191;
   end record;

   --  USB Device Port
   UDP_Periph : aliased UDP_Peripheral
     with Import, Address => UDP_Base;

end Interfaces.SAM.UDP;
