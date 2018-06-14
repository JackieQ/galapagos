#Author: Naif Tarafdar

cd userIP

set MPI_HEADERS_DIR "../HMPI/HLS_lib/"

open_project dariusWrapperHLS  
set_top dariusWrapper
add_files ../telepathy/hlsSources/dariusWrapper.cpp -cflags "-I ${MPI_HEADERS_DIR} "
open_solution "solution1"
set_part {xcku115-flva1517-2-e}
create_clock -period 5 -name default
config_interface -m_axi_addr64 -m_axi_offset off -register_io off -expose_global=true
csynth_design
export_design -rtl verilog -format ip_catalog
close_project

