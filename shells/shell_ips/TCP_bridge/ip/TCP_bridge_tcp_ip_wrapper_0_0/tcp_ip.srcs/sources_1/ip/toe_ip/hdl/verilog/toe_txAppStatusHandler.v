// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_txAppStatusHandler (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txBufferWriteStatus_V_dout,
        txBufferWriteStatus_V_empty_n,
        txBufferWriteStatus_V_read,
        txApp_eventCacheFifo_V_dout,
        txApp_eventCacheFifo_V_empty_n,
        txApp_eventCacheFifo_V_read,
        txApp2txSar_push_V_din,
        txApp2txSar_push_V_full_n,
        txApp2txSar_push_V_write,
        txApp2eventEng_setEvent_V_din,
        txApp2eventEng_setEvent_V_full_n,
        txApp2eventEng_setEvent_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv17_10001 = 17'b10000000000000001;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_12 = 32'b10010;
parameter    ap_const_lv32_13 = 32'b10011;
parameter    ap_const_lv32_22 = 32'b100010;
parameter    ap_const_lv32_23 = 32'b100011;
parameter    ap_const_lv32_32 = 32'b110010;
parameter    ap_const_lv32_33 = 32'b110011;
parameter    ap_const_lv32_35 = 32'b110101;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] txBufferWriteStatus_V_dout;
input   txBufferWriteStatus_V_empty_n;
output   txBufferWriteStatus_V_read;
input  [53:0] txApp_eventCacheFifo_V_dout;
input   txApp_eventCacheFifo_V_empty_n;
output   txApp_eventCacheFifo_V_read;
output  [31:0] txApp2txSar_push_V_din;
input   txApp2txSar_push_V_full_n;
output   txApp2txSar_push_V_write;
output  [53:0] txApp2eventEng_setEvent_V_din;
input   txApp2eventEng_setEvent_V_full_n;
output   txApp2eventEng_setEvent_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txBufferWriteStatus_V_read;
reg txApp_eventCacheFifo_V_read;
reg[31:0] txApp2txSar_push_V_din;
reg txApp2txSar_push_V_write;
reg[53:0] txApp2eventEng_setEvent_V_din;
reg txApp2eventEng_setEvent_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] grp_nbreadreq_fu_162_p3;
wire   [0:0] tmp_nbreadreq_fu_176_p3;
wire   [0:0] tmp_s_fu_342_p2;
reg    ap_sig_bdd_78;
reg   [1:0] tash_state_V_load_reg_477;
reg   [0:0] tmp_162_reg_495;
reg   [0:0] tmp_546_reg_499;
reg   [0:0] tmp_161_reg_503;
reg   [0:0] tmp_53_reg_511;
reg   [0:0] tmp_545_reg_507;
reg   [0:0] tmp_reg_520;
reg   [0:0] tmp_s_reg_546;
reg   [0:0] tmp_163_reg_550;
reg   [0:0] tmp_56_reg_558;
reg   [0:0] tmp_547_reg_554;
reg    ap_sig_bdd_148;
reg   [1:0] tash_state_V = 2'b00;
reg   [2:0] ev_type = 3'b000;
reg   [15:0] ev_sessionID_V = 16'b0000000000000000;
reg   [15:0] ev_address_V = 16'b0000000000000000;
reg   [15:0] ev_length_V = 16'b0000000000000000;
reg   [2:0] ev_rt_count_V = 3'b000;
reg   [15:0] tmp_address_V_4_reg_481;
reg   [15:0] tmp_length_V_8_reg_488;
wire   [0:0] grp_fu_230_p3;
wire   [0:0] tmp_53_fu_270_p2;
wire   [15:0] tmp_app_V_1_fu_276_p1;
reg   [15:0] tmp_app_V_1_reg_515;
reg   [53:0] tmp1_reg_524;
wire   [2:0] tmp_type_fu_286_p1;
reg   [2:0] tmp_type_reg_530;
reg   [15:0] tmp_sessionID_V_reg_535;
reg   [2:0] tmp_rt_count_V_reg_541;
wire   [0:0] tmp_56_fu_362_p2;
wire   [15:0] tmp_app_V_2_fu_368_p1;
reg   [15:0] tmp_app_V_2_reg_562;
wire   [1:0] ap_reg_phiprechg_storemerge_reg_204pp0_it0;
reg   [1:0] storemerge_phi_fu_207_p4;
wire   [1:0] ap_reg_phiprechg_storemerge2_reg_215pp0_it0;
reg   [1:0] storemerge2_phi_fu_218_p6;
wire   [31:0] tmp_9_fu_394_p3;
wire   [31:0] tmp_6_fu_416_p3;
wire   [31:0] tmp_3_fu_452_p3;
wire   [53:0] tmp_10_fu_403_p6;
wire   [53:0] tmp_7_fu_424_p6;
wire   [53:0] tmp_4_fu_468_p3;
wire   [15:0] tmp_address_V_fu_300_p4;
wire   [15:0] tmp_length_V_fu_316_p4;
wire   [16:0] rhs_V_fu_260_p1;
wire   [16:0] lhs_V_fu_256_p1;
wire   [16:0] r_V_5_fu_264_p2;
wire   [16:0] rhs_V_2_fu_352_p1;
wire   [16:0] lhs_V_2_fu_348_p1;
wire   [16:0] r_V_fu_356_p2;
wire   [15:0] tmp_app_V_fu_390_p2;
wire   [50:0] tmp_181_fu_459_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_401;
reg    ap_sig_bdd_403;
reg    ap_sig_bdd_400;
reg    ap_sig_bdd_275;
reg    ap_sig_bdd_48;
reg    ap_sig_bdd_52;
reg    ap_sig_bdd_69;
reg    ap_sig_bdd_155;
reg    ap_sig_bdd_95;
reg    ap_sig_bdd_115;
reg    ap_sig_bdd_125;
reg    ap_sig_bdd_140;
reg    ap_sig_bdd_242;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_155) begin
        if (ap_sig_bdd_69) begin
            tash_state_V <= storemerge2_phi_fu_218_p6;
        end else if (ap_sig_bdd_52) begin
            tash_state_V <= storemerge_phi_fu_207_p4;
        end else if (ap_sig_bdd_48) begin
            tash_state_V <= ap_const_lv2_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (tash_state_V == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_176_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ev_address_V <= {{txApp_eventCacheFifo_V_dout[ap_const_lv32_22 : ap_const_lv32_13]}};
        ev_length_V <= {{txApp_eventCacheFifo_V_dout[ap_const_lv32_32 : ap_const_lv32_23]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_0 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_reg_520) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ev_rt_count_V <= tmp_rt_count_V_reg_541;
        ev_sessionID_V <= tmp_sessionID_V_reg_535;
        ev_type <= tmp_type_reg_530;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tash_state_V_load_reg_477 <= tash_state_V;
        tmp_address_V_4_reg_481 <= ev_address_V;
        tmp_length_V_8_reg_488 <= ev_length_V;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (tash_state_V == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_176_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp1_reg_524 <= txApp_eventCacheFifo_V_dout;
        tmp_rt_count_V_reg_541 <= {{txApp_eventCacheFifo_V_dout[ap_const_lv32_35 : ap_const_lv32_33]}};
        tmp_s_reg_546 <= tmp_s_fu_342_p2;
        tmp_sessionID_V_reg_535 <= {{txApp_eventCacheFifo_V_dout[ap_const_lv32_12 : ap_const_lv32_3]}};
        tmp_type_reg_530 <= tmp_type_fu_286_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (tash_state_V == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_161_reg_503 <= grp_nbreadreq_fu_162_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (tash_state_V == ap_const_lv2_2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_162_reg_495 <= grp_nbreadreq_fu_162_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (tash_state_V == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_176_p3) & ~(ap_const_lv1_0 == tmp_s_fu_342_p2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_163_reg_550 <= grp_nbreadreq_fu_162_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & (tash_state_V == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_53_reg_511 <= tmp_53_fu_270_p2;
        tmp_545_reg_507 <= txBufferWriteStatus_V_dout[ap_const_lv32_7];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (tash_state_V == ap_const_lv2_2) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_546_reg_499 <= txBufferWriteStatus_V_dout[ap_const_lv32_7];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & (tash_state_V == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_176_p3) & ~(ap_const_lv1_0 == tmp_s_fu_342_p2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_547_reg_554 <= txBufferWriteStatus_V_dout[ap_const_lv32_7];
        tmp_56_reg_558 <= tmp_56_fu_362_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & (tash_state_V == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == tmp_53_fu_270_p2) & ~(ap_const_lv1_0 == grp_fu_230_p3))) begin
        tmp_app_V_1_reg_515 <= tmp_app_V_1_fu_276_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & (tash_state_V == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_176_p3) & ~(ap_const_lv1_0 == tmp_s_fu_342_p2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == grp_fu_230_p3) & ~(ap_const_lv1_0 == tmp_56_fu_362_p2))) begin
        tmp_app_V_2_reg_562 <= tmp_app_V_2_fu_368_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (tash_state_V == ap_const_lv2_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_reg_520 <= tmp_nbreadreq_fu_176_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_78 or ap_sig_bdd_148)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_78 or ap_sig_bdd_148)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// storemerge2_phi_fu_218_p6 assign process. ///
always @ (grp_nbreadreq_fu_162_p3 or ap_reg_phiprechg_storemerge2_reg_215pp0_it0 or ap_sig_bdd_401 or ap_sig_bdd_403 or ap_sig_bdd_400)
begin
    if (ap_sig_bdd_400) begin
        if (ap_sig_bdd_403) begin
            storemerge2_phi_fu_218_p6 = ap_const_lv2_0;
        end else if (ap_sig_bdd_401) begin
            storemerge2_phi_fu_218_p6 = ap_const_lv2_2;
        end else if ((grp_nbreadreq_fu_162_p3 == ap_const_lv1_0)) begin
            storemerge2_phi_fu_218_p6 = ap_const_lv2_1;
        end else begin
            storemerge2_phi_fu_218_p6 = ap_reg_phiprechg_storemerge2_reg_215pp0_it0;
        end
    end else begin
        storemerge2_phi_fu_218_p6 = ap_reg_phiprechg_storemerge2_reg_215pp0_it0;
    end
end

/// storemerge_phi_fu_207_p4 assign process. ///
always @ (tmp_53_fu_270_p2 or ap_reg_phiprechg_storemerge_reg_204pp0_it0 or ap_sig_bdd_275)
begin
    if (ap_sig_bdd_275) begin
        if (~(ap_const_lv1_0 == tmp_53_fu_270_p2)) begin
            storemerge_phi_fu_207_p4 = ap_const_lv2_0;
        end else if ((ap_const_lv1_0 == tmp_53_fu_270_p2)) begin
            storemerge_phi_fu_207_p4 = ap_const_lv2_2;
        end else begin
            storemerge_phi_fu_207_p4 = ap_reg_phiprechg_storemerge_reg_204pp0_it0;
        end
    end else begin
        storemerge_phi_fu_207_p4 = ap_reg_phiprechg_storemerge_reg_204pp0_it0;
    end
end

/// txApp2eventEng_setEvent_V_din assign process. ///
always @ (tmp1_reg_524 or tmp_10_fu_403_p6 or tmp_7_fu_424_p6 or tmp_4_fu_468_p3 or ap_sig_bdd_95 or ap_sig_bdd_115 or ap_sig_bdd_125 or ap_sig_bdd_140 or ap_sig_bdd_242)
begin
    if (ap_sig_bdd_242) begin
        if (ap_sig_bdd_140) begin
            txApp2eventEng_setEvent_V_din = tmp_4_fu_468_p3;
        end else if (ap_sig_bdd_125) begin
            txApp2eventEng_setEvent_V_din = tmp1_reg_524;
        end else if (ap_sig_bdd_115) begin
            txApp2eventEng_setEvent_V_din = tmp_7_fu_424_p6;
        end else if (ap_sig_bdd_95) begin
            txApp2eventEng_setEvent_V_din = tmp_10_fu_403_p6;
        end else begin
            txApp2eventEng_setEvent_V_din = 'bx;
        end
    end else begin
        txApp2eventEng_setEvent_V_din = 'bx;
    end
end

/// txApp2eventEng_setEvent_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_78 or tash_state_V_load_reg_477 or tmp_162_reg_495 or tmp_546_reg_499 or tmp_161_reg_503 or tmp_53_reg_511 or tmp_545_reg_507 or tmp_reg_520 or tmp_s_reg_546 or tmp_163_reg_550 or tmp_56_reg_558 or tmp_547_reg_554 or ap_sig_bdd_148)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_2 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_162_reg_495) & ~(ap_const_lv1_0 == tmp_546_reg_499) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_1 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_161_reg_503) & ~(ap_const_lv1_0 == tmp_53_reg_511) & ~(ap_const_lv1_0 == tmp_545_reg_507) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_0 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_reg_520) & ~(ap_const_lv1_0 == tmp_s_reg_546) & ~(ap_const_lv1_0 == tmp_163_reg_550) & ~(ap_const_lv1_0 == tmp_56_reg_558) & ~(ap_const_lv1_0 == tmp_547_reg_554) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_0 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_reg_520) & (ap_const_lv1_0 == tmp_s_reg_546) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        txApp2eventEng_setEvent_V_write = ap_const_logic_1;
    end else begin
        txApp2eventEng_setEvent_V_write = ap_const_logic_0;
    end
end

/// txApp2txSar_push_V_din assign process. ///
always @ (tmp_9_fu_394_p3 or tmp_6_fu_416_p3 or tmp_3_fu_452_p3 or ap_sig_bdd_95 or ap_sig_bdd_115 or ap_sig_bdd_140 or ap_sig_bdd_242)
begin
    if (ap_sig_bdd_242) begin
        if (ap_sig_bdd_140) begin
            txApp2txSar_push_V_din = tmp_3_fu_452_p3;
        end else if (ap_sig_bdd_115) begin
            txApp2txSar_push_V_din = tmp_6_fu_416_p3;
        end else if (ap_sig_bdd_95) begin
            txApp2txSar_push_V_din = tmp_9_fu_394_p3;
        end else begin
            txApp2txSar_push_V_din = 'bx;
        end
    end else begin
        txApp2txSar_push_V_din = 'bx;
    end
end

/// txApp2txSar_push_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_78 or tash_state_V_load_reg_477 or tmp_162_reg_495 or tmp_546_reg_499 or tmp_161_reg_503 or tmp_53_reg_511 or tmp_545_reg_507 or tmp_reg_520 or tmp_s_reg_546 or tmp_163_reg_550 or tmp_56_reg_558 or tmp_547_reg_554 or ap_sig_bdd_148)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_2 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_162_reg_495) & ~(ap_const_lv1_0 == tmp_546_reg_499) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_1 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_161_reg_503) & ~(ap_const_lv1_0 == tmp_53_reg_511) & ~(ap_const_lv1_0 == tmp_545_reg_507) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_0 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_reg_520) & ~(ap_const_lv1_0 == tmp_s_reg_546) & ~(ap_const_lv1_0 == tmp_163_reg_550) & ~(ap_const_lv1_0 == tmp_56_reg_558) & ~(ap_const_lv1_0 == tmp_547_reg_554) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        txApp2txSar_push_V_write = ap_const_logic_1;
    end else begin
        txApp2txSar_push_V_write = ap_const_logic_0;
    end
end

/// txApp_eventCacheFifo_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_nbreadreq_fu_176_p3 or ap_sig_bdd_78 or ap_sig_bdd_148 or tash_state_V)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (tash_state_V == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_176_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        txApp_eventCacheFifo_V_read = ap_const_logic_1;
    end else begin
        txApp_eventCacheFifo_V_read = ap_const_logic_0;
    end
end

/// txBufferWriteStatus_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or grp_nbreadreq_fu_162_p3 or tmp_nbreadreq_fu_176_p3 or tmp_s_fu_342_p2 or ap_sig_bdd_78 or ap_sig_bdd_148 or tash_state_V)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (tash_state_V == ap_const_lv2_2) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & (tash_state_V == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & (tash_state_V == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_176_p3) & ~(ap_const_lv1_0 == tmp_s_fu_342_p2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        txBufferWriteStatus_V_read = ap_const_logic_1;
    end else begin
        txBufferWriteStatus_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_78 or ap_sig_bdd_148 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_phiprechg_storemerge2_reg_215pp0_it0 = 'bx;
assign ap_reg_phiprechg_storemerge_reg_204pp0_it0 = 'bx;
assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_115 assign process. ///
always @ (tash_state_V_load_reg_477 or tmp_161_reg_503 or tmp_53_reg_511 or tmp_545_reg_507)
begin
    ap_sig_bdd_115 = ((ap_const_lv2_1 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_161_reg_503) & ~(ap_const_lv1_0 == tmp_53_reg_511) & ~(ap_const_lv1_0 == tmp_545_reg_507));
end

/// ap_sig_bdd_125 assign process. ///
always @ (tash_state_V_load_reg_477 or tmp_reg_520 or tmp_s_reg_546)
begin
    ap_sig_bdd_125 = ((ap_const_lv2_0 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_reg_520) & (ap_const_lv1_0 == tmp_s_reg_546));
end

/// ap_sig_bdd_140 assign process. ///
always @ (tash_state_V_load_reg_477 or tmp_reg_520 or tmp_s_reg_546 or tmp_163_reg_550 or tmp_56_reg_558 or tmp_547_reg_554)
begin
    ap_sig_bdd_140 = ((ap_const_lv2_0 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_reg_520) & ~(ap_const_lv1_0 == tmp_s_reg_546) & ~(ap_const_lv1_0 == tmp_163_reg_550) & ~(ap_const_lv1_0 == tmp_56_reg_558) & ~(ap_const_lv1_0 == tmp_547_reg_554));
end

/// ap_sig_bdd_148 assign process. ///
always @ (txApp2txSar_push_V_full_n or tash_state_V_load_reg_477 or tmp_162_reg_495 or tmp_546_reg_499 or txApp2eventEng_setEvent_V_full_n or tmp_161_reg_503 or tmp_53_reg_511 or tmp_545_reg_507 or tmp_reg_520 or tmp_s_reg_546 or tmp_163_reg_550 or tmp_56_reg_558 or tmp_547_reg_554)
begin
    ap_sig_bdd_148 = (((txApp2txSar_push_V_full_n == ap_const_logic_0) & (ap_const_lv2_2 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_162_reg_495) & ~(ap_const_lv1_0 == tmp_546_reg_499)) | ((ap_const_lv2_2 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_162_reg_495) & ~(ap_const_lv1_0 == tmp_546_reg_499) & (txApp2eventEng_setEvent_V_full_n == ap_const_logic_0)) | ((txApp2txSar_push_V_full_n == ap_const_logic_0) & (ap_const_lv2_1 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_161_reg_503) & ~(ap_const_lv1_0 == tmp_53_reg_511) & ~(ap_const_lv1_0 == tmp_545_reg_507)) | ((txApp2eventEng_setEvent_V_full_n == ap_const_logic_0) & (ap_const_lv2_1 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_161_reg_503) & ~(ap_const_lv1_0 == tmp_53_reg_511) & ~(ap_const_lv1_0 == tmp_545_reg_507)) | ((txApp2eventEng_setEvent_V_full_n == ap_const_logic_0) & (ap_const_lv2_0 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_reg_520) & (ap_const_lv1_0 == tmp_s_reg_546)) | ((txApp2txSar_push_V_full_n == ap_const_logic_0) & (ap_const_lv2_0 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_reg_520) & ~(ap_const_lv1_0 == tmp_s_reg_546) & ~(ap_const_lv1_0 == tmp_163_reg_550) & ~(ap_const_lv1_0 == tmp_56_reg_558) & ~(ap_const_lv1_0 == tmp_547_reg_554)) | ((txApp2eventEng_setEvent_V_full_n == ap_const_logic_0) & (ap_const_lv2_0 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_reg_520) & ~(ap_const_lv1_0 == tmp_s_reg_546) & ~(ap_const_lv1_0 == tmp_163_reg_550) & ~(ap_const_lv1_0 == tmp_56_reg_558) & ~(ap_const_lv1_0 == tmp_547_reg_554)));
end

/// ap_sig_bdd_155 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_78 or ap_sig_bdd_148)
begin
    ap_sig_bdd_155 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_242 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_78 or ap_sig_bdd_148)
begin
    ap_sig_bdd_242 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_148 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_275 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or grp_nbreadreq_fu_162_p3 or tash_state_V)
begin
    ap_sig_bdd_275 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & (tash_state_V == ap_const_lv2_1));
end

/// ap_sig_bdd_400 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or tmp_nbreadreq_fu_176_p3 or tmp_s_fu_342_p2 or tash_state_V)
begin
    ap_sig_bdd_400 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (tash_state_V == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_176_p3) & ~(ap_const_lv1_0 == tmp_s_fu_342_p2));
end

/// ap_sig_bdd_401 assign process. ///
always @ (grp_nbreadreq_fu_162_p3 or tmp_56_fu_362_p2)
begin
    ap_sig_bdd_401 = (~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_56_fu_362_p2));
end

/// ap_sig_bdd_403 assign process. ///
always @ (grp_nbreadreq_fu_162_p3 or tmp_56_fu_362_p2)
begin
    ap_sig_bdd_403 = (~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_56_fu_362_p2));
end

/// ap_sig_bdd_48 assign process. ///
always @ (grp_nbreadreq_fu_162_p3 or tash_state_V)
begin
    ap_sig_bdd_48 = ((tash_state_V == ap_const_lv2_2) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0));
end

/// ap_sig_bdd_52 assign process. ///
always @ (grp_nbreadreq_fu_162_p3 or tash_state_V)
begin
    ap_sig_bdd_52 = (~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & (tash_state_V == ap_const_lv2_1));
end

/// ap_sig_bdd_69 assign process. ///
always @ (tmp_nbreadreq_fu_176_p3 or tmp_s_fu_342_p2 or tash_state_V)
begin
    ap_sig_bdd_69 = ((tash_state_V == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_176_p3) & ~(ap_const_lv1_0 == tmp_s_fu_342_p2));
end

/// ap_sig_bdd_78 assign process. ///
always @ (ap_start or ap_done_reg or txBufferWriteStatus_V_empty_n or grp_nbreadreq_fu_162_p3 or txApp_eventCacheFifo_V_empty_n or tmp_nbreadreq_fu_176_p3 or tmp_s_fu_342_p2 or tash_state_V)
begin
    ap_sig_bdd_78 = (((txBufferWriteStatus_V_empty_n == ap_const_logic_0) & (tash_state_V == ap_const_lv2_2) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0)) | ((txBufferWriteStatus_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & (tash_state_V == ap_const_lv2_1)) | ((txApp_eventCacheFifo_V_empty_n == ap_const_logic_0) & (tash_state_V == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_176_p3)) | ((txBufferWriteStatus_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_162_p3 == ap_const_lv1_0) & (tash_state_V == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_176_p3) & ~(ap_const_lv1_0 == tmp_s_fu_342_p2)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_95 assign process. ///
always @ (tash_state_V_load_reg_477 or tmp_162_reg_495 or tmp_546_reg_499)
begin
    ap_sig_bdd_95 = ((ap_const_lv2_2 == tash_state_V_load_reg_477) & ~(ap_const_lv1_0 == tmp_162_reg_495) & ~(ap_const_lv1_0 == tmp_546_reg_499));
end
assign grp_fu_230_p3 = txBufferWriteStatus_V_dout[ap_const_lv32_7];
assign grp_nbreadreq_fu_162_p3 = txBufferWriteStatus_V_empty_n;
assign lhs_V_2_fu_348_p1 = tmp_address_V_fu_300_p4;
assign lhs_V_fu_256_p1 = ev_address_V;
assign r_V_5_fu_264_p2 = (rhs_V_fu_260_p1 + lhs_V_fu_256_p1);
assign r_V_fu_356_p2 = (rhs_V_2_fu_352_p1 + lhs_V_2_fu_348_p1);
assign rhs_V_2_fu_352_p1 = tmp_length_V_fu_316_p4;
assign rhs_V_fu_260_p1 = ev_length_V;
assign tmp_10_fu_403_p6 = {{{{{ev_rt_count_V}, {tmp_length_V_8_reg_488}}, {tmp_address_V_4_reg_481}}, {ev_sessionID_V}}, {ev_type}};
assign tmp_181_fu_459_p4 = {{tmp1_reg_524[ap_const_lv32_35 : ap_const_lv32_3]}};
assign tmp_3_fu_452_p3 = {{tmp_app_V_2_reg_562}, {tmp_sessionID_V_reg_535}};
assign tmp_4_fu_468_p3 = {{tmp_181_fu_459_p4}, {ap_const_lv3_0}};
assign tmp_53_fu_270_p2 = (r_V_5_fu_264_p2 < ap_const_lv17_10001? 1'b1: 1'b0);
assign tmp_56_fu_362_p2 = (r_V_fu_356_p2 < ap_const_lv17_10001? 1'b1: 1'b0);
assign tmp_6_fu_416_p3 = {{tmp_app_V_1_reg_515}, {ev_sessionID_V}};
assign tmp_7_fu_424_p6 = {{{{{ev_rt_count_V}, {tmp_length_V_8_reg_488}}, {tmp_address_V_4_reg_481}}, {ev_sessionID_V}}, {ev_type}};
assign tmp_9_fu_394_p3 = {{tmp_app_V_fu_390_p2}, {ev_sessionID_V}};
assign tmp_address_V_fu_300_p4 = {{txApp_eventCacheFifo_V_dout[ap_const_lv32_22 : ap_const_lv32_13]}};
assign tmp_app_V_1_fu_276_p1 = r_V_5_fu_264_p2[15:0];
assign tmp_app_V_2_fu_368_p1 = r_V_fu_356_p2[15:0];
assign tmp_app_V_fu_390_p2 = (tmp_address_V_4_reg_481 + tmp_length_V_8_reg_488);
assign tmp_length_V_fu_316_p4 = {{txApp_eventCacheFifo_V_dout[ap_const_lv32_32 : ap_const_lv32_23]}};
assign tmp_nbreadreq_fu_176_p3 = txApp_eventCacheFifo_V_empty_n;
assign tmp_s_fu_342_p2 = (tmp_type_fu_286_p1 == ap_const_lv3_0? 1'b1: 1'b0);
assign tmp_type_fu_286_p1 = txApp_eventCacheFifo_V_dout[2:0];


endmodule //toe_txAppStatusHandler
