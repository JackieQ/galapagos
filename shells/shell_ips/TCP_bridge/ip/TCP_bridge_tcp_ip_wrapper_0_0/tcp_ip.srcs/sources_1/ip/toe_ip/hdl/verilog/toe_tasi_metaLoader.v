// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_tasi_metaLoader (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        appTxDataReqMetaData_V_dout,
        appTxDataReqMetaData_V_empty_n,
        appTxDataReqMetaData_V_read,
        stateTable2txApp_rsp_V_dout,
        stateTable2txApp_rsp_V_empty_n,
        stateTable2txApp_rsp_V_read,
        txSar2txApp_upd_rsp_V_dout,
        txSar2txApp_upd_rsp_V_empty_n,
        txSar2txApp_upd_rsp_V_read,
        txApp2stateTable_req_V_V_din,
        txApp2stateTable_req_V_V_full_n,
        txApp2stateTable_req_V_V_write,
        txApp2txSar_upd_req_V_din,
        txApp2txSar_upd_req_V_full_n,
        txApp2txSar_upd_req_V_write,
        tasi_writeToBufFifo_V_din,
        tasi_writeToBufFifo_V_full_n,
        tasi_writeToBufFifo_V_write,
        appTxDataRsp_V_V_din,
        appTxDataRsp_V_V_full_n,
        appTxDataRsp_V_V_write,
        txAppStream2event_mergeEvent_V_din,
        txAppStream2event_mergeEvent_V_full_n,
        txAppStream2event_mergeEvent_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv49_1000000000000 = 49'b1000000000000000000000000000000000000000000000000;
parameter    ap_const_lv17_1FFFE = 17'b11111111111111110;
parameter    ap_const_lv17_1FFFF = 17'b11111111111111111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv4_3 = 4'b11;
parameter    ap_const_lv16_FFFF = 16'b1111111111111111;
parameter    ap_const_lv17_0 = 17'b00000000000000000;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] appTxDataReqMetaData_V_dout;
input   appTxDataReqMetaData_V_empty_n;
output   appTxDataReqMetaData_V_read;
input  [3:0] stateTable2txApp_rsp_V_dout;
input   stateTable2txApp_rsp_V_empty_n;
output   stateTable2txApp_rsp_V_read;
input  [47:0] txSar2txApp_upd_rsp_V_dout;
input   txSar2txApp_upd_rsp_V_empty_n;
output   txSar2txApp_upd_rsp_V_read;
output  [15:0] txApp2stateTable_req_V_V_din;
input   txApp2stateTable_req_V_V_full_n;
output   txApp2stateTable_req_V_V_write;
output  [32:0] txApp2txSar_upd_req_V_din;
input   txApp2txSar_upd_req_V_full_n;
output   txApp2txSar_upd_req_V_write;
output  [48:0] tasi_writeToBufFifo_V_din;
input   tasi_writeToBufFifo_V_full_n;
output   tasi_writeToBufFifo_V_write;
output  [16:0] appTxDataRsp_V_V_din;
input   appTxDataRsp_V_V_full_n;
output   appTxDataRsp_V_V_write;
output  [53:0] txAppStream2event_mergeEvent_V_din;
input   txAppStream2event_mergeEvent_V_full_n;
output   txAppStream2event_mergeEvent_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg appTxDataReqMetaData_V_read;
reg stateTable2txApp_rsp_V_read;
reg txSar2txApp_upd_rsp_V_read;
reg txApp2stateTable_req_V_V_write;
reg[32:0] txApp2txSar_upd_req_V_din;
reg txApp2txSar_upd_req_V_write;
reg[48:0] tasi_writeToBufFifo_V_din;
reg tasi_writeToBufFifo_V_write;
reg[16:0] appTxDataRsp_V_V_din;
reg appTxDataRsp_V_V_write;
reg txAppStream2event_mergeEvent_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_184_p3;
wire   [0:0] tmp_187_nbreadreq_fu_198_p3;
wire   [0:0] tmp_79_nbreadreq_fu_206_p3;
reg    ap_sig_bdd_78;
reg   [0:0] tai_state_load_reg_406;
reg   [0:0] ap_reg_ppstg_tai_state_load_reg_406_pp0_it1;
reg   [0:0] tmp_reg_410;
reg   [0:0] ap_reg_ppstg_tmp_reg_410_pp0_it1;
reg   [0:0] tmp_187_reg_426;
reg   [0:0] ap_reg_ppstg_tmp_187_reg_426_pp0_it1;
reg   [0:0] tmp_79_reg_430;
reg   [0:0] ap_reg_ppstg_tmp_79_reg_430_pp0_it1;
reg   [0:0] tmp_209_reg_447;
reg   [0:0] ap_reg_ppstg_tmp_209_reg_447_pp0_it1;
reg   [0:0] tmp_210_reg_459;
reg    ap_sig_bdd_155;
reg   [0:0] tai_state = 1'b0;
reg   [15:0] tasi_writeMeta_length_V = 16'b0000000000000000;
reg   [15:0] tasi_writeMeta_sessionID_V = 16'b0000000000000000;
wire   [15:0] tmp_V_21_fu_269_p1;
reg   [15:0] tmp_V_21_reg_414;
reg   [15:0] ap_reg_ppstg_tmp_V_21_reg_414_pp0_it1;
reg   [15:0] tmp_length_V_load_new6_reg_421;
reg   [15:0] tmp_ackd_V_load_new_reg_434;
reg   [15:0] tmp_address_V_reg_439;
reg   [15:0] ap_reg_ppstg_tmp_address_V_reg_439_pp0_it1;
wire   [0:0] tmp_209_fu_309_p2;
reg   [15:0] tmp_length_V_reg_451;
wire   [0:0] tmp_210_fu_345_p2;
wire   [32:0] tmp_1_fu_351_p3;
wire   [32:0] tmp_7_fu_395_p4;
wire   [48:0] tmp_5_fu_363_p5;
wire   [16:0] tmp_V_fu_374_p1;
wire   [15:0] tmp_s_fu_335_p2;
wire   [15:0] tmp_208_fu_340_p2;
wire   [15:0] tmp_mempt_V_fu_391_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_336;
reg    ap_sig_bdd_338;
reg    ap_sig_bdd_335;
reg    ap_sig_bdd_50;
reg    ap_sig_bdd_65;
reg    ap_sig_bdd_162;
reg    ap_sig_bdd_94;
reg    ap_sig_bdd_133;
reg    ap_sig_bdd_215;




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
        end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_162) begin
        if (ap_sig_bdd_65) begin
            tai_state <= ap_const_lv1_0;
        end else if (ap_sig_bdd_50) begin
            tai_state <= ap_const_lv1_1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        ap_reg_ppstg_tai_state_load_reg_406_pp0_it1 <= tai_state_load_reg_406;
        ap_reg_ppstg_tmp_187_reg_426_pp0_it1 <= tmp_187_reg_426;
        ap_reg_ppstg_tmp_209_reg_447_pp0_it1 <= tmp_209_reg_447;
        ap_reg_ppstg_tmp_79_reg_430_pp0_it1 <= tmp_79_reg_430;
        ap_reg_ppstg_tmp_V_21_reg_414_pp0_it1 <= tmp_V_21_reg_414;
        ap_reg_ppstg_tmp_address_V_reg_439_pp0_it1 <= tmp_address_V_reg_439;
        ap_reg_ppstg_tmp_reg_410_pp0_it1 <= tmp_reg_410;
        tai_state_load_reg_406 <= tai_state;
        tmp_length_V_reg_451 <= tasi_writeMeta_length_V;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & (ap_const_lv1_0 == tai_state_load_reg_406) & ~(ap_const_lv1_0 == tmp_reg_410))) begin
        tasi_writeMeta_length_V <= tmp_length_V_load_new6_reg_421;
        tasi_writeMeta_sessionID_V <= tmp_V_21_reg_414;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tai_state == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_187_reg_426 <= tmp_187_nbreadreq_fu_198_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tai_state == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_187_nbreadreq_fu_198_p3) & ~(ap_const_lv1_0 == tmp_79_nbreadreq_fu_206_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_209_reg_447 <= tmp_209_fu_309_p2;
        tmp_ackd_V_load_new_reg_434 <= {{txSar2txApp_upd_rsp_V_dout[ap_const_lv32_1F : ap_const_lv32_10]}};
        tmp_address_V_reg_439 <= {{txSar2txApp_upd_rsp_V_dout[ap_const_lv32_2F : ap_const_lv32_20]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_lv1_0 == tai_state_load_reg_406) & ~(ap_const_lv1_0 == tmp_187_reg_426) & ~(ap_const_lv1_0 == tmp_79_reg_430) & ~(ap_const_lv1_0 == tmp_209_reg_447))) begin
        tmp_210_reg_459 <= tmp_210_fu_345_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tai_state == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_187_nbreadreq_fu_198_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_79_reg_430 <= tmp_79_nbreadreq_fu_206_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (tai_state == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_184_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_V_21_reg_414 <= tmp_V_21_fu_269_p1;
        tmp_length_V_load_new6_reg_421 <= {{appTxDataReqMetaData_V_dout[ap_const_lv32_1F : ap_const_lv32_10]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (tai_state == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_reg_410 <= tmp_nbreadreq_fu_184_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_sig_bdd_155)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_sig_bdd_155)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
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
always @ (ap_start or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// appTxDataReqMetaData_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp_nbreadreq_fu_184_p3 or ap_sig_bdd_78 or ap_sig_bdd_155 or tai_state)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (tai_state == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_184_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        appTxDataReqMetaData_V_read = ap_const_logic_1;
    end else begin
        appTxDataReqMetaData_V_read = ap_const_logic_0;
    end
end

/// appTxDataRsp_V_V_din assign process. ///
always @ (ap_reg_ppstg_tmp_209_reg_447_pp0_it1 or tmp_V_fu_374_p1 or ap_sig_bdd_336 or ap_sig_bdd_338 or ap_sig_bdd_335)
begin
    if (ap_sig_bdd_335) begin
        if (ap_sig_bdd_338) begin
            appTxDataRsp_V_V_din = ap_const_lv17_1FFFF;
        end else if (ap_sig_bdd_336) begin
            appTxDataRsp_V_V_din = tmp_V_fu_374_p1;
        end else if ((ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1)) begin
            appTxDataRsp_V_V_din = ap_const_lv17_1FFFE;
        end else begin
            appTxDataRsp_V_V_din = 'bx;
        end
    end else begin
        appTxDataRsp_V_V_din = 'bx;
    end
end

/// appTxDataRsp_V_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_reg_ppstg_tai_state_load_reg_406_pp0_it1 or ap_reg_ppstg_tmp_187_reg_426_pp0_it1 or ap_reg_ppstg_tmp_79_reg_430_pp0_it1 or ap_reg_ppstg_tmp_209_reg_447_pp0_it1 or tmp_210_reg_459 or ap_sig_bdd_155)
begin
    if (((~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_lv1_0 == tmp_210_reg_459) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & ~(ap_const_lv1_0 == tmp_210_reg_459) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        appTxDataRsp_V_V_write = ap_const_logic_1;
    end else begin
        appTxDataRsp_V_V_write = ap_const_logic_0;
    end
end

/// stateTable2txApp_rsp_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp_187_nbreadreq_fu_198_p3 or tmp_79_nbreadreq_fu_206_p3 or ap_sig_bdd_78 or ap_sig_bdd_155 or tai_state)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tai_state == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_187_nbreadreq_fu_198_p3) & ~(ap_const_lv1_0 == tmp_79_nbreadreq_fu_206_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        stateTable2txApp_rsp_V_read = ap_const_logic_1;
    end else begin
        stateTable2txApp_rsp_V_read = ap_const_logic_0;
    end
end

/// tasi_writeToBufFifo_V_din assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_reg_ppstg_tai_state_load_reg_406_pp0_it1 or ap_reg_ppstg_tmp_187_reg_426_pp0_it1 or ap_reg_ppstg_tmp_79_reg_430_pp0_it1 or ap_reg_ppstg_tmp_209_reg_447_pp0_it1 or tmp_210_reg_459 or ap_sig_bdd_155 or tmp_5_fu_363_p5)
begin
    if ((~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_lv1_0 == tmp_210_reg_459) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tasi_writeToBufFifo_V_din = tmp_5_fu_363_p5;
    end else if (((~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & ~(ap_const_lv1_0 == tmp_210_reg_459) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        tasi_writeToBufFifo_V_din = ap_const_lv49_1000000000000;
    end else begin
        tasi_writeToBufFifo_V_din = 'bx;
    end
end

/// tasi_writeToBufFifo_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_reg_ppstg_tai_state_load_reg_406_pp0_it1 or ap_reg_ppstg_tmp_187_reg_426_pp0_it1 or ap_reg_ppstg_tmp_79_reg_430_pp0_it1 or ap_reg_ppstg_tmp_209_reg_447_pp0_it1 or tmp_210_reg_459 or ap_sig_bdd_155)
begin
    if (((~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_lv1_0 == tmp_210_reg_459) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & ~(ap_const_lv1_0 == tmp_210_reg_459) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        tasi_writeToBufFifo_V_write = ap_const_logic_1;
    end else begin
        tasi_writeToBufFifo_V_write = ap_const_logic_0;
    end
end

/// txApp2stateTable_req_V_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_reg_ppstg_tai_state_load_reg_406_pp0_it1 or ap_reg_ppstg_tmp_reg_410_pp0_it1 or ap_sig_bdd_155)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_410_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        txApp2stateTable_req_V_V_write = ap_const_logic_1;
    end else begin
        txApp2stateTable_req_V_V_write = ap_const_logic_0;
    end
end

/// txApp2txSar_upd_req_V_din assign process. ///
always @ (tmp_1_fu_351_p3 or tmp_7_fu_395_p4 or ap_sig_bdd_94 or ap_sig_bdd_133 or ap_sig_bdd_215)
begin
    if (ap_sig_bdd_215) begin
        if (ap_sig_bdd_133) begin
            txApp2txSar_upd_req_V_din = tmp_7_fu_395_p4;
        end else if (ap_sig_bdd_94) begin
            txApp2txSar_upd_req_V_din = tmp_1_fu_351_p3;
        end else begin
            txApp2txSar_upd_req_V_din = 'bx;
        end
    end else begin
        txApp2txSar_upd_req_V_din = 'bx;
    end
end

/// txApp2txSar_upd_req_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_reg_ppstg_tai_state_load_reg_406_pp0_it1 or ap_reg_ppstg_tmp_reg_410_pp0_it1 or ap_reg_ppstg_tmp_187_reg_426_pp0_it1 or ap_reg_ppstg_tmp_79_reg_430_pp0_it1 or ap_reg_ppstg_tmp_209_reg_447_pp0_it1 or tmp_210_reg_459 or ap_sig_bdd_155)
begin
    if ((((ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_410_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) | (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_lv1_0 == tmp_210_reg_459) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        txApp2txSar_upd_req_V_write = ap_const_logic_1;
    end else begin
        txApp2txSar_upd_req_V_write = ap_const_logic_0;
    end
end

/// txAppStream2event_mergeEvent_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_reg_ppstg_tai_state_load_reg_406_pp0_it1 or ap_reg_ppstg_tmp_187_reg_426_pp0_it1 or ap_reg_ppstg_tmp_79_reg_430_pp0_it1 or ap_reg_ppstg_tmp_209_reg_447_pp0_it1 or tmp_210_reg_459 or ap_sig_bdd_155)
begin
    if ((~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_lv1_0 == tmp_210_reg_459) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        txAppStream2event_mergeEvent_V_write = ap_const_logic_1;
    end else begin
        txAppStream2event_mergeEvent_V_write = ap_const_logic_0;
    end
end

/// txSar2txApp_upd_rsp_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp_187_nbreadreq_fu_198_p3 or tmp_79_nbreadreq_fu_206_p3 or ap_sig_bdd_78 or ap_sig_bdd_155 or tai_state)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tai_state == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_187_nbreadreq_fu_198_p3) & ~(ap_const_lv1_0 == tmp_79_nbreadreq_fu_206_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        txSar2txApp_upd_rsp_V_read = ap_const_logic_1;
    end else begin
        txSar2txApp_upd_rsp_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_sig_bdd_155 or ap_sig_pprstidle_pp0)
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

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_133 assign process. ///
always @ (ap_reg_ppstg_tai_state_load_reg_406_pp0_it1 or ap_reg_ppstg_tmp_187_reg_426_pp0_it1 or ap_reg_ppstg_tmp_79_reg_430_pp0_it1 or ap_reg_ppstg_tmp_209_reg_447_pp0_it1 or tmp_210_reg_459)
begin
    ap_sig_bdd_133 = (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_lv1_0 == tmp_210_reg_459));
end

/// ap_sig_bdd_155 assign process. ///
always @ (txApp2stateTable_req_V_V_full_n or ap_reg_ppstg_tai_state_load_reg_406_pp0_it1 or ap_reg_ppstg_tmp_reg_410_pp0_it1 or txApp2txSar_upd_req_V_full_n or tasi_writeToBufFifo_V_full_n or ap_reg_ppstg_tmp_187_reg_426_pp0_it1 or ap_reg_ppstg_tmp_79_reg_430_pp0_it1 or ap_reg_ppstg_tmp_209_reg_447_pp0_it1 or appTxDataRsp_V_V_full_n or tmp_210_reg_459 or txAppStream2event_mergeEvent_V_full_n)
begin
    ap_sig_bdd_155 = (((txApp2stateTable_req_V_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_410_pp0_it1)) | ((ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_410_pp0_it1) & (txApp2txSar_upd_req_V_full_n == ap_const_logic_0)) | ((tasi_writeToBufFifo_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1)) | (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (appTxDataRsp_V_V_full_n == ap_const_logic_0)) | ((tasi_writeToBufFifo_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_lv1_0 == tmp_210_reg_459)) | (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & (appTxDataRsp_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_lv1_0 == tmp_210_reg_459)) | (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_lv1_0 == tmp_210_reg_459) & (txAppStream2event_mergeEvent_V_full_n == ap_const_logic_0)) | ((txApp2txSar_upd_req_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_lv1_0 == tmp_210_reg_459)) | ((tasi_writeToBufFifo_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & ~(ap_const_lv1_0 == tmp_210_reg_459)) | (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & (appTxDataRsp_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & ~(ap_const_lv1_0 == tmp_210_reg_459)));
end

/// ap_sig_bdd_162 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_sig_bdd_155)
begin
    ap_sig_bdd_162 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_215 assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_sig_bdd_155)
begin
    ap_sig_bdd_215 = ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))));
end

/// ap_sig_bdd_335 assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_78 or ap_reg_ppstg_tai_state_load_reg_406_pp0_it1 or ap_reg_ppstg_tmp_187_reg_426_pp0_it1 or ap_reg_ppstg_tmp_79_reg_430_pp0_it1 or ap_sig_bdd_155)
begin
    ap_sig_bdd_335 = (~(ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_187_reg_426_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_79_reg_430_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_78) | (ap_sig_bdd_155 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))));
end

/// ap_sig_bdd_336 assign process. ///
always @ (ap_reg_ppstg_tmp_209_reg_447_pp0_it1 or tmp_210_reg_459)
begin
    ap_sig_bdd_336 = (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & (ap_const_lv1_0 == tmp_210_reg_459));
end

/// ap_sig_bdd_338 assign process. ///
always @ (ap_reg_ppstg_tmp_209_reg_447_pp0_it1 or tmp_210_reg_459)
begin
    ap_sig_bdd_338 = (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_209_reg_447_pp0_it1) & ~(ap_const_lv1_0 == tmp_210_reg_459));
end

/// ap_sig_bdd_50 assign process. ///
always @ (tmp_nbreadreq_fu_184_p3 or tai_state)
begin
    ap_sig_bdd_50 = ((tai_state == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_184_p3));
end

/// ap_sig_bdd_65 assign process. ///
always @ (tmp_187_nbreadreq_fu_198_p3 or tmp_79_nbreadreq_fu_206_p3 or tai_state)
begin
    ap_sig_bdd_65 = (~(tai_state == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_187_nbreadreq_fu_198_p3) & ~(ap_const_lv1_0 == tmp_79_nbreadreq_fu_206_p3));
end

/// ap_sig_bdd_78 assign process. ///
always @ (ap_start or ap_done_reg or appTxDataReqMetaData_V_empty_n or tmp_nbreadreq_fu_184_p3 or stateTable2txApp_rsp_V_empty_n or tmp_187_nbreadreq_fu_198_p3 or tmp_79_nbreadreq_fu_206_p3 or txSar2txApp_upd_rsp_V_empty_n or tai_state)
begin
    ap_sig_bdd_78 = (((appTxDataReqMetaData_V_empty_n == ap_const_logic_0) & (tai_state == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_184_p3)) | ((stateTable2txApp_rsp_V_empty_n == ap_const_logic_0) & ~(tai_state == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_187_nbreadreq_fu_198_p3) & ~(ap_const_lv1_0 == tmp_79_nbreadreq_fu_206_p3)) | (~(tai_state == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_187_nbreadreq_fu_198_p3) & ~(ap_const_lv1_0 == tmp_79_nbreadreq_fu_206_p3) & (txSar2txApp_upd_rsp_V_empty_n == ap_const_logic_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_94 assign process. ///
always @ (ap_reg_ppstg_tai_state_load_reg_406_pp0_it1 or ap_reg_ppstg_tmp_reg_410_pp0_it1)
begin
    ap_sig_bdd_94 = ((ap_const_lv1_0 == ap_reg_ppstg_tai_state_load_reg_406_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_410_pp0_it1));
end
assign tmp_187_nbreadreq_fu_198_p3 = txSar2txApp_upd_rsp_V_empty_n;
assign tmp_1_fu_351_p3 = {{ap_const_lv17_0}, {ap_reg_ppstg_tmp_V_21_reg_414_pp0_it1}};
assign tmp_208_fu_340_p2 = (tmp_s_fu_335_p2 - tmp_address_V_reg_439);
assign tmp_209_fu_309_p2 = (stateTable2txApp_rsp_V_dout == ap_const_lv4_3? 1'b1: 1'b0);
assign tmp_210_fu_345_p2 = (tasi_writeMeta_length_V > tmp_208_fu_340_p2? 1'b1: 1'b0);
assign tmp_5_fu_363_p5 = {{{{{{ap_const_lv1_0}, {tmp_length_V_reg_451}}}, {ap_reg_ppstg_tmp_address_V_reg_439_pp0_it1}}}, {tasi_writeMeta_sessionID_V}};
assign tmp_79_nbreadreq_fu_206_p3 = stateTable2txApp_rsp_V_empty_n;
assign tmp_7_fu_395_p4 = {{{{ap_const_lv1_1}, {tmp_mempt_V_fu_391_p2}}}, {tasi_writeMeta_sessionID_V}};
assign tmp_V_21_fu_269_p1 = appTxDataReqMetaData_V_dout[15:0];
assign tmp_V_fu_374_p1 = tmp_length_V_reg_451;
assign tmp_mempt_V_fu_391_p2 = (tmp_length_V_reg_451 + ap_reg_ppstg_tmp_address_V_reg_439_pp0_it1);
assign tmp_nbreadreq_fu_184_p3 = appTxDataReqMetaData_V_empty_n;
assign tmp_s_fu_335_p2 = ($signed(tmp_ackd_V_load_new_reg_434) + $signed(ap_const_lv16_FFFF));
assign txApp2stateTable_req_V_V_din = ap_reg_ppstg_tmp_V_21_reg_414_pp0_it1;
assign txAppStream2event_mergeEvent_V_din = {{{{{{{{ap_const_lv3_0}, {tmp_length_V_reg_451}}}, {ap_reg_ppstg_tmp_address_V_reg_439_pp0_it1}}}, {tasi_writeMeta_sessionID_V}}}, {ap_const_lv3_0}};


endmodule //toe_tasi_metaLoader
