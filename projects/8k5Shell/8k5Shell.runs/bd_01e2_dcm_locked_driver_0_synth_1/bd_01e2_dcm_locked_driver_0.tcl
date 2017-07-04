# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {7}  -id {[BD 41-1306]}  -suppress 
set_msg_config  -ruleid {8}  -id {[BD 41-1271]}  -suppress 
set_msg_config -msgmgr_mode ooc_run
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
read_ip -quiet /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0.xci
set_property is_locked true [get_files /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.runs/bd_01e2_dcm_locked_driver_0_synth_1 -new_name bd_01e2_dcm_locked_driver_0 -ip [get_ips bd_01e2_dcm_locked_driver_0]]

if { $cached_ip eq {} } {

synth_design -top bd_01e2_dcm_locked_driver_0 -part xcku115-flva1517-2-e -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix bd_01e2_dcm_locked_driver_0_ bd_01e2_dcm_locked_driver_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_01e2_dcm_locked_driver_0_stub.v
 lappend ipCachedFiles bd_01e2_dcm_locked_driver_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_01e2_dcm_locked_driver_0_stub.vhdl
 lappend ipCachedFiles bd_01e2_dcm_locked_driver_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_01e2_dcm_locked_driver_0_sim_netlist.v
 lappend ipCachedFiles bd_01e2_dcm_locked_driver_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_01e2_dcm_locked_driver_0_sim_netlist.vhdl
 lappend ipCachedFiles bd_01e2_dcm_locked_driver_0_sim_netlist.vhdl

 config_ip_cache -add -dcp bd_01e2_dcm_locked_driver_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips bd_01e2_dcm_locked_driver_0]
}

rename_ref -prefix_all bd_01e2_dcm_locked_driver_0_

write_checkpoint -force -noxdef bd_01e2_dcm_locked_driver_0.dcp

catch { report_utilization -file bd_01e2_dcm_locked_driver_0_utilization_synth.rpt -pb bd_01e2_dcm_locked_driver_0_utilization_synth.pb }

if { [catch {
  file copy -force /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.runs/bd_01e2_dcm_locked_driver_0_synth_1/bd_01e2_dcm_locked_driver_0.dcp /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.runs/bd_01e2_dcm_locked_driver_0_synth_1/bd_01e2_dcm_locked_driver_0.dcp /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.runs/bd_01e2_dcm_locked_driver_0_synth_1/bd_01e2_dcm_locked_driver_0_stub.v /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.runs/bd_01e2_dcm_locked_driver_0_synth_1/bd_01e2_dcm_locked_driver_0_stub.vhdl /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.runs/bd_01e2_dcm_locked_driver_0_synth_1/bd_01e2_dcm_locked_driver_0_sim_netlist.v /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.runs/bd_01e2_dcm_locked_driver_0_synth_1/bd_01e2_dcm_locked_driver_0_sim_netlist.vhdl /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.ip_user_files/ip/bd_01e2_dcm_locked_driver_0]} {
  catch { 
    file copy -force /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0_stub.v /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.ip_user_files/ip/bd_01e2_dcm_locked_driver_0
  }
}

if {[file isdir /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.ip_user_files/ip/bd_01e2_dcm_locked_driver_0]} {
  catch { 
    file copy -force /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/bd_0/ip/ip_2/bd_01e2_dcm_locked_driver_0_stub.vhdl /home/tarafdar/thesis/gitStuff/projects/8k5Shell/8k5Shell.ip_user_files/ip/bd_01e2_dcm_locked_driver_0
  }
}
