// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// ctrl
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of addr
//        bit 31~0 - addr[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of val_r
//        bit 31~0 - val_r[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDUMMY1_CTRL_ADDR_AP_CTRL    0x00
#define XDUMMY1_CTRL_ADDR_GIE        0x04
#define XDUMMY1_CTRL_ADDR_IER        0x08
#define XDUMMY1_CTRL_ADDR_ISR        0x0c
#define XDUMMY1_CTRL_ADDR_ADDR_DATA  0x10
#define XDUMMY1_CTRL_BITS_ADDR_DATA  32
#define XDUMMY1_CTRL_ADDR_VAL_R_DATA 0x18
#define XDUMMY1_CTRL_BITS_VAL_R_DATA 32

