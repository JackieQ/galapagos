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
set_property webtalk.parent_dir /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.cache/wt [current_project]
set_property parent.project_path /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/tarafdar/thesis/MIXcoatl/hlsIP_8k5 [current_project]
set_property ip_output_repo /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.srcs/sources_1/bd/pr/pr.bd
set_property is_locked true [get_files /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.srcs/sources_1/bd/pr/pr.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top pr -part xcku115-flva1517-2-e -mode out_of_context

rename_ref -prefix_all pr_

write_checkpoint -force -noxdef pr.dcp

catch { report_utilization -file pr_utilization_synth.rpt -pb pr_utilization_synth.pb }

if { [catch {
  file copy -force /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.runs/pr_synth_1/pr.dcp /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.srcs/sources_1/bd/pr/pr.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.srcs/sources_1/bd/pr/pr_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.srcs/sources_1/bd/pr/pr_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.srcs/sources_1/bd/pr/pr_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.srcs/sources_1/bd/pr/pr_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.ip_user_files/bd/pr]} {
  catch { 
    file copy -force /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.srcs/sources_1/bd/pr/pr_stub.v /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.ip_user_files/bd/pr
  }
}

if {[file isdir /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.ip_user_files/bd/pr]} {
  catch { 
    file copy -force /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.srcs/sources_1/bd/pr/pr_stub.vhdl /home/tarafdar/thesis/MIXcoatl/projects/bro4/0/0.ip_user_files/bd/pr
  }
}
