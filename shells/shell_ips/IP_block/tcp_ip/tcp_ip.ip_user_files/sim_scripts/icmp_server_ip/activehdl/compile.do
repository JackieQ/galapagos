vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_dataStreams_V_keep_V_0.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_dataStreams_V_last_V_0.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_validFifo_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_dataStreams_V_data_V_0.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_dataStreams_V_keep_V_1.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/icmp_server_udpAddIpHeader.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/icmp_server_insertChecksum.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_udpPort2addIpHeader_data_V_dat.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_dataStreams_V_last_V_1.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_checksumStreams_V_V_0.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/icmp_server_dropper.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/icmp_server_udpPortUnreachable.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_udpPort2addIpHeader_header_V_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_udpPort2addIpHeader_data_V_las.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_dataStreams_V_data_V_1.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_packageBuffer1_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/icmp_server_check_icmp_checksum.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_checksumStreams_V_V_1.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/icmp_server.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/hdl/verilog/FIFO_icmp_server_udpPort2addIpHeader_data_V_kee.v" \
"../../../../tcp_ip.srcs/sources_1/ip/icmp_server_ip/sim/icmp_server_ip.v" \

vlog -work xil_defaultlib \
"glbl.v"

