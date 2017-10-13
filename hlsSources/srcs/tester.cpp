#define MODULE_RANK 0


#include "ap_int.h"
#include "ap_cint.h"
#include "hls_stream.h"
#include "ap_utils.h"
//#include "systemc.h"

#define DATA_SIZE 8

struct stream_packet{

	ap_int <64> data;
	ap_uint <8> dest;
	ap_uint<1> last;
};


#define C_SYNC_ENV_PACKET 0
#define C_CLR2SND_PACKET 1
#define C_DATA_PACKET 2
#define C_ASYNC_ENV_PACKET 3

enum MPI_DATA_TYPE{MPI_INT = 4,MPI_FLOAT = 4,MPI_SHORT = 2,MPI_CHAR = 1};

using namespace hls;

struct envelope{
	ap_uint<8> SRC;
	ap_uint<8> PKT_TYPE;
	ap_uint<32> MSG_SIZE;
	ap_uint<16> TAG;
	//the dest is not in data field of packet
	ap_uint<16> DEST;
};


void envelope_to_packet(envelope * envlp, stream_packet * packet){
	//packet[0].data(15,0) = envlp.DEST;
	packet->data(7,0) = envlp->SRC;
	packet->data(15,8) = envlp->PKT_TYPE;
	packet->data(47,16) = envlp->MSG_SIZE;
	packet->data(63,48) = envlp->TAG(15,0);
	packet->dest = envlp->DEST;
	packet->last = 1;
}

void packet_to_envelope( stream_packet * packet, envelope * envlp){
	envlp->DEST=packet->dest;
	envlp->SRC=packet->data(7,0);
	envlp->PKT_TYPE=packet->data(15,8);
	envlp->MSG_SIZE=packet->data(47,16);
	envlp->TAG = packet->data(63,48);
}

int MPI_Send(stream<stream_packet> * stream_out,
		stream<stream_packet> * stream_in,
		int * buf,
		int count,
		MPI_DATA_TYPE dataType,
		int dest,
		int tag,
		int MPI_Comm)
{
//section_1:{
//#pragma HLS protocol fixed
	static enum State {IDLE = 0,CLR2SND_WAIT, DATA_SEND_LOOP} state;

	char * buff_char_ptr = (char *) buf;

//	int * int_buf;
//	short * short_buf;
//	float * float_buf;
//	char * char_buf;
//
//
//	if(dataType == MPI_INT){
//		int_buf = (int *) buf;
//	}
//	else if(dataType == MPI_FLOAT){
//		float_buf = (float *) buf;
//	}
//	else if(dataType == MPI_SHORT){
//		short_buf = (short *) buf;
//	}
//	else if(dataType == MPI_CHAR){
//		char_buf = (char *) buf;
//	}
//	else{
//		return -1;
//	}

	static envelope envlp;

	switch(state){
	case IDLE:{
		envlp.SRC = MODULE_RANK;
		envlp.DEST = dest;
		if(dataType == MPI_INT || dataType == MPI_FLOAT){
			envlp.MSG_SIZE = count;
		}
		else if(dataType == MPI_SHORT){
			envlp.MSG_SIZE = count*2;
		}
		else if(dataType == MPI_CHAR){
			envlp.MSG_SIZE = count*4;
		}
		else{
			return -1;
		}
		envlp.PKT_TYPE = C_SYNC_ENV_PACKET;
		envlp.TAG = tag;
		//envlp.not_used_1 = buff_char_ptr[0];
		//if(!stream_out->full()){
			stream_packet pkt_out;
			envelope_to_packet(&envlp,&pkt_out);
			pkt_out.dest = dest; // problem solver
			pkt_out.last = 0;
		//	std::cout <<std::hex<< "pkt0: " << pkt_out[0].data << "    pkt1: " << pkt_out[1].data
		//			<<" dest0: "<<pkt_out[0].dest << "  dest1: " <<pkt_out[1].dest<<std::endl;
			stream_out->write(pkt_out);

			stream_packet temp;

			temp.data = 0x7fd57508;
			temp.dest = 1;
			temp.last = 0;
			stream_out->write(temp);

			temp.data = 0;
			temp.dest = 1;
			temp.last = 0;
			stream_out->write(temp);

			temp.data = 0;
			temp.dest = 1;
			temp.last = 0;
			stream_out->write(temp);

			temp.data = 0;
			temp.dest = 1;
			temp.last = 0;
			stream_out->write(temp);

			temp.data = 0x9d426d3e00000000;
			temp.dest = 1;
			temp.last = 1;
			stream_out->write(temp);


			state = CLR2SND_WAIT;
		//}
	}
	break;
	case CLR2SND_WAIT:{
		if(!stream_in->empty()){
			stream_packet recv_pkt;
			recv_pkt = stream_in->read();
			envelope temp;
			packet_to_envelope(&recv_pkt,&temp);
			if(temp.PKT_TYPE == C_CLR2SND_PACKET && temp.DEST == MODULE_RANK){
				state = DATA_SEND_LOOP;
			}
		}
	}
	break;
	case DATA_SEND_LOOP: {

		for(int i = 0 ; i < count*dataType ; i+= DATA_SIZE ){
			stream_packet to_send_data;
			for(int j = 0 ; j < DATA_SIZE ; j++){
				to_send_data.data(((j+1)*8)-1,j*8) = buff_char_ptr[i+j];
				to_send_data.dest = dest;
				if((i+DATA_SIZE) >= count*dataType)
					to_send_data.last = 1;
				else
					to_send_data.last = 0;
			}
			stream_out->write(to_send_data);
		}
		state = IDLE;
		return 1;
	}
	break;
	}

	return 0;
//}
}

int MPI_Recv(stream<stream_packet> * stream_out,
		stream<stream_packet> * stream_in,
		int * buf,
		int count,
		MPI_DATA_TYPE dataType,
		int source,
		int tag,
		int MPI_Comm){
//section_2:{
//#pragma HLS protocol fixed

	static enum State {IDLE = 0,CLR2SND_SEND, DATA_RECV_LOOP} state;

	char * buff_char_ptr = (char *) buf;


//	int * int_buf;
//	short * short_buf;
//	float * float_buf;
//	char * char_buf;
//
//	if(dataType == MPI_INT){
//		int_buf = (int *) buf;
//	}
//	else if(dataType == MPI_FLOAT){
//		float_buf = (float *) buf;
//	}
//	else if(dataType == MPI_SHORT){
//		short_buf = (short *) buf;
//	}
//	else if(dataType == MPI_CHAR){
//		char_buf = (char *) buf;
//	}
//	else{
//		return -1;
//	}

	static envelope envlp;

	switch(state){
	case IDLE:{
		//if(!stream_in->empty()){


		stream_packet recv_pkt;
		recv_pkt = stream_in->read();
		packet_to_envelope(&recv_pkt,&envlp);
		if(envlp.PKT_TYPE == C_SYNC_ENV_PACKET && envlp.DEST == MODULE_RANK){
			state = CLR2SND_SEND;
		}
		//}
	}
	break;
	case CLR2SND_SEND:{
		//if(!stream_out->full()){
			envelope clr2snd;
			clr2snd.DEST = envlp.SRC;
			clr2snd.SRC = envlp.DEST;
			clr2snd.PKT_TYPE = C_CLR2SND_PACKET;

			stream_packet pkt_out;
			envelope_to_packet(&clr2snd,&pkt_out);
			stream_out->write(pkt_out);
			state = DATA_RECV_LOOP;
		//}
	}
	break;
	case DATA_RECV_LOOP: { // count or message size?
		stream_packet recv_data;
		for(int i = 0 ; i < count*dataType ; i+= DATA_SIZE ){
			recv_data = stream_in->read();
			for(int j = 0 ; j < DATA_SIZE ; j++){
				buff_char_ptr[i+j] = recv_data.data(((j+1)*8)-1,j*8);
			}
		}
		state = IDLE;
		return 1;
	}
	break;
	}
	//ap_wait();
	return 0;
//}
}

void tester(hls::stream<stream_packet> * stream_out,
		hls::stream<stream_packet> * stream_in){
#pragma HLS INTERFACE axis register both port=stream_in
#pragma HLS INTERFACE axis register both port=stream_out

	int recv_array[10];


//	while(!MPI_Recv(stream_out,stream_in,recv_array,10,MPI_INT,0,-1,0));

	for(int i = 0 ; i < 10 ;i++){
	 	recv_array[i] = i;
	}

	while(!MPI_Send(stream_out,stream_in,recv_array,10,MPI_INT,1,-1,0));

	while(1);
}
