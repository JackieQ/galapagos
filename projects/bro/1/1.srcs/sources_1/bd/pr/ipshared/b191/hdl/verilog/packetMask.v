// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="packetMask,hls_ip_2016_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcku115-flva1517-2-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.000000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=285,HLS_SYN_LUT=157}" *)

module packetMask (
        ap_clk,
        ap_rst_n,
        packetIn_TDATA,
        packetIn_TVALID,
        packetIn_TREADY,
        packetIn_TLAST,
        packetIn_TKEEP,
        packetOut_TDATA,
        packetOut_TVALID,
        packetOut_TREADY,
        packetOut_TLAST,
        packetOut_TKEEP,
        id_V
);

parameter    ap_ST_fsm_state1 = 4'b1;
parameter    ap_ST_fsm_state2 = 4'b10;
parameter    ap_ST_fsm_state3 = 4'b100;
parameter    ap_ST_fsm_state4 = 4'b1000;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv16_0 = 16'b0000000000000000;

input   ap_clk;
input   ap_rst_n;
input  [63:0] packetIn_TDATA;
input   packetIn_TVALID;
output   packetIn_TREADY;
input  [0:0] packetIn_TLAST;
input  [7:0] packetIn_TKEEP;
output  [63:0] packetOut_TDATA;
output   packetOut_TVALID;
input   packetOut_TREADY;
output  [0:0] packetOut_TLAST;
output  [7:0] packetOut_TKEEP;
input  [31:0] id_V;

reg    ap_rst_n_inv;
reg   [63:0] packetIn_V_data_V_0_data_out;
wire    packetIn_V_data_V_0_vld_in;
wire    packetIn_V_data_V_0_vld_out;
wire    packetIn_V_data_V_0_ack_in;
reg    packetIn_V_data_V_0_ack_out;
reg   [63:0] packetIn_V_data_V_0_payload_A;
reg   [63:0] packetIn_V_data_V_0_payload_B;
reg    packetIn_V_data_V_0_sel_rd;
reg    packetIn_V_data_V_0_sel_wr;
wire    packetIn_V_data_V_0_sel;
wire    packetIn_V_data_V_0_load_A;
wire    packetIn_V_data_V_0_load_B;
reg   [1:0] packetIn_V_data_V_0_state;
wire    packetIn_V_data_V_0_state_cmp_full;
reg   [0:0] packetIn_V_last_V_0_data_out;
wire    packetIn_V_last_V_0_vld_in;
wire    packetIn_V_last_V_0_vld_out;
wire    packetIn_V_last_V_0_ack_in;
reg    packetIn_V_last_V_0_ack_out;
reg   [0:0] packetIn_V_last_V_0_payload_A;
reg   [0:0] packetIn_V_last_V_0_payload_B;
reg    packetIn_V_last_V_0_sel_rd;
reg    packetIn_V_last_V_0_sel_wr;
wire    packetIn_V_last_V_0_sel;
wire    packetIn_V_last_V_0_load_A;
wire    packetIn_V_last_V_0_load_B;
reg   [1:0] packetIn_V_last_V_0_state;
wire    packetIn_V_last_V_0_state_cmp_full;
wire    packetIn_V_keep_V_0_vld_in;
reg    packetIn_V_keep_V_0_ack_out;
reg   [1:0] packetIn_V_keep_V_0_state;
reg   [63:0] packetOut_V_data_V_1_data_out;
reg    packetOut_V_data_V_1_vld_in;
wire    packetOut_V_data_V_1_vld_out;
wire    packetOut_V_data_V_1_ack_in;
wire    packetOut_V_data_V_1_ack_out;
reg   [63:0] packetOut_V_data_V_1_payload_A;
reg   [63:0] packetOut_V_data_V_1_payload_B;
reg    packetOut_V_data_V_1_sel_rd;
reg    packetOut_V_data_V_1_sel_wr;
wire    packetOut_V_data_V_1_sel;
wire    packetOut_V_data_V_1_load_A;
wire    packetOut_V_data_V_1_load_B;
reg   [1:0] packetOut_V_data_V_1_state;
wire    packetOut_V_data_V_1_state_cmp_full;
reg   [0:0] packetOut_V_last_V_1_data_out;
reg    packetOut_V_last_V_1_vld_in;
wire    packetOut_V_last_V_1_vld_out;
wire    packetOut_V_last_V_1_ack_in;
wire    packetOut_V_last_V_1_ack_out;
reg   [0:0] packetOut_V_last_V_1_payload_A;
reg   [0:0] packetOut_V_last_V_1_payload_B;
reg    packetOut_V_last_V_1_sel_rd;
reg    packetOut_V_last_V_1_sel_wr;
wire    packetOut_V_last_V_1_sel;
wire    packetOut_V_last_V_1_load_A;
wire    packetOut_V_last_V_1_load_B;
reg   [1:0] packetOut_V_last_V_1_state;
wire    packetOut_V_last_V_1_state_cmp_full;
wire   [7:0] packetOut_V_keep_V_1_data_out;
reg    packetOut_V_keep_V_1_vld_in;
wire    packetOut_V_keep_V_1_vld_out;
wire    packetOut_V_keep_V_1_ack_out;
reg    packetOut_V_keep_V_1_sel_rd;
wire    packetOut_V_keep_V_1_sel;
reg   [1:0] packetOut_V_keep_V_1_state;
reg    packetIn_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state3;
reg    packetOut_TDATA_blk_n;
wire   [0:0] ap_CS_fsm_state4;
wire   [63:0] tmp_data_V_1_fu_109_p1;
wire   [7:0] tmp_fu_85_p4;
wire   [7:0] tmp_1_fu_95_p1;
wire   [31:0] r_V_fu_99_p4;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 packetIn_V_data_V_0_sel_rd = 1'b0;
#0 packetIn_V_data_V_0_sel_wr = 1'b0;
#0 packetIn_V_data_V_0_state = 2'b00;
#0 packetIn_V_last_V_0_sel_rd = 1'b0;
#0 packetIn_V_last_V_0_sel_wr = 1'b0;
#0 packetIn_V_last_V_0_state = 2'b00;
#0 packetIn_V_keep_V_0_state = 2'b00;
#0 packetOut_V_data_V_1_sel_rd = 1'b0;
#0 packetOut_V_data_V_1_sel_wr = 1'b0;
#0 packetOut_V_data_V_1_state = 2'b00;
#0 packetOut_V_last_V_1_sel_rd = 1'b0;
#0 packetOut_V_last_V_1_sel_wr = 1'b0;
#0 packetOut_V_last_V_1_state = 2'b00;
#0 packetOut_V_keep_V_1_sel_rd = 1'b0;
#0 packetOut_V_keep_V_1_state = 2'b00;
#0 ap_CS_fsm = 4'b1;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetIn_V_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == packetIn_V_data_V_0_ack_out) & (1'b1 == packetIn_V_data_V_0_vld_out))) begin
            packetIn_V_data_V_0_sel_rd <= ~packetIn_V_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetIn_V_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == packetIn_V_data_V_0_vld_in) & (1'b1 == packetIn_V_data_V_0_ack_in))) begin
            packetIn_V_data_V_0_sel_wr <= ~packetIn_V_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetIn_V_data_V_0_state <= ap_const_lv2_0;
    end else begin
        if ((((1'b0 == packetIn_V_data_V_0_vld_in) & (1'b1 == packetIn_V_data_V_0_ack_out) & (packetIn_V_data_V_0_state == ap_const_lv2_3)) | ((1'b0 == packetIn_V_data_V_0_vld_in) & (packetIn_V_data_V_0_state == ap_const_lv2_2)))) begin
            packetIn_V_data_V_0_state <= ap_const_lv2_2;
        end else if ((((1'b1 == packetIn_V_data_V_0_vld_in) & (1'b0 == packetIn_V_data_V_0_ack_out) & (packetIn_V_data_V_0_state == ap_const_lv2_3)) | ((1'b0 == packetIn_V_data_V_0_ack_out) & (packetIn_V_data_V_0_state == ap_const_lv2_1)))) begin
            packetIn_V_data_V_0_state <= ap_const_lv2_1;
        end else if ((((1'b1 == packetIn_V_data_V_0_vld_in) & (packetIn_V_data_V_0_state == ap_const_lv2_2)) | ((1'b1 == packetIn_V_data_V_0_ack_out) & (packetIn_V_data_V_0_state == ap_const_lv2_1)) | ((packetIn_V_data_V_0_state == ap_const_lv2_3) & ~((1'b1 == packetIn_V_data_V_0_vld_in) & (1'b0 == packetIn_V_data_V_0_ack_out)) & ~((1'b0 == packetIn_V_data_V_0_vld_in) & (1'b1 == packetIn_V_data_V_0_ack_out))))) begin
            packetIn_V_data_V_0_state <= ap_const_lv2_3;
        end else begin
            packetIn_V_data_V_0_state <= ap_const_lv2_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetIn_V_keep_V_0_state <= ap_const_lv2_0;
    end else begin
        if ((((1'b0 == packetIn_V_keep_V_0_vld_in) & (1'b1 == packetIn_V_keep_V_0_ack_out) & (ap_const_lv2_3 == packetIn_V_keep_V_0_state)) | ((1'b0 == packetIn_V_keep_V_0_vld_in) & (ap_const_lv2_2 == packetIn_V_keep_V_0_state)))) begin
            packetIn_V_keep_V_0_state <= ap_const_lv2_2;
        end else if ((((1'b1 == packetIn_V_keep_V_0_vld_in) & (1'b0 == packetIn_V_keep_V_0_ack_out) & (ap_const_lv2_3 == packetIn_V_keep_V_0_state)) | ((1'b0 == packetIn_V_keep_V_0_ack_out) & (ap_const_lv2_1 == packetIn_V_keep_V_0_state)))) begin
            packetIn_V_keep_V_0_state <= ap_const_lv2_1;
        end else if ((((1'b1 == packetIn_V_keep_V_0_vld_in) & (ap_const_lv2_2 == packetIn_V_keep_V_0_state)) | ((1'b1 == packetIn_V_keep_V_0_ack_out) & (ap_const_lv2_1 == packetIn_V_keep_V_0_state)) | ((ap_const_lv2_3 == packetIn_V_keep_V_0_state) & ~((1'b1 == packetIn_V_keep_V_0_vld_in) & (1'b0 == packetIn_V_keep_V_0_ack_out)) & ~((1'b0 == packetIn_V_keep_V_0_vld_in) & (1'b1 == packetIn_V_keep_V_0_ack_out))))) begin
            packetIn_V_keep_V_0_state <= ap_const_lv2_3;
        end else begin
            packetIn_V_keep_V_0_state <= ap_const_lv2_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetIn_V_last_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == packetIn_V_last_V_0_ack_out) & (1'b1 == packetIn_V_last_V_0_vld_out))) begin
            packetIn_V_last_V_0_sel_rd <= ~packetIn_V_last_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetIn_V_last_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == packetIn_V_last_V_0_vld_in) & (1'b1 == packetIn_V_last_V_0_ack_in))) begin
            packetIn_V_last_V_0_sel_wr <= ~packetIn_V_last_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetIn_V_last_V_0_state <= ap_const_lv2_0;
    end else begin
        if ((((1'b0 == packetIn_V_last_V_0_vld_in) & (1'b1 == packetIn_V_last_V_0_ack_out) & (ap_const_lv2_3 == packetIn_V_last_V_0_state)) | ((1'b0 == packetIn_V_last_V_0_vld_in) & (ap_const_lv2_2 == packetIn_V_last_V_0_state)))) begin
            packetIn_V_last_V_0_state <= ap_const_lv2_2;
        end else if ((((1'b1 == packetIn_V_last_V_0_vld_in) & (1'b0 == packetIn_V_last_V_0_ack_out) & (ap_const_lv2_3 == packetIn_V_last_V_0_state)) | ((1'b0 == packetIn_V_last_V_0_ack_out) & (ap_const_lv2_1 == packetIn_V_last_V_0_state)))) begin
            packetIn_V_last_V_0_state <= ap_const_lv2_1;
        end else if ((((1'b1 == packetIn_V_last_V_0_vld_in) & (ap_const_lv2_2 == packetIn_V_last_V_0_state)) | ((1'b1 == packetIn_V_last_V_0_ack_out) & (ap_const_lv2_1 == packetIn_V_last_V_0_state)) | ((ap_const_lv2_3 == packetIn_V_last_V_0_state) & ~((1'b1 == packetIn_V_last_V_0_vld_in) & (1'b0 == packetIn_V_last_V_0_ack_out)) & ~((1'b0 == packetIn_V_last_V_0_vld_in) & (1'b1 == packetIn_V_last_V_0_ack_out))))) begin
            packetIn_V_last_V_0_state <= ap_const_lv2_3;
        end else begin
            packetIn_V_last_V_0_state <= ap_const_lv2_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetOut_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == packetOut_V_data_V_1_ack_out) & (1'b1 == packetOut_V_data_V_1_vld_out))) begin
            packetOut_V_data_V_1_sel_rd <= ~packetOut_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetOut_V_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == packetOut_V_data_V_1_vld_in) & (1'b1 == packetOut_V_data_V_1_ack_in))) begin
            packetOut_V_data_V_1_sel_wr <= ~packetOut_V_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetOut_V_data_V_1_state <= ap_const_lv2_0;
    end else begin
        if ((((1'b0 == packetOut_V_data_V_1_vld_in) & (1'b1 == packetOut_V_data_V_1_ack_out) & (ap_const_lv2_3 == packetOut_V_data_V_1_state)) | ((1'b0 == packetOut_V_data_V_1_vld_in) & (ap_const_lv2_2 == packetOut_V_data_V_1_state)))) begin
            packetOut_V_data_V_1_state <= ap_const_lv2_2;
        end else if ((((1'b1 == packetOut_V_data_V_1_vld_in) & (1'b0 == packetOut_V_data_V_1_ack_out) & (ap_const_lv2_3 == packetOut_V_data_V_1_state)) | ((1'b0 == packetOut_V_data_V_1_ack_out) & (ap_const_lv2_1 == packetOut_V_data_V_1_state)))) begin
            packetOut_V_data_V_1_state <= ap_const_lv2_1;
        end else if ((((1'b1 == packetOut_V_data_V_1_vld_in) & (ap_const_lv2_2 == packetOut_V_data_V_1_state)) | ((1'b1 == packetOut_V_data_V_1_ack_out) & (ap_const_lv2_1 == packetOut_V_data_V_1_state)) | ((ap_const_lv2_3 == packetOut_V_data_V_1_state) & ~((1'b1 == packetOut_V_data_V_1_vld_in) & (1'b0 == packetOut_V_data_V_1_ack_out)) & ~((1'b0 == packetOut_V_data_V_1_vld_in) & (1'b1 == packetOut_V_data_V_1_ack_out))))) begin
            packetOut_V_data_V_1_state <= ap_const_lv2_3;
        end else begin
            packetOut_V_data_V_1_state <= ap_const_lv2_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetOut_V_keep_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == packetOut_V_keep_V_1_ack_out) & (1'b1 == packetOut_V_keep_V_1_vld_out))) begin
            packetOut_V_keep_V_1_sel_rd <= ~packetOut_V_keep_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetOut_V_keep_V_1_state <= ap_const_lv2_0;
    end else begin
        if ((((1'b0 == packetOut_V_keep_V_1_vld_in) & (1'b1 == packetOut_V_keep_V_1_ack_out) & (ap_const_lv2_3 == packetOut_V_keep_V_1_state)) | ((1'b0 == packetOut_V_keep_V_1_vld_in) & (ap_const_lv2_2 == packetOut_V_keep_V_1_state)))) begin
            packetOut_V_keep_V_1_state <= ap_const_lv2_2;
        end else if ((((1'b1 == packetOut_V_keep_V_1_vld_in) & (1'b0 == packetOut_V_keep_V_1_ack_out) & (ap_const_lv2_3 == packetOut_V_keep_V_1_state)) | ((1'b0 == packetOut_V_keep_V_1_ack_out) & (ap_const_lv2_1 == packetOut_V_keep_V_1_state)))) begin
            packetOut_V_keep_V_1_state <= ap_const_lv2_1;
        end else if ((((1'b1 == packetOut_V_keep_V_1_vld_in) & (ap_const_lv2_2 == packetOut_V_keep_V_1_state)) | ((1'b1 == packetOut_V_keep_V_1_ack_out) & (ap_const_lv2_1 == packetOut_V_keep_V_1_state)) | ((ap_const_lv2_3 == packetOut_V_keep_V_1_state) & ~((1'b1 == packetOut_V_keep_V_1_vld_in) & (1'b0 == packetOut_V_keep_V_1_ack_out)) & ~((1'b0 == packetOut_V_keep_V_1_vld_in) & (1'b1 == packetOut_V_keep_V_1_ack_out))))) begin
            packetOut_V_keep_V_1_state <= ap_const_lv2_3;
        end else begin
            packetOut_V_keep_V_1_state <= ap_const_lv2_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetOut_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == packetOut_V_last_V_1_ack_out) & (1'b1 == packetOut_V_last_V_1_vld_out))) begin
            packetOut_V_last_V_1_sel_rd <= ~packetOut_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetOut_V_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == packetOut_V_last_V_1_vld_in) & (1'b1 == packetOut_V_last_V_1_ack_in))) begin
            packetOut_V_last_V_1_sel_wr <= ~packetOut_V_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        packetOut_V_last_V_1_state <= ap_const_lv2_0;
    end else begin
        if ((((1'b0 == packetOut_V_last_V_1_vld_in) & (1'b1 == packetOut_V_last_V_1_ack_out) & (ap_const_lv2_3 == packetOut_V_last_V_1_state)) | ((1'b0 == packetOut_V_last_V_1_vld_in) & (ap_const_lv2_2 == packetOut_V_last_V_1_state)))) begin
            packetOut_V_last_V_1_state <= ap_const_lv2_2;
        end else if ((((1'b1 == packetOut_V_last_V_1_vld_in) & (1'b0 == packetOut_V_last_V_1_ack_out) & (ap_const_lv2_3 == packetOut_V_last_V_1_state)) | ((1'b0 == packetOut_V_last_V_1_ack_out) & (ap_const_lv2_1 == packetOut_V_last_V_1_state)))) begin
            packetOut_V_last_V_1_state <= ap_const_lv2_1;
        end else if ((((1'b1 == packetOut_V_last_V_1_vld_in) & (ap_const_lv2_2 == packetOut_V_last_V_1_state)) | ((1'b1 == packetOut_V_last_V_1_ack_out) & (ap_const_lv2_1 == packetOut_V_last_V_1_state)) | ((ap_const_lv2_3 == packetOut_V_last_V_1_state) & ~((1'b1 == packetOut_V_last_V_1_vld_in) & (1'b0 == packetOut_V_last_V_1_ack_out)) & ~((1'b0 == packetOut_V_last_V_1_vld_in) & (1'b1 == packetOut_V_last_V_1_ack_out))))) begin
            packetOut_V_last_V_1_state <= ap_const_lv2_3;
        end else begin
            packetOut_V_last_V_1_state <= ap_const_lv2_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == packetIn_V_data_V_0_load_A)) begin
        packetIn_V_data_V_0_payload_A <= packetIn_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == packetIn_V_data_V_0_load_B)) begin
        packetIn_V_data_V_0_payload_B <= packetIn_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == packetIn_V_last_V_0_load_A)) begin
        packetIn_V_last_V_0_payload_A <= packetIn_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == packetIn_V_last_V_0_load_B)) begin
        packetIn_V_last_V_0_payload_B <= packetIn_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == packetOut_V_data_V_1_load_A)) begin
        packetOut_V_data_V_1_payload_A <= tmp_data_V_1_fu_109_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == packetOut_V_data_V_1_load_B)) begin
        packetOut_V_data_V_1_payload_B <= tmp_data_V_1_fu_109_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == packetOut_V_last_V_1_load_A)) begin
        packetOut_V_last_V_1_payload_A <= packetIn_V_last_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == packetOut_V_last_V_1_load_B)) begin
        packetOut_V_last_V_1_payload_B <= packetIn_V_last_V_0_data_out;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        packetIn_TDATA_blk_n = packetIn_V_data_V_0_state[1'b0];
    end else begin
        packetIn_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~((packetIn_V_data_V_0_vld_out == 1'b0) | (1'b0 == packetOut_V_data_V_1_ack_in)))) begin
        packetIn_V_data_V_0_ack_out = 1'b1;
    end else begin
        packetIn_V_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == packetIn_V_data_V_0_sel)) begin
        packetIn_V_data_V_0_data_out = packetIn_V_data_V_0_payload_B;
    end else begin
        packetIn_V_data_V_0_data_out = packetIn_V_data_V_0_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~((packetIn_V_data_V_0_vld_out == 1'b0) | (1'b0 == packetOut_V_data_V_1_ack_in)))) begin
        packetIn_V_keep_V_0_ack_out = 1'b1;
    end else begin
        packetIn_V_keep_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~((packetIn_V_data_V_0_vld_out == 1'b0) | (1'b0 == packetOut_V_data_V_1_ack_in)))) begin
        packetIn_V_last_V_0_ack_out = 1'b1;
    end else begin
        packetIn_V_last_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == packetIn_V_last_V_0_sel)) begin
        packetIn_V_last_V_0_data_out = packetIn_V_last_V_0_payload_B;
    end else begin
        packetIn_V_last_V_0_data_out = packetIn_V_last_V_0_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        packetOut_TDATA_blk_n = packetOut_V_data_V_1_state[1'b1];
    end else begin
        packetOut_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == packetOut_V_data_V_1_sel)) begin
        packetOut_V_data_V_1_data_out = packetOut_V_data_V_1_payload_B;
    end else begin
        packetOut_V_data_V_1_data_out = packetOut_V_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~((packetIn_V_data_V_0_vld_out == 1'b0) | (1'b0 == packetOut_V_data_V_1_ack_in)))) begin
        packetOut_V_data_V_1_vld_in = 1'b1;
    end else begin
        packetOut_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~((packetIn_V_data_V_0_vld_out == 1'b0) | (1'b0 == packetOut_V_data_V_1_ack_in)))) begin
        packetOut_V_keep_V_1_vld_in = 1'b1;
    end else begin
        packetOut_V_keep_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == packetOut_V_last_V_1_sel)) begin
        packetOut_V_last_V_1_data_out = packetOut_V_last_V_1_payload_B;
    end else begin
        packetOut_V_last_V_1_data_out = packetOut_V_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~((packetIn_V_data_V_0_vld_out == 1'b0) | (1'b0 == packetOut_V_data_V_1_ack_in)))) begin
        packetOut_V_last_V_1_vld_in = 1'b1;
    end else begin
        packetOut_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (~((packetIn_V_data_V_0_vld_out == 1'b0) | (1'b0 == packetOut_V_data_V_1_ack_in))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (~(1'b0 == packetOut_V_data_V_1_ack_in)) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state3 = ap_CS_fsm[ap_const_lv32_2];

assign ap_CS_fsm_state4 = ap_CS_fsm[ap_const_lv32_3];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign packetIn_TREADY = packetIn_V_keep_V_0_state[1'b1];

assign packetIn_V_data_V_0_ack_in = packetIn_V_data_V_0_state[1'b1];

assign packetIn_V_data_V_0_load_A = (packetIn_V_data_V_0_state_cmp_full & ~packetIn_V_data_V_0_sel_wr);

assign packetIn_V_data_V_0_load_B = (packetIn_V_data_V_0_sel_wr & packetIn_V_data_V_0_state_cmp_full);

assign packetIn_V_data_V_0_sel = packetIn_V_data_V_0_sel_rd;

assign packetIn_V_data_V_0_state_cmp_full = ((packetIn_V_data_V_0_state != ap_const_lv2_1) ? 1'b1 : 1'b0);

assign packetIn_V_data_V_0_vld_in = packetIn_TVALID;

assign packetIn_V_data_V_0_vld_out = packetIn_V_data_V_0_state[1'b0];

assign packetIn_V_keep_V_0_vld_in = packetIn_TVALID;

assign packetIn_V_last_V_0_ack_in = packetIn_V_last_V_0_state[1'b1];

assign packetIn_V_last_V_0_load_A = (packetIn_V_last_V_0_state_cmp_full & ~packetIn_V_last_V_0_sel_wr);

assign packetIn_V_last_V_0_load_B = (packetIn_V_last_V_0_sel_wr & packetIn_V_last_V_0_state_cmp_full);

assign packetIn_V_last_V_0_sel = packetIn_V_last_V_0_sel_rd;

assign packetIn_V_last_V_0_state_cmp_full = ((packetIn_V_last_V_0_state != ap_const_lv2_1) ? 1'b1 : 1'b0);

assign packetIn_V_last_V_0_vld_in = packetIn_TVALID;

assign packetIn_V_last_V_0_vld_out = packetIn_V_last_V_0_state[1'b0];

assign packetOut_TDATA = packetOut_V_data_V_1_data_out;

assign packetOut_TKEEP = packetOut_V_keep_V_1_data_out;

assign packetOut_TLAST = packetOut_V_last_V_1_data_out;

assign packetOut_TVALID = packetOut_V_keep_V_1_state[1'b0];

assign packetOut_V_data_V_1_ack_in = packetOut_V_data_V_1_state[1'b1];

assign packetOut_V_data_V_1_ack_out = packetOut_TREADY;

assign packetOut_V_data_V_1_load_A = (packetOut_V_data_V_1_state_cmp_full & ~packetOut_V_data_V_1_sel_wr);

assign packetOut_V_data_V_1_load_B = (packetOut_V_data_V_1_sel_wr & packetOut_V_data_V_1_state_cmp_full);

assign packetOut_V_data_V_1_sel = packetOut_V_data_V_1_sel_rd;

assign packetOut_V_data_V_1_state_cmp_full = ((packetOut_V_data_V_1_state != ap_const_lv2_1) ? 1'b1 : 1'b0);

assign packetOut_V_data_V_1_vld_out = packetOut_V_data_V_1_state[1'b0];

assign packetOut_V_keep_V_1_ack_out = packetOut_TREADY;

assign packetOut_V_keep_V_1_data_out = ap_const_lv8_0;

assign packetOut_V_keep_V_1_sel = packetOut_V_keep_V_1_sel_rd;

assign packetOut_V_keep_V_1_vld_out = packetOut_V_keep_V_1_state[1'b0];

assign packetOut_V_last_V_1_ack_in = packetOut_V_last_V_1_state[1'b1];

assign packetOut_V_last_V_1_ack_out = packetOut_TREADY;

assign packetOut_V_last_V_1_load_A = (packetOut_V_last_V_1_state_cmp_full & ~packetOut_V_last_V_1_sel_wr);

assign packetOut_V_last_V_1_load_B = (packetOut_V_last_V_1_sel_wr & packetOut_V_last_V_1_state_cmp_full);

assign packetOut_V_last_V_1_sel = packetOut_V_last_V_1_sel_rd;

assign packetOut_V_last_V_1_state_cmp_full = ((packetOut_V_last_V_1_state != ap_const_lv2_1) ? 1'b1 : 1'b0);

assign packetOut_V_last_V_1_vld_out = packetOut_V_last_V_1_state[1'b0];

assign r_V_fu_99_p4 = {{{tmp_fu_85_p4}, {ap_const_lv16_0}}, {tmp_1_fu_95_p1}};

assign tmp_1_fu_95_p1 = packetIn_V_data_V_0_data_out[7:0];

assign tmp_data_V_1_fu_109_p1 = r_V_fu_99_p4;

assign tmp_fu_85_p4 = {{packetIn_V_data_V_0_data_out[ap_const_lv32_1F : ap_const_lv32_18]}};

endmodule //packetMask
