-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity roundRobin is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    packetIn_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    packetIn_TVALID : IN STD_LOGIC;
    packetIn_TREADY : OUT STD_LOGIC;
    packetIn_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    packetIn_TDEST : IN STD_LOGIC_VECTOR (7 downto 0);
    packetOut_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    packetOut_TVALID : OUT STD_LOGIC;
    packetOut_TREADY : IN STD_LOGIC;
    packetOut_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    packetOut_TDEST : OUT STD_LOGIC_VECTOR (7 downto 0);
    base_V : IN STD_LOGIC_VECTOR (7 downto 0);
    max_V : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of roundRobin is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "roundRobin,hls_ip_2016_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcku115-flva1517-2-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.102000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=343,HLS_SYN_LUT=229}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";

    signal ap_rst_n_inv : STD_LOGIC;
    signal packetIn_V_packet_V_0_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal packetIn_V_packet_V_0_vld_in : STD_LOGIC;
    signal packetIn_V_packet_V_0_vld_out : STD_LOGIC;
    signal packetIn_V_packet_V_0_ack_in : STD_LOGIC;
    signal packetIn_V_packet_V_0_ack_out : STD_LOGIC;
    signal packetIn_V_packet_V_0_payload_A : STD_LOGIC_VECTOR (63 downto 0);
    signal packetIn_V_packet_V_0_payload_B : STD_LOGIC_VECTOR (63 downto 0);
    signal packetIn_V_packet_V_0_sel_rd : STD_LOGIC := '0';
    signal packetIn_V_packet_V_0_sel_wr : STD_LOGIC := '0';
    signal packetIn_V_packet_V_0_sel : STD_LOGIC;
    signal packetIn_V_packet_V_0_load_A : STD_LOGIC;
    signal packetIn_V_packet_V_0_load_B : STD_LOGIC;
    signal packetIn_V_packet_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal packetIn_V_packet_V_0_state_cmp_full : STD_LOGIC;
    signal packetIn_V_last_V_0_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal packetIn_V_last_V_0_vld_in : STD_LOGIC;
    signal packetIn_V_last_V_0_vld_out : STD_LOGIC;
    signal packetIn_V_last_V_0_ack_in : STD_LOGIC;
    signal packetIn_V_last_V_0_ack_out : STD_LOGIC;
    signal packetIn_V_last_V_0_payload_A : STD_LOGIC_VECTOR (0 downto 0);
    signal packetIn_V_last_V_0_payload_B : STD_LOGIC_VECTOR (0 downto 0);
    signal packetIn_V_last_V_0_sel_rd : STD_LOGIC := '0';
    signal packetIn_V_last_V_0_sel_wr : STD_LOGIC := '0';
    signal packetIn_V_last_V_0_sel : STD_LOGIC;
    signal packetIn_V_last_V_0_load_A : STD_LOGIC;
    signal packetIn_V_last_V_0_load_B : STD_LOGIC;
    signal packetIn_V_last_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal packetIn_V_last_V_0_state_cmp_full : STD_LOGIC;
    signal packetIn_V_dest_V_0_vld_in : STD_LOGIC;
    signal packetIn_V_dest_V_0_ack_out : STD_LOGIC;
    signal packetIn_V_dest_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal packetOut_V_packet_V_1_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal packetOut_V_packet_V_1_vld_in : STD_LOGIC;
    signal packetOut_V_packet_V_1_vld_out : STD_LOGIC;
    signal packetOut_V_packet_V_1_ack_in : STD_LOGIC;
    signal packetOut_V_packet_V_1_ack_out : STD_LOGIC;
    signal packetOut_V_packet_V_1_payload_A : STD_LOGIC_VECTOR (63 downto 0);
    signal packetOut_V_packet_V_1_payload_B : STD_LOGIC_VECTOR (63 downto 0);
    signal packetOut_V_packet_V_1_sel_rd : STD_LOGIC := '0';
    signal packetOut_V_packet_V_1_sel_wr : STD_LOGIC := '0';
    signal packetOut_V_packet_V_1_sel : STD_LOGIC;
    signal packetOut_V_packet_V_1_load_A : STD_LOGIC;
    signal packetOut_V_packet_V_1_load_B : STD_LOGIC;
    signal packetOut_V_packet_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal packetOut_V_packet_V_1_state_cmp_full : STD_LOGIC;
    signal packetOut_V_last_V_1_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal packetOut_V_last_V_1_vld_in : STD_LOGIC;
    signal packetOut_V_last_V_1_vld_out : STD_LOGIC;
    signal packetOut_V_last_V_1_ack_in : STD_LOGIC;
    signal packetOut_V_last_V_1_ack_out : STD_LOGIC;
    signal packetOut_V_last_V_1_payload_A : STD_LOGIC_VECTOR (0 downto 0);
    signal packetOut_V_last_V_1_payload_B : STD_LOGIC_VECTOR (0 downto 0);
    signal packetOut_V_last_V_1_sel_rd : STD_LOGIC := '0';
    signal packetOut_V_last_V_1_sel_wr : STD_LOGIC := '0';
    signal packetOut_V_last_V_1_sel : STD_LOGIC;
    signal packetOut_V_last_V_1_load_A : STD_LOGIC;
    signal packetOut_V_last_V_1_load_B : STD_LOGIC;
    signal packetOut_V_last_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal packetOut_V_last_V_1_state_cmp_full : STD_LOGIC;
    signal packetOut_V_dest_V_1_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal packetOut_V_dest_V_1_vld_in : STD_LOGIC;
    signal packetOut_V_dest_V_1_vld_out : STD_LOGIC;
    signal packetOut_V_dest_V_1_ack_in : STD_LOGIC;
    signal packetOut_V_dest_V_1_ack_out : STD_LOGIC;
    signal packetOut_V_dest_V_1_payload_A : STD_LOGIC_VECTOR (7 downto 0);
    signal packetOut_V_dest_V_1_payload_B : STD_LOGIC_VECTOR (7 downto 0);
    signal packetOut_V_dest_V_1_sel_rd : STD_LOGIC := '0';
    signal packetOut_V_dest_V_1_sel_wr : STD_LOGIC := '0';
    signal packetOut_V_dest_V_1_sel : STD_LOGIC;
    signal packetOut_V_dest_V_1_load_A : STD_LOGIC;
    signal packetOut_V_dest_V_1_load_B : STD_LOGIC;
    signal packetOut_V_dest_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal packetOut_V_dest_V_1_state_cmp_full : STD_LOGIC;
    signal packetIn_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal packetOut_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal index_cast_fu_89_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal index_cast_reg_159 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_last_V_fu_106_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_147_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal val_assign_fu_46 : STD_LOGIC_VECTOR (31 downto 0);
    signal index_fu_85_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal index_1_index_cast_fu_138_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_111_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_121_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_1_fu_115_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal index_1_cast_fu_125_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal index_1_index_fu_131_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    packetIn_V_dest_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetIn_V_dest_V_0_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = packetIn_V_dest_V_0_vld_in) and (ap_const_logic_1 = packetIn_V_dest_V_0_ack_out) and (ap_const_lv2_3 = packetIn_V_dest_V_0_state)) or ((ap_const_logic_0 = packetIn_V_dest_V_0_vld_in) and (ap_const_lv2_2 = packetIn_V_dest_V_0_state)))) then 
                    packetIn_V_dest_V_0_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = packetIn_V_dest_V_0_vld_in) and (ap_const_logic_0 = packetIn_V_dest_V_0_ack_out) and (ap_const_lv2_3 = packetIn_V_dest_V_0_state)) or ((ap_const_logic_0 = packetIn_V_dest_V_0_ack_out) and (ap_const_lv2_1 = packetIn_V_dest_V_0_state)))) then 
                    packetIn_V_dest_V_0_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = packetIn_V_dest_V_0_vld_in) and (ap_const_lv2_2 = packetIn_V_dest_V_0_state)) or ((ap_const_logic_1 = packetIn_V_dest_V_0_ack_out) and (ap_const_lv2_1 = packetIn_V_dest_V_0_state)) or ((ap_const_lv2_3 = packetIn_V_dest_V_0_state) and not(((ap_const_logic_1 = packetIn_V_dest_V_0_vld_in) and (ap_const_logic_0 = packetIn_V_dest_V_0_ack_out))) and not(((ap_const_logic_0 = packetIn_V_dest_V_0_vld_in) and (ap_const_logic_1 = packetIn_V_dest_V_0_ack_out)))))) then 
                    packetIn_V_dest_V_0_state <= ap_const_lv2_3;
                else 
                    packetIn_V_dest_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    packetIn_V_last_V_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetIn_V_last_V_0_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetIn_V_last_V_0_ack_out) and (ap_const_logic_1 = packetIn_V_last_V_0_vld_out))) then 
                                        packetIn_V_last_V_0_sel_rd <= not(packetIn_V_last_V_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    packetIn_V_last_V_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetIn_V_last_V_0_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetIn_V_last_V_0_vld_in) and (ap_const_logic_1 = packetIn_V_last_V_0_ack_in))) then 
                                        packetIn_V_last_V_0_sel_wr <= not(packetIn_V_last_V_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    packetIn_V_last_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetIn_V_last_V_0_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = packetIn_V_last_V_0_vld_in) and (ap_const_logic_1 = packetIn_V_last_V_0_ack_out) and (ap_const_lv2_3 = packetIn_V_last_V_0_state)) or ((ap_const_logic_0 = packetIn_V_last_V_0_vld_in) and (ap_const_lv2_2 = packetIn_V_last_V_0_state)))) then 
                    packetIn_V_last_V_0_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = packetIn_V_last_V_0_vld_in) and (ap_const_logic_0 = packetIn_V_last_V_0_ack_out) and (ap_const_lv2_3 = packetIn_V_last_V_0_state)) or ((ap_const_logic_0 = packetIn_V_last_V_0_ack_out) and (ap_const_lv2_1 = packetIn_V_last_V_0_state)))) then 
                    packetIn_V_last_V_0_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = packetIn_V_last_V_0_vld_in) and (ap_const_lv2_2 = packetIn_V_last_V_0_state)) or ((ap_const_logic_1 = packetIn_V_last_V_0_ack_out) and (ap_const_lv2_1 = packetIn_V_last_V_0_state)) or ((ap_const_lv2_3 = packetIn_V_last_V_0_state) and not(((ap_const_logic_1 = packetIn_V_last_V_0_vld_in) and (ap_const_logic_0 = packetIn_V_last_V_0_ack_out))) and not(((ap_const_logic_0 = packetIn_V_last_V_0_vld_in) and (ap_const_logic_1 = packetIn_V_last_V_0_ack_out)))))) then 
                    packetIn_V_last_V_0_state <= ap_const_lv2_3;
                else 
                    packetIn_V_last_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    packetIn_V_packet_V_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetIn_V_packet_V_0_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetIn_V_packet_V_0_ack_out) and (ap_const_logic_1 = packetIn_V_packet_V_0_vld_out))) then 
                                        packetIn_V_packet_V_0_sel_rd <= not(packetIn_V_packet_V_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    packetIn_V_packet_V_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetIn_V_packet_V_0_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetIn_V_packet_V_0_vld_in) and (ap_const_logic_1 = packetIn_V_packet_V_0_ack_in))) then 
                                        packetIn_V_packet_V_0_sel_wr <= not(packetIn_V_packet_V_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    packetIn_V_packet_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetIn_V_packet_V_0_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = packetIn_V_packet_V_0_vld_in) and (ap_const_logic_1 = packetIn_V_packet_V_0_ack_out) and (packetIn_V_packet_V_0_state = ap_const_lv2_3)) or ((ap_const_logic_0 = packetIn_V_packet_V_0_vld_in) and (packetIn_V_packet_V_0_state = ap_const_lv2_2)))) then 
                    packetIn_V_packet_V_0_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = packetIn_V_packet_V_0_vld_in) and (ap_const_logic_0 = packetIn_V_packet_V_0_ack_out) and (packetIn_V_packet_V_0_state = ap_const_lv2_3)) or ((ap_const_logic_0 = packetIn_V_packet_V_0_ack_out) and (packetIn_V_packet_V_0_state = ap_const_lv2_1)))) then 
                    packetIn_V_packet_V_0_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = packetIn_V_packet_V_0_vld_in) and (packetIn_V_packet_V_0_state = ap_const_lv2_2)) or ((ap_const_logic_1 = packetIn_V_packet_V_0_ack_out) and (packetIn_V_packet_V_0_state = ap_const_lv2_1)) or ((packetIn_V_packet_V_0_state = ap_const_lv2_3) and not(((ap_const_logic_1 = packetIn_V_packet_V_0_vld_in) and (ap_const_logic_0 = packetIn_V_packet_V_0_ack_out))) and not(((ap_const_logic_0 = packetIn_V_packet_V_0_vld_in) and (ap_const_logic_1 = packetIn_V_packet_V_0_ack_out)))))) then 
                    packetIn_V_packet_V_0_state <= ap_const_lv2_3;
                else 
                    packetIn_V_packet_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_dest_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_dest_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_dest_V_1_ack_out) and (ap_const_logic_1 = packetOut_V_dest_V_1_vld_out))) then 
                                        packetOut_V_dest_V_1_sel_rd <= not(packetOut_V_dest_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_dest_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_dest_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_dest_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_dest_V_1_ack_in))) then 
                                        packetOut_V_dest_V_1_sel_wr <= not(packetOut_V_dest_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_dest_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_dest_V_1_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = packetOut_V_dest_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_dest_V_1_ack_out) and (ap_const_lv2_3 = packetOut_V_dest_V_1_state)) or ((ap_const_logic_0 = packetOut_V_dest_V_1_vld_in) and (ap_const_lv2_2 = packetOut_V_dest_V_1_state)))) then 
                    packetOut_V_dest_V_1_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = packetOut_V_dest_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_dest_V_1_ack_out) and (ap_const_lv2_3 = packetOut_V_dest_V_1_state)) or ((ap_const_logic_0 = packetOut_V_dest_V_1_ack_out) and (ap_const_lv2_1 = packetOut_V_dest_V_1_state)))) then 
                    packetOut_V_dest_V_1_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = packetOut_V_dest_V_1_vld_in) and (ap_const_lv2_2 = packetOut_V_dest_V_1_state)) or ((ap_const_logic_1 = packetOut_V_dest_V_1_ack_out) and (ap_const_lv2_1 = packetOut_V_dest_V_1_state)) or ((ap_const_lv2_3 = packetOut_V_dest_V_1_state) and not(((ap_const_logic_1 = packetOut_V_dest_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_dest_V_1_ack_out))) and not(((ap_const_logic_0 = packetOut_V_dest_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_dest_V_1_ack_out)))))) then 
                    packetOut_V_dest_V_1_state <= ap_const_lv2_3;
                else 
                    packetOut_V_dest_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_last_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_last_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_last_V_1_ack_out) and (ap_const_logic_1 = packetOut_V_last_V_1_vld_out))) then 
                                        packetOut_V_last_V_1_sel_rd <= not(packetOut_V_last_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_last_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_last_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_last_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_last_V_1_ack_in))) then 
                                        packetOut_V_last_V_1_sel_wr <= not(packetOut_V_last_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_last_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_last_V_1_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = packetOut_V_last_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_last_V_1_ack_out) and (ap_const_lv2_3 = packetOut_V_last_V_1_state)) or ((ap_const_logic_0 = packetOut_V_last_V_1_vld_in) and (ap_const_lv2_2 = packetOut_V_last_V_1_state)))) then 
                    packetOut_V_last_V_1_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = packetOut_V_last_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_last_V_1_ack_out) and (ap_const_lv2_3 = packetOut_V_last_V_1_state)) or ((ap_const_logic_0 = packetOut_V_last_V_1_ack_out) and (ap_const_lv2_1 = packetOut_V_last_V_1_state)))) then 
                    packetOut_V_last_V_1_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = packetOut_V_last_V_1_vld_in) and (ap_const_lv2_2 = packetOut_V_last_V_1_state)) or ((ap_const_logic_1 = packetOut_V_last_V_1_ack_out) and (ap_const_lv2_1 = packetOut_V_last_V_1_state)) or ((ap_const_lv2_3 = packetOut_V_last_V_1_state) and not(((ap_const_logic_1 = packetOut_V_last_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_last_V_1_ack_out))) and not(((ap_const_logic_0 = packetOut_V_last_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_last_V_1_ack_out)))))) then 
                    packetOut_V_last_V_1_state <= ap_const_lv2_3;
                else 
                    packetOut_V_last_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_packet_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_packet_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_packet_V_1_ack_out) and (ap_const_logic_1 = packetOut_V_packet_V_1_vld_out))) then 
                                        packetOut_V_packet_V_1_sel_rd <= not(packetOut_V_packet_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_packet_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_packet_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_packet_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_packet_V_1_ack_in))) then 
                                        packetOut_V_packet_V_1_sel_wr <= not(packetOut_V_packet_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_packet_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_packet_V_1_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = packetOut_V_packet_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_packet_V_1_ack_out) and (ap_const_lv2_3 = packetOut_V_packet_V_1_state)) or ((ap_const_logic_0 = packetOut_V_packet_V_1_vld_in) and (ap_const_lv2_2 = packetOut_V_packet_V_1_state)))) then 
                    packetOut_V_packet_V_1_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = packetOut_V_packet_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_packet_V_1_ack_out) and (ap_const_lv2_3 = packetOut_V_packet_V_1_state)) or ((ap_const_logic_0 = packetOut_V_packet_V_1_ack_out) and (ap_const_lv2_1 = packetOut_V_packet_V_1_state)))) then 
                    packetOut_V_packet_V_1_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = packetOut_V_packet_V_1_vld_in) and (ap_const_lv2_2 = packetOut_V_packet_V_1_state)) or ((ap_const_logic_1 = packetOut_V_packet_V_1_ack_out) and (ap_const_lv2_1 = packetOut_V_packet_V_1_state)) or ((ap_const_lv2_3 = packetOut_V_packet_V_1_state) and not(((ap_const_logic_1 = packetOut_V_packet_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_packet_V_1_ack_out))) and not(((ap_const_logic_0 = packetOut_V_packet_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_packet_V_1_ack_out)))))) then 
                    packetOut_V_packet_V_1_state <= ap_const_lv2_3;
                else 
                    packetOut_V_packet_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    val_assign_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_V_packet_V_0_vld_out = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_packet_V_1_ack_in))) and not((ap_const_lv1_0 = tmp_last_V_fu_106_p1)))) then 
                val_assign_fu_46 <= index_1_index_cast_fu_138_p1;
            elsif (((ap_const_lv1_1 = ap_CS_fsm_state1))) then 
                val_assign_fu_46 <= index_fu_85_p1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state1))) then
                index_cast_reg_159 <= index_cast_fu_89_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetIn_V_last_V_0_load_A)) then
                packetIn_V_last_V_0_payload_A <= packetIn_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetIn_V_last_V_0_load_B)) then
                packetIn_V_last_V_0_payload_B <= packetIn_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetIn_V_packet_V_0_load_A)) then
                packetIn_V_packet_V_0_payload_A <= packetIn_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetIn_V_packet_V_0_load_B)) then
                packetIn_V_packet_V_0_payload_B <= packetIn_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_dest_V_1_load_A)) then
                packetOut_V_dest_V_1_payload_A <= tmp_3_fu_147_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_dest_V_1_load_B)) then
                packetOut_V_dest_V_1_payload_B <= tmp_3_fu_147_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_last_V_1_load_A)) then
                packetOut_V_last_V_1_payload_A <= packetIn_V_last_V_0_data_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_last_V_1_load_B)) then
                packetOut_V_last_V_1_payload_B <= packetIn_V_last_V_0_data_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_packet_V_1_load_A)) then
                packetOut_V_packet_V_1_payload_A <= packetIn_V_packet_V_0_data_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_packet_V_1_load_B)) then
                packetOut_V_packet_V_1_payload_B <= packetIn_V_packet_V_0_data_out;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (packetIn_V_packet_V_0_vld_out, packetOut_V_packet_V_1_ack_in, ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (not(((packetIn_V_packet_V_0_vld_out = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_packet_V_1_ack_in)))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (not((ap_const_logic_0 = packetOut_V_packet_V_1_ack_in))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);
    ap_CS_fsm_state3 <= ap_CS_fsm(2 downto 2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3 downto 3);

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    index_1_cast_fu_125_p2 <= std_logic_vector(unsigned(ap_const_lv9_1) + unsigned(tmp_2_fu_121_p1));
        index_1_index_cast_fu_138_p1 <= std_logic_vector(resize(signed(index_1_index_fu_131_p3),32));

    index_1_index_fu_131_p3 <= 
        index_1_cast_fu_125_p2 when (tmp_1_fu_115_p2(0) = '1') else 
        index_cast_reg_159;
        index_cast_fu_89_p1 <= std_logic_vector(resize(signed(base_V),9));

        index_fu_85_p1 <= std_logic_vector(resize(signed(base_V),32));


    packetIn_TDATA_blk_n_assign_proc : process(packetIn_V_packet_V_0_state, ap_CS_fsm_state3)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3))) then 
            packetIn_TDATA_blk_n <= packetIn_V_packet_V_0_state(0);
        else 
            packetIn_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    packetIn_TREADY <= packetIn_V_dest_V_0_state(1);

    packetIn_V_dest_V_0_ack_out_assign_proc : process(packetIn_V_packet_V_0_vld_out, packetOut_V_packet_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_V_packet_V_0_vld_out = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_packet_V_1_ack_in))))) then 
            packetIn_V_dest_V_0_ack_out <= ap_const_logic_1;
        else 
            packetIn_V_dest_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;

    packetIn_V_dest_V_0_vld_in <= packetIn_TVALID;
    packetIn_V_last_V_0_ack_in <= packetIn_V_last_V_0_state(1);

    packetIn_V_last_V_0_ack_out_assign_proc : process(packetIn_V_packet_V_0_vld_out, packetOut_V_packet_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_V_packet_V_0_vld_out = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_packet_V_1_ack_in))))) then 
            packetIn_V_last_V_0_ack_out <= ap_const_logic_1;
        else 
            packetIn_V_last_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    packetIn_V_last_V_0_data_out_assign_proc : process(packetIn_V_last_V_0_payload_A, packetIn_V_last_V_0_payload_B, packetIn_V_last_V_0_sel)
    begin
        if ((ap_const_logic_1 = packetIn_V_last_V_0_sel)) then 
            packetIn_V_last_V_0_data_out <= packetIn_V_last_V_0_payload_B;
        else 
            packetIn_V_last_V_0_data_out <= packetIn_V_last_V_0_payload_A;
        end if; 
    end process;

    packetIn_V_last_V_0_load_A <= (packetIn_V_last_V_0_state_cmp_full and not(packetIn_V_last_V_0_sel_wr));
    packetIn_V_last_V_0_load_B <= (packetIn_V_last_V_0_sel_wr and packetIn_V_last_V_0_state_cmp_full);
    packetIn_V_last_V_0_sel <= packetIn_V_last_V_0_sel_rd;
    packetIn_V_last_V_0_state_cmp_full <= '0' when (packetIn_V_last_V_0_state = ap_const_lv2_1) else '1';
    packetIn_V_last_V_0_vld_in <= packetIn_TVALID;
    packetIn_V_last_V_0_vld_out <= packetIn_V_last_V_0_state(0);
    packetIn_V_packet_V_0_ack_in <= packetIn_V_packet_V_0_state(1);

    packetIn_V_packet_V_0_ack_out_assign_proc : process(packetIn_V_packet_V_0_vld_out, packetOut_V_packet_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_V_packet_V_0_vld_out = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_packet_V_1_ack_in))))) then 
            packetIn_V_packet_V_0_ack_out <= ap_const_logic_1;
        else 
            packetIn_V_packet_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    packetIn_V_packet_V_0_data_out_assign_proc : process(packetIn_V_packet_V_0_payload_A, packetIn_V_packet_V_0_payload_B, packetIn_V_packet_V_0_sel)
    begin
        if ((ap_const_logic_1 = packetIn_V_packet_V_0_sel)) then 
            packetIn_V_packet_V_0_data_out <= packetIn_V_packet_V_0_payload_B;
        else 
            packetIn_V_packet_V_0_data_out <= packetIn_V_packet_V_0_payload_A;
        end if; 
    end process;

    packetIn_V_packet_V_0_load_A <= (packetIn_V_packet_V_0_state_cmp_full and not(packetIn_V_packet_V_0_sel_wr));
    packetIn_V_packet_V_0_load_B <= (packetIn_V_packet_V_0_sel_wr and packetIn_V_packet_V_0_state_cmp_full);
    packetIn_V_packet_V_0_sel <= packetIn_V_packet_V_0_sel_rd;
    packetIn_V_packet_V_0_state_cmp_full <= '0' when (packetIn_V_packet_V_0_state = ap_const_lv2_1) else '1';
    packetIn_V_packet_V_0_vld_in <= packetIn_TVALID;
    packetIn_V_packet_V_0_vld_out <= packetIn_V_packet_V_0_state(0);
    packetOut_TDATA <= packetOut_V_packet_V_1_data_out;

    packetOut_TDATA_blk_n_assign_proc : process(packetOut_V_packet_V_1_state, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if ((((ap_const_lv1_1 = ap_CS_fsm_state3)) or ((ap_const_lv1_1 = ap_CS_fsm_state4)))) then 
            packetOut_TDATA_blk_n <= packetOut_V_packet_V_1_state(1);
        else 
            packetOut_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    packetOut_TDEST <= packetOut_V_dest_V_1_data_out;
    packetOut_TLAST <= packetOut_V_last_V_1_data_out;
    packetOut_TVALID <= packetOut_V_dest_V_1_state(0);
    packetOut_V_dest_V_1_ack_in <= packetOut_V_dest_V_1_state(1);
    packetOut_V_dest_V_1_ack_out <= packetOut_TREADY;

    packetOut_V_dest_V_1_data_out_assign_proc : process(packetOut_V_dest_V_1_payload_A, packetOut_V_dest_V_1_payload_B, packetOut_V_dest_V_1_sel)
    begin
        if ((ap_const_logic_1 = packetOut_V_dest_V_1_sel)) then 
            packetOut_V_dest_V_1_data_out <= packetOut_V_dest_V_1_payload_B;
        else 
            packetOut_V_dest_V_1_data_out <= packetOut_V_dest_V_1_payload_A;
        end if; 
    end process;

    packetOut_V_dest_V_1_load_A <= (packetOut_V_dest_V_1_state_cmp_full and not(packetOut_V_dest_V_1_sel_wr));
    packetOut_V_dest_V_1_load_B <= (packetOut_V_dest_V_1_sel_wr and packetOut_V_dest_V_1_state_cmp_full);
    packetOut_V_dest_V_1_sel <= packetOut_V_dest_V_1_sel_rd;
    packetOut_V_dest_V_1_state_cmp_full <= '0' when (packetOut_V_dest_V_1_state = ap_const_lv2_1) else '1';

    packetOut_V_dest_V_1_vld_in_assign_proc : process(packetIn_V_packet_V_0_vld_out, packetOut_V_packet_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_V_packet_V_0_vld_out = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_packet_V_1_ack_in))))) then 
            packetOut_V_dest_V_1_vld_in <= ap_const_logic_1;
        else 
            packetOut_V_dest_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    packetOut_V_dest_V_1_vld_out <= packetOut_V_dest_V_1_state(0);
    packetOut_V_last_V_1_ack_in <= packetOut_V_last_V_1_state(1);
    packetOut_V_last_V_1_ack_out <= packetOut_TREADY;

    packetOut_V_last_V_1_data_out_assign_proc : process(packetOut_V_last_V_1_payload_A, packetOut_V_last_V_1_payload_B, packetOut_V_last_V_1_sel)
    begin
        if ((ap_const_logic_1 = packetOut_V_last_V_1_sel)) then 
            packetOut_V_last_V_1_data_out <= packetOut_V_last_V_1_payload_B;
        else 
            packetOut_V_last_V_1_data_out <= packetOut_V_last_V_1_payload_A;
        end if; 
    end process;

    packetOut_V_last_V_1_load_A <= (packetOut_V_last_V_1_state_cmp_full and not(packetOut_V_last_V_1_sel_wr));
    packetOut_V_last_V_1_load_B <= (packetOut_V_last_V_1_sel_wr and packetOut_V_last_V_1_state_cmp_full);
    packetOut_V_last_V_1_sel <= packetOut_V_last_V_1_sel_rd;
    packetOut_V_last_V_1_state_cmp_full <= '0' when (packetOut_V_last_V_1_state = ap_const_lv2_1) else '1';

    packetOut_V_last_V_1_vld_in_assign_proc : process(packetIn_V_packet_V_0_vld_out, packetOut_V_packet_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_V_packet_V_0_vld_out = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_packet_V_1_ack_in))))) then 
            packetOut_V_last_V_1_vld_in <= ap_const_logic_1;
        else 
            packetOut_V_last_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    packetOut_V_last_V_1_vld_out <= packetOut_V_last_V_1_state(0);
    packetOut_V_packet_V_1_ack_in <= packetOut_V_packet_V_1_state(1);
    packetOut_V_packet_V_1_ack_out <= packetOut_TREADY;

    packetOut_V_packet_V_1_data_out_assign_proc : process(packetOut_V_packet_V_1_payload_A, packetOut_V_packet_V_1_payload_B, packetOut_V_packet_V_1_sel)
    begin
        if ((ap_const_logic_1 = packetOut_V_packet_V_1_sel)) then 
            packetOut_V_packet_V_1_data_out <= packetOut_V_packet_V_1_payload_B;
        else 
            packetOut_V_packet_V_1_data_out <= packetOut_V_packet_V_1_payload_A;
        end if; 
    end process;

    packetOut_V_packet_V_1_load_A <= (packetOut_V_packet_V_1_state_cmp_full and not(packetOut_V_packet_V_1_sel_wr));
    packetOut_V_packet_V_1_load_B <= (packetOut_V_packet_V_1_sel_wr and packetOut_V_packet_V_1_state_cmp_full);
    packetOut_V_packet_V_1_sel <= packetOut_V_packet_V_1_sel_rd;
    packetOut_V_packet_V_1_state_cmp_full <= '0' when (packetOut_V_packet_V_1_state = ap_const_lv2_1) else '1';

    packetOut_V_packet_V_1_vld_in_assign_proc : process(packetIn_V_packet_V_0_vld_out, packetOut_V_packet_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_V_packet_V_0_vld_out = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_packet_V_1_ack_in))))) then 
            packetOut_V_packet_V_1_vld_in <= ap_const_logic_1;
        else 
            packetOut_V_packet_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    packetOut_V_packet_V_1_vld_out <= packetOut_V_packet_V_1_state(0);
    tmp_1_fu_115_p2 <= "1" when (val_assign_fu_46 = tmp_fu_111_p1) else "0";
    tmp_2_fu_121_p1 <= val_assign_fu_46(9 - 1 downto 0);
    tmp_3_fu_147_p1 <= val_assign_fu_46(8 - 1 downto 0);
        tmp_fu_111_p1 <= std_logic_vector(resize(signed(max_V),32));

    tmp_last_V_fu_106_p1 <= packetIn_V_last_V_0_data_out;
end behav;
