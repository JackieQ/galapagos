//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : June 20, 2018
//===============================


//#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"

struct ap_axis{
	ap_uint<64> data;
	ap_uint <8> dest;
	ap_uint<1> last;
	ap_uint<8> id;
	ap_uint <8> keep;
	ap_uint<40> user;
};



ap_uint <32> reverseEndian64_data(ap_uint <32> X) {
  ap_uint <32> x = X;
  x = (x & 0x0000FFFF) << 16 | (x & 0xFFFF0000) >> 16;
  x = (x & 0x00FF00FF) << 8  | (x & 0xFF00FF00) >> 8;
  return x;
}


void ip_dest_filter(
	
        const ap_uint<32> ip_table[256],
        const ap_uint<32> ip_addr,
        hls::stream <ap_axis> * stream_in,
		hls::stream <ap_axis>  * stream_out_switch,
		hls::stream <ap_axis>  * stream_out_network

){
#pragma HLS resource core=AXI4Stream variable=stream_in
#pragma HLS resource core=AXI4Stream variable=stream_out_switch
#pragma HLS resource core=AXI4Stream variable=stream_out_network

#pragma HLS DATA_PACK variable=stream_in
#pragma HLS DATA_PACK variable=stream_out_switch
#pragma HLS DATA_PACK variable=stream_out_network

#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS PIPELINE


	ap_axis packetIn;
	ap_axis packetOut;

	bool inFPGA = false;
    ap_uint<32> ip_addr_in;

	if(!stream_in->empty()){
		packetIn = stream_in->read();
        ip_addr_in = ip_table[packetIn.dest];
        inFPGA = (reverseEndian64_data(ip_addr) == ip_addr_in);

        if(inFPGA){
        	stream_out_switch->write(packetIn);
        }
        else{
        	stream_out_network->write(packetIn);
        }
	}


}
