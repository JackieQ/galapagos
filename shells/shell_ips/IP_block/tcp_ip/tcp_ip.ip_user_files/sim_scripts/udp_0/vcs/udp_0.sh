#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2017.4 (64-bit)
#
# Filename    : udp_0.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Mon Apr 09 18:00:26 EST 2018
# SW Build 2086221 on Fri Dec 15 20:54:30 MST 2017
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved. 
#
# usage: udp_0.sh [-help]
# usage: udp_0.sh [-lib_map_path]
# usage: udp_0.sh [-noclean_files]
# usage: udp_0.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'udp_0.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "udp_0.sh - Script generated by export_simulation (Vivado v2017.4 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
    "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
    "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_rxEngineUdpChecksumVerificatio.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_inputPathPortUnreachable_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_IPheader_V_las.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputPathWriteFunction.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathWriteFunction2checks_1.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_top.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_inputpathOutData_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_portTable.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_rxChecksum2rxEngine_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2rxChecksum_V_last_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathWriteFunction2checks.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathRead2addIpHeader_dat_1.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_stripIpHeader.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2rxChecksum_V_keep_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_udpMetadata_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_data_V_data_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_data_V_last_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_confirmPortStatus_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_IPheader_V_dat.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputPathInData_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_checksumCalculation2outputPath.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_IPheader_V_kee.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_ap_rst_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathRead2addIpHeader_dat_2.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_inputPathRxEngine.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputPathOutData_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_portTable2rxEng_assign_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_packetLength_V_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputPathReadFunction.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_udpChecksumCalculation.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2rxChecksum_V_data_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_addIpHeader.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_portTable_portTable_1.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathRead2addIpHeader_ipA.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_openPort_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_IP_V_sourceIP_s.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_IP_V_destinati.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathReadFunction2addIpHe.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputPathInMetadata_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_rxEng2portTable_check_req_V_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputpathInLength_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_portRelease_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_packetData_V_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_inputPathInData_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_data_V_keep_V.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_inputPathOutputMetadata_if.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathRead2addIpHeader_dat.v" \
    "$ref_dir/../../../../tcp_ip.srcs/sources_1/ip/udp_0/sim/udp_0.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.udp_0 xil_defaultlib.glbl -o udp_0_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./udp_0_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./udp_0.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  else
    lib_map_path="/home/madanie1/Documents/2017.4/8v3/repo/tcp_ip/tcp_ip.cache/compile_simlib/vcs"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key udp_0_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc udp_0_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./udp_0.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: udp_0.sh [-help]\n\
Usage: udp_0.sh [-lib_map_path]\n\
Usage: udp_0.sh [-reset_run]\n\
Usage: udp_0.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
