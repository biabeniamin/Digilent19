set moduleName Block_proc304
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Block__proc304}
set C_modelType { void 0 }
set C_modelArgList {
	{ enable_V int 1 regular  }
	{ INPUT_STREAM_V_data_V int 24 regular {axi_s 0 volatile  { INPUT_STREAM Data } }  }
	{ INPUT_STREAM_V_keep_V int 3 regular {axi_s 0 volatile  { INPUT_STREAM Keep } }  }
	{ INPUT_STREAM_V_strb_V int 3 regular {axi_s 0 volatile  { INPUT_STREAM Strb } }  }
	{ INPUT_STREAM_V_user_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM User } }  }
	{ INPUT_STREAM_V_last_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Last } }  }
	{ INPUT_STREAM_V_id_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM ID } }  }
	{ INPUT_STREAM_V_dest_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Dest } }  }
	{ OUTPUT_STREAM_V_data_V int 24 regular {axi_s 1 volatile  { OUTPUT_STREAM Data } }  }
	{ OUTPUT_STREAM_V_keep_V int 3 regular {axi_s 1 volatile  { OUTPUT_STREAM Keep } }  }
	{ OUTPUT_STREAM_V_strb_V int 3 regular {axi_s 1 volatile  { OUTPUT_STREAM Strb } }  }
	{ OUTPUT_STREAM_V_user_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM User } }  }
	{ OUTPUT_STREAM_V_last_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Last } }  }
	{ OUTPUT_STREAM_V_id_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM ID } }  }
	{ OUTPUT_STREAM_V_dest_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "enable_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "INPUT_STREAM_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUTPUT_STREAM_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ enable_V sc_in sc_lv 1 signal 0 } 
	{ INPUT_STREAM_TDATA sc_in sc_lv 24 signal 1 } 
	{ INPUT_STREAM_TKEEP sc_in sc_lv 3 signal 2 } 
	{ INPUT_STREAM_TSTRB sc_in sc_lv 3 signal 3 } 
	{ INPUT_STREAM_TUSER sc_in sc_lv 1 signal 4 } 
	{ INPUT_STREAM_TLAST sc_in sc_lv 1 signal 5 } 
	{ INPUT_STREAM_TID sc_in sc_lv 1 signal 6 } 
	{ INPUT_STREAM_TDEST sc_in sc_lv 1 signal 7 } 
	{ OUTPUT_STREAM_TDATA sc_out sc_lv 24 signal 8 } 
	{ OUTPUT_STREAM_TKEEP sc_out sc_lv 3 signal 9 } 
	{ OUTPUT_STREAM_TSTRB sc_out sc_lv 3 signal 10 } 
	{ OUTPUT_STREAM_TUSER sc_out sc_lv 1 signal 11 } 
	{ OUTPUT_STREAM_TLAST sc_out sc_lv 1 signal 12 } 
	{ OUTPUT_STREAM_TID sc_out sc_lv 1 signal 13 } 
	{ OUTPUT_STREAM_TDEST sc_out sc_lv 1 signal 14 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ INPUT_STREAM_TVALID sc_in sc_logic 1 invld 7 } 
	{ INPUT_STREAM_TREADY sc_out sc_logic 1 inacc 7 } 
	{ OUTPUT_STREAM_TVALID sc_out sc_logic 1 outvld 14 } 
	{ OUTPUT_STREAM_TREADY sc_in sc_logic 1 outacc 14 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "enable_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "enable_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_keep_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_strb_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_user_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_last_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_id_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_keep_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_strb_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_user_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_last_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_id_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "9", "24", "25", "38", "51", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77"],
		"CDFG" : "Block_proc304",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "943932", "EstimateLatencyMax" : "943932",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "AXIvideo2Mat_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "Mat2AXIvideo554_U0"},
			{"ID" : "59", "Name" : "Mat2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "enable_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "INPUT_STREAM_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "INPUT_STREAM_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "INPUT_STREAM_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "INPUT_STREAM_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "INPUT_STREAM_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "INPUT_STREAM_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "INPUT_STREAM_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "OUTPUT_STREAM_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_data_V"},
					{"ID" : "4", "SubInstance" : "Mat2AXIvideo554_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "OUTPUT_STREAM_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_keep_V"},
					{"ID" : "4", "SubInstance" : "Mat2AXIvideo554_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "OUTPUT_STREAM_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_strb_V"},
					{"ID" : "4", "SubInstance" : "Mat2AXIvideo554_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "OUTPUT_STREAM_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_user_V"},
					{"ID" : "4", "SubInstance" : "Mat2AXIvideo554_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "OUTPUT_STREAM_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_last_V"},
					{"ID" : "4", "SubInstance" : "Mat2AXIvideo554_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "OUTPUT_STREAM_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_id_V"},
					{"ID" : "4", "SubInstance" : "Mat2AXIvideo554_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "OUTPUT_STREAM_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_dest_V"},
					{"ID" : "4", "SubInstance" : "Mat2AXIvideo554_U0", "Port" : "AXI_video_strm_V_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_C_Xilinx_Vivado_2_1_U0", "Parent" : "0",
		"CDFG" : "p_C_Xilinx_Vivado_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_0a_rows_V3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "img_0a_rows_V3_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_C_Xilinx_Vivado_2_U0", "Parent" : "0",
		"CDFG" : "p_C_Xilinx_Vivado_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_0a_cols_V4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "img_0a_cols_V4_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0", "Parent" : "0",
		"CDFG" : "AXIvideo2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "926643",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "INPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "img_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "img_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "img_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "63",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "64",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "65",
				"BlockSignal" : [
					{"Name" : "img_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "66",
				"BlockSignal" : [
					{"Name" : "img_cols_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo554_U0", "Parent" : "0",
		"CDFG" : "Mat2AXIvideo554",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "924481",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_Mat2AXIudo_U",
		"Port" : [
			{"Name" : "img_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "65",
				"BlockSignal" : [
					{"Name" : "img_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "66",
				"BlockSignal" : [
					{"Name" : "img_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "63",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "64",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OUTPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CvtColor_1_U0", "Parent" : "0", "Child" : ["6", "7", "8"],
		"CDFG" : "CvtColor_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "924481", "EstimateLatencyMax" : "924481",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_data_stream_0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_data_stream_1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_data_stream_2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "67",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.CvtColor_1_U0.Sobel_filter_mul_bkb_U29", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.CvtColor_1_U0.Sobel_filter_mac_cud_U30", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.CvtColor_1_U0.Sobel_filter_mac_dEe_U31", "Parent" : "5"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "GaussianBlur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "930660", "EstimateLatencyMax" : "930660",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Filter2D_1_fu_40"}],
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "67",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_Filter2D_1_fu_40", "Port" : "p_src_data_stream_V"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "68",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_Filter2D_1_fu_40", "Port" : "p_dst_data_stream_V"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40", "Parent" : "9", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "Filter2D_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "930659", "EstimateLatencyMax" : "930659",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.k_buf_0_val_3_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.k_buf_0_val_4_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.k_buf_0_val_5_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.Sobel_filter_mux_hbi_U39", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.Sobel_filter_mux_hbi_U40", "Parent" : "10"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.Sobel_filter_mux_hbi_U41", "Parent" : "10"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.Sobel_filter_mux_hbi_U42", "Parent" : "10"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.Sobel_filter_mux_hbi_U43", "Parent" : "10"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.Sobel_filter_mux_hbi_U44", "Parent" : "10"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.Sobel_filter_mul_ibs_U45", "Parent" : "10"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.Sobel_filter_ama_jbC_U46", "Parent" : "10"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.Sobel_filter_mac_kbM_U47", "Parent" : "10"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.Sobel_filter_mac_lbW_U48", "Parent" : "10"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Duplicate_U0", "Parent" : "0",
		"CDFG" : "Duplicate",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "923761", "EstimateLatencyMax" : "923761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "69",
				"BlockSignal" : [
					{"Name" : "dst1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst2_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "70",
				"BlockSignal" : [
					{"Name" : "dst2_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sobel_U0", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "Sobel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "930660", "EstimateLatencyMax" : "930660",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Filter2D_fu_52"}],
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "69",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_Filter2D_fu_52", "Port" : "p_src_data_stream_V"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "71",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_Filter2D_fu_52", "Port" : "p_dst_data_stream_V"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52", "Parent" : "25", "Child" : ["27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "Filter2D",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "930659", "EstimateLatencyMax" : "930659",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_kernel_val_0_V_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_0_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_1_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_1_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_1_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.k_buf_0_val_3_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.k_buf_0_val_4_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.k_buf_0_val_5_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U62", "Parent" : "26"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U63", "Parent" : "26"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U64", "Parent" : "26"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U65", "Parent" : "26"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U66", "Parent" : "26"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U67", "Parent" : "26"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.Sobel_filter_mac_pcA_U68", "Parent" : "26"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.Sobel_filter_mac_qcK_U69", "Parent" : "26"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0", "Parent" : "0", "Child" : ["39"],
		"CDFG" : "Sobel_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "930660", "EstimateLatencyMax" : "930660",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Filter2D_fu_52"}],
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "70",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_Filter2D_fu_52", "Port" : "p_src_data_stream_V"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "72",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_Filter2D_fu_52", "Port" : "p_dst_data_stream_V"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52", "Parent" : "38", "Child" : ["40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"],
		"CDFG" : "Filter2D",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "930659", "EstimateLatencyMax" : "930659",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_kernel_val_0_V_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_0_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_1_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_1_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_1_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.k_buf_0_val_3_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.k_buf_0_val_4_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.k_buf_0_val_5_U", "Parent" : "39"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U62", "Parent" : "39"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U63", "Parent" : "39"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U64", "Parent" : "39"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U65", "Parent" : "39"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U66", "Parent" : "39"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.Sobel_filter_mux_hbi_U67", "Parent" : "39"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.Sobel_filter_mac_pcA_U68", "Parent" : "39"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.Sobel_filter_mac_qcK_U69", "Parent" : "39"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0", "Parent" : "0", "Child" : ["52", "53", "54", "55", "56", "57"],
		"CDFG" : "AddWeighted",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "943921", "EstimateLatencyMax" : "943921",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src1_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "src1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src2_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "71",
				"BlockSignal" : [
					{"Name" : "src2_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.Sobel_filter_daddrcU_U84", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.Sobel_filter_daddrcU_U85", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.Sobel_filter_dmulsc4_U86", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.Sobel_filter_dmulsc4_U87", "Parent" : "51"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.Sobel_filter_sitotde_U88", "Parent" : "51"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.Sobel_filter_sitotde_U89", "Parent" : "51"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CvtColor_U0", "Parent" : "0",
		"CDFG" : "CvtColor",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "923761", "EstimateLatencyMax" : "923761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "75",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0", "Parent" : "0",
		"CDFG" : "Mat2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "924481", "EstimateLatencyMax" : "924481",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "75",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OUTPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0a_rows_V3_c_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0a_cols_V4_c_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0a_data_stream_0_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0a_data_stream_1_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0a_data_stream_2_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0a_rows_V3_c1_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0a_cols_V4_c2_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1_data_stream_0_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2_data_stream_0_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2a_data_stream_0_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2b_data_stream_0_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_3_data_stream_0_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_4_data_stream_0_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_5_data_stream_0_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_6_data_stream_0_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_6_data_stream_1_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_6_data_stream_2_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Mat2AXIudo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_proc304 {
		enable_V {Type I LastRead 0 FirstWrite -1}
		INPUT_STREAM_V_data_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_keep_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_strb_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_user_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_last_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_id_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_dest_V {Type I LastRead 7 FirstWrite -1}
		OUTPUT_STREAM_V_data_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_keep_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_strb_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_user_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_last_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_id_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_dest_V {Type O LastRead -1 FirstWrite 3}}
	p_C_Xilinx_Vivado_2_1 {
		img_0a_rows_V3_out {Type O LastRead -1 FirstWrite 0}}
	p_C_Xilinx_Vivado_2 {
		img_0a_cols_V4_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2Mat {
		AXI_video_strm_V_data_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_keep_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_strb_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_user_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_last_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_id_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_dest_V {Type I LastRead 7 FirstWrite -1}
		img_rows_V {Type I LastRead 0 FirstWrite -1}
		img_cols_V {Type I LastRead 0 FirstWrite -1}
		img_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		img_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		img_data_stream_2_V {Type O LastRead -1 FirstWrite 5}
		img_rows_V_out {Type O LastRead -1 FirstWrite 0}
		img_cols_V_out {Type O LastRead -1 FirstWrite 0}}
	Mat2AXIvideo554 {
		img_rows_V {Type I LastRead 0 FirstWrite -1}
		img_cols_V {Type I LastRead 0 FirstWrite -1}
		img_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}
	CvtColor_1 {
		p_src_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		p_src_data_stream_1_V {Type I LastRead 2 FirstWrite -1}
		p_src_data_stream_2_V {Type I LastRead 2 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 4}}
	GaussianBlur {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}}
	Filter2D_1 {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}}
	Duplicate {
		src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst1_data_stream_V {Type O LastRead -1 FirstWrite 3}
		dst2_data_stream_V {Type O LastRead -1 FirstWrite 3}}
	Sobel {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}}
	Filter2D {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}
		p_kernel_val_0_V_1_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_0_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_1_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_1_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_1_read {Type I LastRead 0 FirstWrite -1}}
	Sobel_1 {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}}
	Filter2D {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}
		p_kernel_val_0_V_1_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_0_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_1_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_1_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_1_read {Type I LastRead 0 FirstWrite -1}}
	AddWeighted {
		src1_data_stream_V {Type I LastRead 3 FirstWrite -1}
		src2_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst_data_stream_V {Type O LastRead -1 FirstWrite 31}}
	CvtColor {
		p_src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_stream_0_V {Type O LastRead -1 FirstWrite 3}
		p_dst_data_stream_1_V {Type O LastRead -1 FirstWrite 3}
		p_dst_data_stream_2_V {Type O LastRead -1 FirstWrite 3}}
	Mat2AXIvideo {
		img_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "943932", "Max" : "943932"}
	, {"Name" : "Interval", "Min" : "943922", "Max" : "943922"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	enable_V { ap_none {  { enable_V in_data 0 1 } } }
	INPUT_STREAM_V_data_V { axis {  { INPUT_STREAM_TDATA in_data 0 24 } } }
	INPUT_STREAM_V_keep_V { axis {  { INPUT_STREAM_TKEEP in_data 0 3 } } }
	INPUT_STREAM_V_strb_V { axis {  { INPUT_STREAM_TSTRB in_data 0 3 } } }
	INPUT_STREAM_V_user_V { axis {  { INPUT_STREAM_TUSER in_data 0 1 } } }
	INPUT_STREAM_V_last_V { axis {  { INPUT_STREAM_TLAST in_data 0 1 } } }
	INPUT_STREAM_V_id_V { axis {  { INPUT_STREAM_TID in_data 0 1 } } }
	INPUT_STREAM_V_dest_V { axis {  { INPUT_STREAM_TDEST in_data 0 1 }  { INPUT_STREAM_TVALID in_vld 0 1 }  { INPUT_STREAM_TREADY in_acc 1 1 } } }
	OUTPUT_STREAM_V_data_V { axis {  { OUTPUT_STREAM_TDATA out_data 1 24 } } }
	OUTPUT_STREAM_V_keep_V { axis {  { OUTPUT_STREAM_TKEEP out_data 1 3 } } }
	OUTPUT_STREAM_V_strb_V { axis {  { OUTPUT_STREAM_TSTRB out_data 1 3 } } }
	OUTPUT_STREAM_V_user_V { axis {  { OUTPUT_STREAM_TUSER out_data 1 1 } } }
	OUTPUT_STREAM_V_last_V { axis {  { OUTPUT_STREAM_TLAST out_data 1 1 } } }
	OUTPUT_STREAM_V_id_V { axis {  { OUTPUT_STREAM_TID out_data 1 1 } } }
	OUTPUT_STREAM_V_dest_V { axis {  { OUTPUT_STREAM_TDEST out_data 1 1 }  { OUTPUT_STREAM_TVALID out_vld 1 1 }  { OUTPUT_STREAM_TREADY out_acc 0 1 } } }
}