// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_mergeFunction_appNotification_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxEng2rxApp_notification_V_dout,
        rxEng2rxApp_notification_V_empty_n,
        rxEng2rxApp_notification_V_read,
        timer2rxApp_notification_V_dout,
        timer2rxApp_notification_V_empty_n,
        timer2rxApp_notification_V_read,
        out_V_din,
        out_V_full_n,
        out_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm0_0 = 1'b1;
parameter    ap_ST_st2_fsm1_1 = 2'b10;
parameter    ap_ST_st3_fsm2_1 = 2'b10;
parameter    ap_ST_st0_fsm1_0 = 2'b1;
parameter    ap_ST_st0_fsm2_0 = 2'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [80:0] rxEng2rxApp_notification_V_dout;
input   rxEng2rxApp_notification_V_empty_n;
output   rxEng2rxApp_notification_V_read;
input  [80:0] timer2rxApp_notification_V_dout;
input   timer2rxApp_notification_V_empty_n;
output   timer2rxApp_notification_V_read;
output  [80:0] out_V_din;
input   out_V_full_n;
output   out_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxEng2rxApp_notification_V_read;
reg timer2rxApp_notification_V_read;
reg[80:0] out_V_din;
reg out_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm0 = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm0_0;
reg    ap_sig_bdd_26;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm1 = 2'b1;
reg    ap_sig_cseq_ST_st0_fsm1_0;
reg    ap_sig_bdd_37;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm2 = 2'b1;
reg    ap_sig_cseq_ST_st0_fsm2_0;
reg    ap_sig_bdd_45;
wire   [0:0] tmp91_nbreadreq_fu_92_p3;
reg    ap_sig_bdd_63;
reg   [0:0] tmp91_reg_128;
wire   [0:0] tmp_nbreadreq_fu_106_p3;
reg    ap_sig_bdd_77;
reg    ap_sig_cseq_ST_st2_fsm1_1;
reg    ap_sig_bdd_83;
reg   [0:0] ap_reg_ppstg_tmp91_reg_128_pp0_it1;
reg   [0:0] tmp_reg_137;
reg    ap_sig_bdd_102;
reg    ap_sig_cseq_ST_st3_fsm2_1;
reg    ap_sig_bdd_107;
reg   [80:0] tmp1_reg_132;
reg   [80:0] ap_reg_ppstg_tmp1_reg_132_pp0_it1;
reg   [80:0] tmp_2_reg_141;
reg   [0:0] ap_NS_fsm0;
reg   [1:0] ap_NS_fsm1;
reg   [1:0] ap_NS_fsm2;
reg    ap_sig_bdd_98;
reg    ap_sig_bdd_139;




/// the current state (ap_CS_fsm0) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm0
    if (ap_rst == 1'b1) begin
        ap_CS_fsm0 <= ap_ST_st1_fsm0_0;
    end else begin
        ap_CS_fsm0 <= ap_NS_fsm0;
    end
end

/// the current state (ap_CS_fsm1) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm1
    if (ap_rst == 1'b1) begin
        ap_CS_fsm1 <= ap_ST_st0_fsm1_0;
    end else begin
        ap_CS_fsm1 <= ap_NS_fsm1;
    end
end

/// the current state (ap_CS_fsm2) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm2
    if (ap_rst == 1'b1) begin
        ap_CS_fsm2 <= ap_ST_st0_fsm2_0;
    end else begin
        ap_CS_fsm2 <= ap_NS_fsm2;
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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_77 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        ap_reg_ppstg_tmp1_reg_132_pp0_it1 <= tmp1_reg_132;
        ap_reg_ppstg_tmp91_reg_128_pp0_it1 <= tmp91_reg_128;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp91_nbreadreq_fu_92_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        tmp1_reg_132 <= rxEng2rxApp_notification_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        tmp91_reg_128 <= tmp91_nbreadreq_fu_92_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_lv1_0 == tmp91_reg_128) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_106_p3) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_77 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        tmp_2_reg_141 <= timer2rxApp_notification_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_lv1_0 == tmp91_reg_128) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_77 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        tmp_reg_137 <= tmp_nbreadreq_fu_106_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_bdd_102 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_cseq_ST_st0_fsm1_0 or ap_sig_cseq_ST_st0_fsm2_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (ap_const_logic_1 == ap_sig_cseq_ST_st0_fsm1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_st0_fsm2_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_63 or ap_sig_bdd_77 or ap_sig_cseq_ST_st2_fsm1_1 or ap_sig_bdd_102 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st0_fsm1_0 assign process. ///
always @ (ap_sig_bdd_37)
begin
    if (ap_sig_bdd_37) begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st0_fsm2_0 assign process. ///
always @ (ap_sig_bdd_45)
begin
    if (ap_sig_bdd_45) begin
        ap_sig_cseq_ST_st0_fsm2_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st0_fsm2_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm0_0 assign process. ///
always @ (ap_sig_bdd_26)
begin
    if (ap_sig_bdd_26) begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm1_1 assign process. ///
always @ (ap_sig_bdd_83)
begin
    if (ap_sig_bdd_83) begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm2_1 assign process. ///
always @ (ap_sig_bdd_107)
begin
    if (ap_sig_bdd_107) begin
        ap_sig_cseq_ST_st3_fsm2_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm2_1 = ap_const_logic_0;
    end
end

/// out_V_din assign process. ///
always @ (ap_reg_ppstg_tmp91_reg_128_pp0_it1 or ap_reg_ppstg_tmp1_reg_132_pp0_it1 or tmp_2_reg_141 or ap_sig_bdd_98 or ap_sig_bdd_139)
begin
    if (ap_sig_bdd_139) begin
        if (~(ap_const_lv1_0 == ap_reg_ppstg_tmp91_reg_128_pp0_it1)) begin
            out_V_din = ap_reg_ppstg_tmp1_reg_132_pp0_it1;
        end else if (ap_sig_bdd_98) begin
            out_V_din = tmp_2_reg_141;
        end else begin
            out_V_din = 'bx;
        end
    end else begin
        out_V_din = 'bx;
    end
end

/// out_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppstg_tmp91_reg_128_pp0_it1 or tmp_reg_137 or ap_sig_bdd_102 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    if ((((ap_const_lv1_0 == ap_reg_ppstg_tmp91_reg_128_pp0_it1) & ~(ap_const_lv1_0 == tmp_reg_137) & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102)) | (~(ap_const_lv1_0 == ap_reg_ppstg_tmp91_reg_128_pp0_it1) & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102)))) begin
        out_V_write = ap_const_logic_1;
    end else begin
        out_V_write = ap_const_logic_0;
    end
end

/// rxEng2rxApp_notification_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or tmp91_nbreadreq_fu_92_p3 or ap_sig_bdd_63 or ap_sig_bdd_77 or ap_sig_cseq_ST_st2_fsm1_1 or ap_sig_bdd_102 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp91_nbreadreq_fu_92_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        rxEng2rxApp_notification_V_read = ap_const_logic_1;
    end else begin
        rxEng2rxApp_notification_V_read = ap_const_logic_0;
    end
end

/// timer2rxApp_notification_V_read assign process. ///
always @ (ap_done_reg or tmp91_reg_128 or tmp_nbreadreq_fu_106_p3 or ap_sig_bdd_77 or ap_sig_cseq_ST_st2_fsm1_1 or ap_sig_bdd_102 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    if (((ap_const_lv1_0 == tmp91_reg_128) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_106_p3) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_77 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        timer2rxApp_notification_V_read = ap_const_logic_1;
    end else begin
        timer2rxApp_notification_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm2) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm2 or ap_sig_bdd_77 or ap_sig_cseq_ST_st2_fsm1_1 or ap_sig_bdd_102 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    case (ap_CS_fsm2)
        ap_ST_st3_fsm2_1 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102) & ~ap_sig_bdd_77)) begin
                ap_NS_fsm2 = ap_ST_st3_fsm2_1;
            end else if ((~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102) & ((ap_sig_bdd_77 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)) | ~(ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) begin
                ap_NS_fsm2 = ap_ST_st0_fsm2_0;
            end else begin
                ap_NS_fsm2 = ap_ST_st3_fsm2_1;
            end
        end
        ap_ST_st0_fsm2_0 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_77 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
                ap_NS_fsm2 = ap_ST_st3_fsm2_1;
            end else begin
                ap_NS_fsm2 = ap_ST_st0_fsm2_0;
            end
        end
        default : 
        begin
            ap_NS_fsm2 = 'bx;
        end
    endcase
end

/// the next state (ap_NS_fsm1) of the state machine. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_CS_fsm1 or ap_sig_bdd_63 or ap_sig_bdd_77 or ap_sig_cseq_ST_st2_fsm1_1 or ap_sig_bdd_102 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    case (ap_CS_fsm1)
        ap_ST_st2_fsm1_1 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_77 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))) & ~ap_sig_bdd_63)) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else if ((~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_77 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))) & (~(ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ap_sig_bdd_63)))) begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end else begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end
        end
        ap_ST_st0_fsm1_0 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_77 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end
        end
        default : 
        begin
            ap_NS_fsm1 = 'bx;
        end
    endcase
end

/// the next state (ap_NS_fsm0) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm0 or ap_sig_bdd_63 or ap_sig_bdd_77 or ap_sig_cseq_ST_st2_fsm1_1 or ap_sig_bdd_102 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    case (ap_CS_fsm0)
        ap_ST_st1_fsm0_0 : 
        begin
            ap_NS_fsm0 = ap_ST_st1_fsm0_0;
        end
        default : 
        begin
            ap_NS_fsm0 = 'bx;
        end
    endcase
end


/// ap_sig_bdd_102 assign process. ///
always @ (out_V_full_n or ap_reg_ppstg_tmp91_reg_128_pp0_it1 or tmp_reg_137)
begin
    ap_sig_bdd_102 = (((out_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_tmp91_reg_128_pp0_it1) & ~(ap_const_lv1_0 == tmp_reg_137)) | ((out_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp91_reg_128_pp0_it1)));
end

/// ap_sig_bdd_107 assign process. ///
always @ (ap_CS_fsm2)
begin
    ap_sig_bdd_107 = (ap_const_lv1_1 == ap_CS_fsm2[ap_const_lv32_1]);
end

/// ap_sig_bdd_139 assign process. ///
always @ (ap_done_reg or ap_sig_bdd_102 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    ap_sig_bdd_139 = ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102));
end

/// ap_sig_bdd_26 assign process. ///
always @ (ap_CS_fsm0)
begin
    ap_sig_bdd_26 = (ap_CS_fsm0[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_37 assign process. ///
always @ (ap_CS_fsm1)
begin
    ap_sig_bdd_37 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_0]);
end

/// ap_sig_bdd_45 assign process. ///
always @ (ap_CS_fsm2)
begin
    ap_sig_bdd_45 = (ap_const_lv1_1 == ap_CS_fsm2[ap_const_lv32_0]);
end

/// ap_sig_bdd_63 assign process. ///
always @ (ap_start or ap_done_reg or rxEng2rxApp_notification_V_empty_n or tmp91_nbreadreq_fu_92_p3)
begin
    ap_sig_bdd_63 = (((rxEng2rxApp_notification_V_empty_n == ap_const_logic_0) & ~(tmp91_nbreadreq_fu_92_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_77 assign process. ///
always @ (timer2rxApp_notification_V_empty_n or tmp91_reg_128 or tmp_nbreadreq_fu_106_p3)
begin
    ap_sig_bdd_77 = ((timer2rxApp_notification_V_empty_n == ap_const_logic_0) & (ap_const_lv1_0 == tmp91_reg_128) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_106_p3));
end

/// ap_sig_bdd_83 assign process. ///
always @ (ap_CS_fsm1)
begin
    ap_sig_bdd_83 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_1]);
end

/// ap_sig_bdd_98 assign process. ///
always @ (ap_reg_ppstg_tmp91_reg_128_pp0_it1 or tmp_reg_137)
begin
    ap_sig_bdd_98 = ((ap_const_lv1_0 == ap_reg_ppstg_tmp91_reg_128_pp0_it1) & ~(ap_const_lv1_0 == tmp_reg_137));
end
assign tmp91_nbreadreq_fu_92_p3 = rxEng2rxApp_notification_V_empty_n;
assign tmp_nbreadreq_fu_106_p3 = timer2rxApp_notification_V_empty_n;


endmodule //toe_mergeFunction_appNotification_s

