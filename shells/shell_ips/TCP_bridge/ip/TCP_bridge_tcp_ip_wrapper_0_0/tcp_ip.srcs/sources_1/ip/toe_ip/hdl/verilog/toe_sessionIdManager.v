// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_sessionIdManager (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        slc_sessionIdFinFifo_V_V_dout,
        slc_sessionIdFinFifo_V_V_empty_n,
        slc_sessionIdFinFifo_V_V_read,
        slc_sessionIdFreeList_V_V_din,
        slc_sessionIdFreeList_V_V_full_n,
        slc_sessionIdFreeList_V_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv7_64 = 7'b1100100;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [13:0] slc_sessionIdFinFifo_V_V_dout;
input   slc_sessionIdFinFifo_V_V_empty_n;
output   slc_sessionIdFinFifo_V_V_read;
output  [13:0] slc_sessionIdFreeList_V_V_din;
input   slc_sessionIdFreeList_V_V_full_n;
output   slc_sessionIdFreeList_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg slc_sessionIdFinFifo_V_V_read;
reg[13:0] slc_sessionIdFreeList_V_V_din;
reg slc_sessionIdFreeList_V_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_34_p3;
reg    ap_sig_bdd_49;
reg   [0:0] tmp_reg_82;
reg   [0:0] tmp_s_reg_91;
reg    ap_sig_bdd_66;
reg   [6:0] counter_V = 7'b0000000;
reg   [6:0] counter_V_load_reg_86;
wire   [0:0] tmp_s_fu_60_p2;
reg   [13:0] tmp_V_reg_95;
wire   [13:0] tmp_V_9_fu_78_p1;
wire   [6:0] tmp_99_fu_66_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_62;
reg    ap_sig_bdd_88;




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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (tmp_nbreadreq_fu_34_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == tmp_s_fu_60_p2))) begin
        counter_V <= tmp_99_fu_66_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (tmp_nbreadreq_fu_34_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        counter_V_load_reg_86 <= counter_V;
        tmp_s_reg_91 <= tmp_s_fu_60_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_34_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_V_reg_95 <= slc_sessionIdFinFifo_V_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_reg_82 <= tmp_nbreadreq_fu_34_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or ap_sig_bdd_66)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
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
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or ap_sig_bdd_66)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
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

/// slc_sessionIdFinFifo_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_nbreadreq_fu_34_p3 or ap_sig_bdd_49 or ap_sig_bdd_66)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_34_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        slc_sessionIdFinFifo_V_V_read = ap_const_logic_1;
    end else begin
        slc_sessionIdFinFifo_V_V_read = ap_const_logic_0;
    end
end

/// slc_sessionIdFreeList_V_V_din assign process. ///
always @ (tmp_reg_82 or tmp_V_reg_95 or tmp_V_9_fu_78_p1 or ap_sig_bdd_62 or ap_sig_bdd_88)
begin
    if (ap_sig_bdd_88) begin
        if (~(ap_const_lv1_0 == tmp_reg_82)) begin
            slc_sessionIdFreeList_V_V_din = tmp_V_reg_95;
        end else if (ap_sig_bdd_62) begin
            slc_sessionIdFreeList_V_V_din = tmp_V_9_fu_78_p1;
        end else begin
            slc_sessionIdFreeList_V_V_din = 'bx;
        end
    end else begin
        slc_sessionIdFreeList_V_V_din = 'bx;
    end
end

/// slc_sessionIdFreeList_V_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or tmp_reg_82 or tmp_s_reg_91 or ap_sig_bdd_66)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv1_0 == tmp_reg_82) & ~(ap_const_lv1_0 == tmp_s_reg_91) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_reg_82) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        slc_sessionIdFreeList_V_V_write = ap_const_logic_1;
    end else begin
        slc_sessionIdFreeList_V_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or ap_sig_bdd_66 or ap_sig_pprstidle_pp0)
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

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_49 assign process. ///
always @ (ap_start or ap_done_reg or slc_sessionIdFinFifo_V_V_empty_n or tmp_nbreadreq_fu_34_p3)
begin
    ap_sig_bdd_49 = (((slc_sessionIdFinFifo_V_V_empty_n == ap_const_logic_0) & ~(tmp_nbreadreq_fu_34_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_62 assign process. ///
always @ (tmp_reg_82 or tmp_s_reg_91)
begin
    ap_sig_bdd_62 = ((ap_const_lv1_0 == tmp_reg_82) & ~(ap_const_lv1_0 == tmp_s_reg_91));
end

/// ap_sig_bdd_66 assign process. ///
always @ (slc_sessionIdFreeList_V_V_full_n or tmp_reg_82 or tmp_s_reg_91)
begin
    ap_sig_bdd_66 = (((slc_sessionIdFreeList_V_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == tmp_reg_82) & ~(ap_const_lv1_0 == tmp_s_reg_91)) | ((slc_sessionIdFreeList_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_reg_82)));
end

/// ap_sig_bdd_88 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or ap_sig_bdd_66)
begin
    ap_sig_bdd_88 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_66 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end
assign tmp_99_fu_66_p2 = (counter_V + ap_const_lv7_1);
assign tmp_V_9_fu_78_p1 = counter_V_load_reg_86;
assign tmp_nbreadreq_fu_34_p3 = slc_sessionIdFinFifo_V_V_empty_n;
assign tmp_s_fu_60_p2 = (counter_V < ap_const_lv7_64? 1'b1: 1'b0);


endmodule //toe_sessionIdManager
