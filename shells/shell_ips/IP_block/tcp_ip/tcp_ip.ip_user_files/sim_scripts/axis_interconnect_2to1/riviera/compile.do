vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/fifo_generator_v13_1_4
vlib riviera/axis_interconnect_v1_1_14

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap fifo_generator_v13_1_4 riviera/fifo_generator_v13_1_4
vmap axis_interconnect_v1_1_14 riviera/axis_interconnect_v1_1_14

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../ipstatic/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../ipstatic/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../ipstatic/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../ipstatic/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axis_interconnect_v1_1_14  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../ipstatic/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_interconnect_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../ipstatic/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../tcp_ip.srcs/sources_1/ip/axis_interconnect_2to1/sim/axis_interconnect_2to1.v" \

vlog -work xil_defaultlib \
"glbl.v"

