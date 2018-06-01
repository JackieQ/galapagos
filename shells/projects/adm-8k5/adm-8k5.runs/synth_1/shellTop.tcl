# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config  -ruleid {1}  -id {[BD 41-1306]}  -suppress 
set_msg_config  -ruleid {2}  -id {[BD 41-1271]}  -suppress 
create_project -in_memory -part xcku115-flva1517-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.cache/wt [current_project]
set_property parent.project_path /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  /home/graham0/Vivado_Projects/galapagos_wip/hlsIP_adm-8k5
  /home/graham0/Vivado_Projects/galapagos_wip/shells/shell_ips
} [current_project]
set_property ip_output_repo /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/imports/adm-8k5/srcs/shellTop.v
add_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/shell.bd
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_clk_wiz_0_0/shell_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_clk_wiz_0_0/shell_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_clk_wiz_0_0/shell_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_bram_ctrl_0_0/shell_axi_bram_ctrl_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_blk_mem_gen_0_0/shell_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_reverseEndian64_0_0/constraints/reverseEndian64_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_reverseEndian64_1_0/constraints/reverseEndian64_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_pr_decoupler_0_0/shell_pr_decoupler_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_pr_decoupler_0_0/shell_pr_decoupler_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_gpio_0_0/shell_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_gpio_0_0/shell_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_gpio_0_0/shell_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_vio_0_0/shell_vio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_vio_0_0/shell_vio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_proc_sys_reset_1_0/shell_proc_sys_reset_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_proc_sys_reset_1_0/shell_proc_sys_reset_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_proc_sys_reset_1_0/shell_proc_sys_reset_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/shell_ddr4_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/par/shell_ddr4_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/bd_0/ip/ip_0/bd_954c_microblaze_I_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/bd_0/ip/ip_0/bd_954c_microblaze_I_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/bd_0/ip/ip_1/bd_954c_rst_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/bd_0/ip/ip_1/bd_954c_rst_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/bd_0/ip/ip_2/bd_954c_ilmb_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/bd_0/ip/ip_3/bd_954c_dlmb_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/bd_0/ip/ip_6/bd_954c_lmb_bram_I_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/bd_0/ip/ip_9/bd_954c_second_lmb_bram_I_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/bd_0/ip/ip_10/bd_954c_iomodule_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/bd_0/bd_954c_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/ip_0/shell_ddr4_0_0_microblaze_mcs_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/ip_0/shell_ddr4_0_0_microblaze_mcs_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ddr4_0_0/ip_1/par/shell_ddr4_0_0_phy_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xbar_0/shell_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xbar_1/shell_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_mdm_1_0/shell_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_mdm_1_0/shell_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_mdm_1_0/shell_mdm_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_rst_clk_wiz_0_100M_0/shell_rst_clk_wiz_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_rst_clk_wiz_0_100M_0/shell_rst_clk_wiz_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_rst_clk_wiz_0_100M_0/shell_rst_clk_wiz_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_microblaze_0_0/shell_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_microblaze_0_0/shell_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_microblaze_0_0/shell_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_dlmb_v10_0/shell_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_dlmb_v10_0/shell_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ilmb_v10_0/shell_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ilmb_v10_0/shell_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_dlmb_bram_if_cntlr_0/shell_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_ilmb_bram_if_cntlr_0/shell_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_lmb_bram_0/shell_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xbar_2/shell_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_gt_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_gt.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/source/shell_xdma_0_0_pcie3_ip-PCIE_X0Y0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_0/synth/shell_xdma_0_0_pcie3_ip_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_1/xdma_v4_1_0_blk_mem_64_reg_be_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/ip_2/xdma_v4_1_0_blk_mem_64_noreg_be_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/shell_xdma_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/source/shell_xdma_0_0_pcie3_us_ip.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_xdma_0_0/synth/shell_xdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_util_ds_buf_0/shell_util_ds_buf_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_util_ds_buf_0/shell_util_ds_buf_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_util_ds_buf_0/shell_util_ds_buf_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_tx_register_slice_0_0/shell_tx_register_slice_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_tx_register_slice_0_0/shell_tx_register_slice_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_0/synth/bd_01e2_xmac_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_0/synth/bd_01e2_xmac_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/ip_0/synth/bd_01e2_xpcs_0_gt_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/ip_0/synth/bd_01e2_xpcs_0_gt.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/synth/bd_01e2_xpcs_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/synth/bd_01e2_xpcs_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/synth/bd_01e2_xpcs_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/bd_01e2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/synth/shell_axi_10g_ethernet_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_rx_register_slice_1_0/shell_rx_register_slice_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_rx_register_slice_1_0/shell_rx_register_slice_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_rx_data_fifo_1_0/shell_rx_data_fifo_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_rx_data_fifo_1_0/shell_rx_data_fifo_1_0/shell_rx_data_fifo_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_tx_data_fifo_0_0/shell_tx_data_fifo_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_tx_data_fifo_0_0/shell_tx_data_fifo_0_0/shell_tx_data_fifo_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_pr_controller_0_0/src/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_pr_controller_0_0/src/axis_data_fifo_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_pr_controller_0_0/src/axis_data_fifo_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_pr_controller_0_0/src/axi_datamover_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_pr_controller_0_0/src/axi_datamover_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_pr_controller_0_0/src/axi_datamover_0_clocks.xdc]
set_property used_in_synthesis false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_6/shell_auto_cc_6_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_6/shell_auto_cc_6_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_6/shell_auto_cc_6_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_us_df_0/shell_auto_us_df_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_us_df_0/shell_auto_us_df_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_us_df_0/shell_auto_us_df_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_s01_data_fifo_0/shell_s01_data_fifo_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_us_cc_df_0/shell_auto_us_cc_df_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_us_cc_df_0/shell_auto_us_cc_df_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_us_cc_df_0/shell_auto_us_cc_df_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_4/shell_auto_cc_4_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_4/shell_auto_cc_4_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_4/shell_auto_cc_4_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_3/shell_auto_cc_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_3/shell_auto_cc_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_3/shell_auto_cc_3_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_2/shell_auto_cc_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_2/shell_auto_cc_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_2/shell_auto_cc_2_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_1/shell_auto_cc_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_1/shell_auto_cc_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_1/shell_auto_cc_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_0/shell_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_0/shell_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_0/shell_auto_cc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_5/shell_auto_cc_5_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_5/shell_auto_cc_5_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_auto_cc_5/shell_auto_cc_5_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/shell_ooc.xdc]

add_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/defaultFifo/pr.bd
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/defaultFifo/ip/pr_axis_data_fifo_0_0/pr_axis_data_fifo_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/defaultFifo/ip/pr_axis_data_fifo_0_0/pr_axis_data_fifo_0_0/pr_axis_data_fifo_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/defaultFifo/ip/pr_conv_layer_0_0/constraints/conv_layer_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/defaultFifo/ip/pr_axi_dwidth_converter_0_0/pr_axi_dwidth_converter_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/defaultFifo/ip/pr_axi_dwidth_converter_0_0/pr_axi_dwidth_converter_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/defaultFifo/ip/pr_axi_dwidth_converter_0_0/pr_axi_dwidth_converter_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/defaultFifo/pr_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ad_8k5.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ad_8k5.xdc]

read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/bitstream.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/bitstream.xdc]

read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/pcie.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/pcie.xdc]

read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4_test.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4_test.xdc]

read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4_test_axi4.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4_test_axi4.xdc]

read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_b0_lane8.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_b0_lane8.xdc]

read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_b0_unused.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_b0_unused.xdc]

read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_locs_b0_twin_die.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_locs_b0_twin_die.xdc]

read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_locs_b0_x64.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_locs_b0_x64.xdc]

read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_locs_b0_x72.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_locs_b0_x72.xdc]

read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_props_b0_twin_die.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/ddr4sdram_props_b0_twin_die.xdc]

read_xdc /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/refclk200.xdc
set_property used_in_implementation false [get_files /home/graham0/Vivado_Projects/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/constrs_1/imports/constraints/refclk200.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top shellTop -part xcku115-flva1517-2-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef shellTop.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file shellTop_utilization_synth.rpt -pb shellTop_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]