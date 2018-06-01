# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: imports/constraints/ad_8k5.xdc

# XDC: imports/constraints/bitstream.xdc

# XDC: imports/constraints/pcie.xdc

# XDC: imports/constraints/ddr4_test.xdc

# XDC: imports/constraints/ddr4_test_axi4.xdc

# XDC: imports/constraints/ddr4sdram_b0_lane8.xdc

# XDC: imports/constraints/ddr4sdram_b0_unused.xdc

# XDC: imports/constraints/ddr4sdram_locs_b0_twin_die.xdc

# XDC: imports/constraints/ddr4sdram_locs_b0_x64.xdc

# XDC: imports/constraints/ddr4sdram_locs_b0_x72.xdc

# XDC: imports/constraints/ddr4sdram_props_b0_twin_die.xdc

# XDC: imports/constraints/refclk200.xdc

# Block Designs: bd/srcs/shell.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell || ORIG_REF_NAME==shell} -quiet] -quiet

# IP: bd/srcs/ip/shell_util_vector_logic_0_0/shell_util_vector_logic_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_util_vector_logic_0_0 || ORIG_REF_NAME==shell_util_vector_logic_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_util_vector_logic_1_0/shell_util_vector_logic_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_util_vector_logic_1_0 || ORIG_REF_NAME==shell_util_vector_logic_1_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_clk_wiz_0_0/shell_clk_wiz_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_clk_wiz_0_0 || ORIG_REF_NAME==shell_clk_wiz_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_gnd_0/shell_gnd_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_gnd_0 || ORIG_REF_NAME==shell_gnd_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_util_vector_logic_2_0/shell_util_vector_logic_2_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_util_vector_logic_2_0 || ORIG_REF_NAME==shell_util_vector_logic_2_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_axi_interconnect_0_0/shell_axi_interconnect_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_axi_interconnect_0_0 || ORIG_REF_NAME==shell_axi_interconnect_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_axi_bram_ctrl_0_0/shell_axi_bram_ctrl_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_axi_bram_ctrl_0_0 || ORIG_REF_NAME==shell_axi_bram_ctrl_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_blk_mem_gen_0_0/shell_blk_mem_gen_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_blk_mem_gen_0_0 || ORIG_REF_NAME==shell_blk_mem_gen_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_reverseEndian64_0_0/shell_reverseEndian64_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_reverseEndian64_0_0 || ORIG_REF_NAME==shell_reverseEndian64_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_reverseEndian64_1_0/shell_reverseEndian64_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_reverseEndian64_1_0 || ORIG_REF_NAME==shell_reverseEndian64_1_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_pr_decoupler_0_0/shell_pr_decoupler_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_pr_decoupler_0_0 || ORIG_REF_NAME==shell_pr_decoupler_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_axi_gpio_0_0/shell_axi_gpio_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_axi_gpio_0_0 || ORIG_REF_NAME==shell_axi_gpio_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_vio_0_0/shell_vio_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_vio_0_0 || ORIG_REF_NAME==shell_vio_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_proc_sys_reset_1_0/shell_proc_sys_reset_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_proc_sys_reset_1_0 || ORIG_REF_NAME==shell_proc_sys_reset_1_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_ddr4_0_0/shell_ddr4_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_ddr4_0_0 || ORIG_REF_NAME==shell_ddr4_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_mem_interconnect_0/shell_mem_interconnect_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_mem_interconnect_0 || ORIG_REF_NAME==shell_mem_interconnect_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_xbar_0/shell_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xbar_0 || ORIG_REF_NAME==shell_xbar_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_xbar_1/shell_xbar_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xbar_1 || ORIG_REF_NAME==shell_xbar_1} -quiet] -quiet

# IP: bd/srcs/ip/shell_mdm_1_0/shell_mdm_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_mdm_1_0 || ORIG_REF_NAME==shell_mdm_1_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_rst_clk_wiz_0_100M_0/shell_rst_clk_wiz_0_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_rst_clk_wiz_0_100M_0 || ORIG_REF_NAME==shell_rst_clk_wiz_0_100M_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_microblaze_0_axi_periph_0/shell_microblaze_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_microblaze_0_axi_periph_0 || ORIG_REF_NAME==shell_microblaze_0_axi_periph_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_microblaze_0_0/shell_microblaze_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_microblaze_0_0 || ORIG_REF_NAME==shell_microblaze_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_dlmb_v10_0/shell_dlmb_v10_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_dlmb_v10_0 || ORIG_REF_NAME==shell_dlmb_v10_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_ilmb_v10_0/shell_ilmb_v10_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_ilmb_v10_0 || ORIG_REF_NAME==shell_ilmb_v10_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_dlmb_bram_if_cntlr_0/shell_dlmb_bram_if_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_dlmb_bram_if_cntlr_0 || ORIG_REF_NAME==shell_dlmb_bram_if_cntlr_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_ilmb_bram_if_cntlr_0/shell_ilmb_bram_if_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_ilmb_bram_if_cntlr_0 || ORIG_REF_NAME==shell_ilmb_bram_if_cntlr_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_lmb_bram_0/shell_lmb_bram_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_lmb_bram_0 || ORIG_REF_NAME==shell_lmb_bram_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_xbar_2/shell_xbar_2.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xbar_2 || ORIG_REF_NAME==shell_xbar_2} -quiet] -quiet

# IP: bd/srcs/ip/shell_xdma_0_0/shell_xdma_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_xdma_0_0 || ORIG_REF_NAME==shell_xdma_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_util_ds_buf_0/shell_util_ds_buf_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_util_ds_buf_0 || ORIG_REF_NAME==shell_util_ds_buf_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_gnd_1/shell_gnd_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_gnd_1 || ORIG_REF_NAME==shell_gnd_1} -quiet] -quiet

# IP: bd/srcs/ip/shell_tx_register_slice_0_0/shell_tx_register_slice_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_tx_register_slice_0_0 || ORIG_REF_NAME==shell_tx_register_slice_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_axi_10g_ethernet_0_0/shell_axi_10g_ethernet_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_axi_10g_ethernet_0_0 || ORIG_REF_NAME==shell_axi_10g_ethernet_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_mac_config_vector_0/shell_mac_config_vector_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_mac_config_vector_0 || ORIG_REF_NAME==shell_mac_config_vector_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_tx_ifg_tuser_0/shell_tx_ifg_tuser_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_tx_ifg_tuser_0 || ORIG_REF_NAME==shell_tx_ifg_tuser_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_ifg_delay_0/shell_ifg_delay_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_ifg_delay_0 || ORIG_REF_NAME==shell_ifg_delay_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_vcc_0/shell_vcc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_vcc_0 || ORIG_REF_NAME==shell_vcc_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_pcs_config_vector_0/shell_pcs_config_vector_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_pcs_config_vector_0 || ORIG_REF_NAME==shell_pcs_config_vector_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_rx_register_slice_1_0/shell_rx_register_slice_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_rx_register_slice_1_0 || ORIG_REF_NAME==shell_rx_register_slice_1_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_rx_data_fifo_1_0/shell_rx_data_fifo_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_rx_data_fifo_1_0 || ORIG_REF_NAME==shell_rx_data_fifo_1_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_tx_data_fifo_0_0/shell_tx_data_fifo_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_tx_data_fifo_0_0 || ORIG_REF_NAME==shell_tx_data_fifo_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_util_vector_logic_1_1/shell_util_vector_logic_1_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_util_vector_logic_1_1 || ORIG_REF_NAME==shell_util_vector_logic_1_1} -quiet] -quiet

# IP: bd/srcs/ip/shell_axi_pr_controller_0_0/shell_axi_pr_controller_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_axi_pr_controller_0_0 || ORIG_REF_NAME==shell_axi_pr_controller_0_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_auto_cc_6/shell_auto_cc_6.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_auto_cc_6 || ORIG_REF_NAME==shell_auto_cc_6} -quiet] -quiet

# IP: bd/srcs/ip/shell_auto_us_df_0/shell_auto_us_df_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_auto_us_df_0 || ORIG_REF_NAME==shell_auto_us_df_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_s01_data_fifo_0/shell_s01_data_fifo_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_s01_data_fifo_0 || ORIG_REF_NAME==shell_s01_data_fifo_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_auto_us_cc_df_0/shell_auto_us_cc_df_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_auto_us_cc_df_0 || ORIG_REF_NAME==shell_auto_us_cc_df_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_auto_cc_4/shell_auto_cc_4.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_auto_cc_4 || ORIG_REF_NAME==shell_auto_cc_4} -quiet] -quiet

# IP: bd/srcs/ip/shell_auto_cc_3/shell_auto_cc_3.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_auto_cc_3 || ORIG_REF_NAME==shell_auto_cc_3} -quiet] -quiet

# IP: bd/srcs/ip/shell_auto_cc_2/shell_auto_cc_2.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_auto_cc_2 || ORIG_REF_NAME==shell_auto_cc_2} -quiet] -quiet

# IP: bd/srcs/ip/shell_auto_cc_1/shell_auto_cc_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_auto_cc_1 || ORIG_REF_NAME==shell_auto_cc_1} -quiet] -quiet

# IP: bd/srcs/ip/shell_auto_cc_0/shell_auto_cc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_auto_cc_0 || ORIG_REF_NAME==shell_auto_cc_0} -quiet] -quiet

# IP: bd/srcs/ip/shell_auto_cc_5/shell_auto_cc_5.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==shell_auto_cc_5 || ORIG_REF_NAME==shell_auto_cc_5} -quiet] -quiet

# XDC: bd/srcs/shell_ooc.xdc