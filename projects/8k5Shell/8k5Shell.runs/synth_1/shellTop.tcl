# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {7}  -id {[BD 41-1306]}  -suppress 
set_msg_config  -ruleid {8}  -id {[BD 41-1271]}  -suppress 
create_project -in_memory -part xcku115-flva1517-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.cache/wt [current_project]
set_property parent.project_path /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/tarafdar/thesis/gitStuff/hlsIP_8k5 [current_project]
set_property ip_output_repo /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files -quiet /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/defaultFifo/pr.dcp
set_property used_in_implementation false [get_files /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/defaultFifo/pr.dcp]
read_verilog -library xil_defaultlib {
  /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/imports/srcs/shell_wrapper.v
  /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/imports/srcs/pr_wrapper.v
  /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/imports/srcs/shellTop.v
}
add_files /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/shell.bd
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_clk_wiz_0_0/shell_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_clk_wiz_0_0/shell_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_clk_wiz_0_0/shell_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_reverseEndian64_0_0/constraints/reverseEndian64_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_reverseEndian64_1_0/constraints/reverseEndian64_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_microblaze_0_0/shell_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_microblaze_0_0/shell_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_microblaze_0_0/shell_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axiStreamGate_0_0/constraints/axiStreamGate_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_mdm_1_0/shell_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_mdm_1_0/shell_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_mdm_1_0/shell_mdm_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_rst_clk_wiz_0_100M_0/shell_rst_clk_wiz_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_rst_clk_wiz_0_100M_0/shell_rst_clk_wiz_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_rst_clk_wiz_0_100M_0/shell_rst_clk_wiz_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_hwicap_0_0/shell_axi_hwicap_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_hwicap_0_0/shell_axi_hwicap_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_hwicap_0_0/shell_axi_hwicap_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xbar_0/shell_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_dlmb_v10_0/shell_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_dlmb_v10_0/shell_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_ilmb_v10_0/shell_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_ilmb_v10_0/shell_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_dlmb_bram_if_cntlr_0/shell_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_ilmb_bram_if_cntlr_0/shell_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_lmb_bram_0/shell_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_gt_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_gt.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/source/shell_xdma_0_0_pcie3_ip-PCIE_X0Y0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_1/shell_xdma_0_0_blk_mem_64_reg_be_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_2/shell_xdma_0_0_fifo_generator_64_parity_ult/shell_xdma_0_0_fifo_generator_64_parity_ult.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_2/shell_xdma_0_0_fifo_generator_64_parity_ult_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/shell_xdma_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/source/shell_xdma_0_0_pcie3_us_ip.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/synth/shell_xdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_util_ds_buf_0/shell_util_ds_buf_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_tx_register_slice_0_0/shell_tx_register_slice_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_0/synth/bd_01e2_xmac_0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_0/synth/bd_01e2_xmac_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/ip_0/synth/bd_01e2_xpcs_0_gt_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/ip_0/synth/bd_01e2_xpcs_0_gt.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/synth/bd_01e2_xpcs_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/synth/bd_01e2_xpcs_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/synth/bd_01e2_xpcs_0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/bd_01e2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/synth/shell_axi_10g_ethernet_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_rx_register_slice_1_0/shell_rx_register_slice_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_rx_data_fifo_1_0/shell_rx_data_fifo_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_rx_data_fifo_1_0/shell_rx_data_fifo_1_0/shell_rx_data_fifo_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_tx_data_fifo_0_0/shell_tx_data_fifo_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_tx_data_fifo_0_0/shell_tx_data_fifo_0_0/shell_tx_data_fifo_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_auto_cc_0/shell_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_auto_cc_0/shell_auto_cc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/shell_ooc.xdc]
set_property is_locked true [get_files /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/shell.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/constrs_1/imports/constraints/ad_8k5.xdc
set_property used_in_implementation false [get_files /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/constrs_1/imports/constraints/ad_8k5.xdc]

read_xdc /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/constrs_1/imports/constraints/bitstream.xdc
set_property used_in_implementation false [get_files /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/constrs_1/imports/constraints/bitstream.xdc]

read_xdc /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/constrs_1/imports/constraints/pcie.xdc
set_property used_in_implementation false [get_files /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/constrs_1/imports/constraints/pcie.xdc]

read_xdc /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/constrs_1/imports/constraints/refclk200.xdc
set_property used_in_implementation false [get_files /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/constrs_1/imports/constraints/refclk200.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top shellTop -part xcku115-flva1517-2-e


write_checkpoint -force -noxdef shellTop.dcp

catch { report_utilization -file shellTop_utilization_synth.rpt -pb shellTop_utilization_synth.pb }
