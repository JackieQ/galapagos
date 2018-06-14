vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv -L xil_defaultlib "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_m_axis_arp_lookup_reply_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_arp_pkg_receiver.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_m_axis_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_arp_table_arpTable_ipAddress_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_arp_pkg_sender.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_ap_rst_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_s_axis_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_arp_table_arpTable_macAddress_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_top.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_s_axis_arp_lookup_request_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_arp_table_arpTable_valid.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/FIFO_arp_server_subnet_arpReplyMetaFifo_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/FIFO_arp_server_subnet_arpTableInsertFifo_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/FIFO_arp_server_subnet_arpRequestMetaFifo_V_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/hdl/verilog/arp_server_subnet_arp_table.v" \
"../../../../tcp_ip.srcs/sources_1/ip/arp_server_subnet_ip/sim/arp_server_subnet_ip.v" \

vlog -work xil_defaultlib \
"glbl.v"
