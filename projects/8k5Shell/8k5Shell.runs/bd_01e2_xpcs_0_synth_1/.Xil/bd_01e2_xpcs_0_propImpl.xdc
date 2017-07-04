set_property SRC_FILE_INFO {cfile:/home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/ip_0/synth/bd_01e2_xpcs_0_gt.xdc rfile:../../../8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/ip_0/synth/bd_01e2_xpcs_0_gt.xdc id:1 order:EARLY scoped_inst:inst/ten_gig_eth_pcs_pma_block_i/bd_01e2_xpcs_0_gt_i/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/synth/bd_01e2_xpcs_0.xdc rfile:../../../8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_1/synth/bd_01e2_xpcs_0.xdc id:2 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE3_CHANNEL_X1Y16 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[28].*gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST}]
set_property src_info {type:SCOPED_XDC file:2 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hierarchical -filter {NAME =~ *elastic*rd_truegray_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -to [get_cells -hierarchical -filter {NAME =~ *elastic*rag_writesync0_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -datapath_only 6.400
set_property src_info {type:SCOPED_XDC file:2 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hierarchical -filter {NAME =~ *elastic*wr_gray_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -to [get_cells -hierarchical -filter {NAME =~ *elastic*wr_gray_rdclk0_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -datapath_only 3.100
set_property src_info {type:SCOPED_XDC file:2 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hierarchical -filter {NAME =~ *elastic*rd_lastgray_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -to [get_cells -hierarchical -filter {NAME =~ *elastic*rd_lastgray_wrclk0_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -datapath_only 6.400
set_property src_info {type:SCOPED_XDC file:2 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -of [all_fanin -flat [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *resyncs*d1_reg}] -filter {NAME =~ *D}]] -filter {IS_SEQUENTIAL=="1" && NAME !~ "*resyncs*d1_reg"}] -to [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *resyncs*d1_reg}] -filter {NAME =~ *D}] 3.100 -datapath_only
set_property src_info {type:SCOPED_XDC file:2 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_cells -hierarchical -filter {NAME =~ *drp_ipif_i*synch_*d_reg_reg* && (PRIMITIVE_SUBGROUP =~ flop || PRIMITIVE_SUBGROUP =~ SDR)}] -to [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *drp_ipif_i*synch_*q_reg*}] -filter {NAME =~ *D || NAME =~ *R || NAME =~ *S}] 3.100
set_property src_info {type:SCOPED_XDC file:2 line:91 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE3_COMMON_X1Y4  [get_cells -hier -filter {NAME=~  *ten_gig_eth_pcs_pma_gt_common_block/*gthe3_common*}]
set_property src_info {type:SCOPED_XDC file:2 line:92 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE3_COMMON_X1Y4  [get_cells -hier -filter {NAME=~  *shared*ibufds_inst}]
