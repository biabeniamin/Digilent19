// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="Sobel_filter,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7a200tsbg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=11.000000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=9,HLS_SYN_DSP=39,HLS_SYN_FF=6006,HLS_SYN_LUT=10250,HLS_VERSION=2018_2}" *)

module Sobel_filter (
        INPUT_STREAM_TDATA,
        INPUT_STREAM_TKEEP,
        INPUT_STREAM_TSTRB,
        INPUT_STREAM_TUSER,
        INPUT_STREAM_TLAST,
        INPUT_STREAM_TID,
        INPUT_STREAM_TDEST,
        OUTPUT_STREAM_TDATA,
        OUTPUT_STREAM_TKEEP,
        OUTPUT_STREAM_TSTRB,
        OUTPUT_STREAM_TUSER,
        OUTPUT_STREAM_TLAST,
        OUTPUT_STREAM_TID,
        OUTPUT_STREAM_TDEST,
        enable_V,
        ap_clk,
        ap_rst_n,
        INPUT_STREAM_TVALID,
        INPUT_STREAM_TREADY,
        OUTPUT_STREAM_TVALID,
        OUTPUT_STREAM_TREADY,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle
);


input  [23:0] INPUT_STREAM_TDATA;
input  [2:0] INPUT_STREAM_TKEEP;
input  [2:0] INPUT_STREAM_TSTRB;
input  [0:0] INPUT_STREAM_TUSER;
input  [0:0] INPUT_STREAM_TLAST;
input  [0:0] INPUT_STREAM_TID;
input  [0:0] INPUT_STREAM_TDEST;
output  [23:0] OUTPUT_STREAM_TDATA;
output  [2:0] OUTPUT_STREAM_TKEEP;
output  [2:0] OUTPUT_STREAM_TSTRB;
output  [0:0] OUTPUT_STREAM_TUSER;
output  [0:0] OUTPUT_STREAM_TLAST;
output  [0:0] OUTPUT_STREAM_TID;
output  [0:0] OUTPUT_STREAM_TDEST;
input  [0:0] enable_V;
input   ap_clk;
input   ap_rst_n;
input   INPUT_STREAM_TVALID;
output   INPUT_STREAM_TREADY;
output   OUTPUT_STREAM_TVALID;
input   OUTPUT_STREAM_TREADY;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;

wire   [23:0] Block_proc304_U0_OUTPUT_STREAM_TDATA;
wire   [2:0] Block_proc304_U0_OUTPUT_STREAM_TKEEP;
wire   [2:0] Block_proc304_U0_OUTPUT_STREAM_TSTRB;
wire   [0:0] Block_proc304_U0_OUTPUT_STREAM_TUSER;
wire   [0:0] Block_proc304_U0_OUTPUT_STREAM_TLAST;
wire   [0:0] Block_proc304_U0_OUTPUT_STREAM_TID;
wire   [0:0] Block_proc304_U0_OUTPUT_STREAM_TDEST;
 reg    ap_rst_n_inv;
wire    Block_proc304_U0_ap_start;
wire    Block_proc304_U0_INPUT_STREAM_TREADY;
wire    Block_proc304_U0_OUTPUT_STREAM_TVALID;
wire    Block_proc304_U0_ap_done;
wire    Block_proc304_U0_ap_ready;
wire    Block_proc304_U0_ap_idle;
wire    Block_proc304_U0_ap_continue;
wire    Block_proc304_U0_enable_V_ap_vld;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    Block_proc304_U0_start_full_n;
wire    Block_proc304_U0_start_write;

Block_proc304 Block_proc304_U0(
    .enable_V(enable_V),
    .INPUT_STREAM_TDATA(INPUT_STREAM_TDATA),
    .INPUT_STREAM_TKEEP(INPUT_STREAM_TKEEP),
    .INPUT_STREAM_TSTRB(INPUT_STREAM_TSTRB),
    .INPUT_STREAM_TUSER(INPUT_STREAM_TUSER),
    .INPUT_STREAM_TLAST(INPUT_STREAM_TLAST),
    .INPUT_STREAM_TID(INPUT_STREAM_TID),
    .INPUT_STREAM_TDEST(INPUT_STREAM_TDEST),
    .OUTPUT_STREAM_TDATA(Block_proc304_U0_OUTPUT_STREAM_TDATA),
    .OUTPUT_STREAM_TKEEP(Block_proc304_U0_OUTPUT_STREAM_TKEEP),
    .OUTPUT_STREAM_TSTRB(Block_proc304_U0_OUTPUT_STREAM_TSTRB),
    .OUTPUT_STREAM_TUSER(Block_proc304_U0_OUTPUT_STREAM_TUSER),
    .OUTPUT_STREAM_TLAST(Block_proc304_U0_OUTPUT_STREAM_TLAST),
    .OUTPUT_STREAM_TID(Block_proc304_U0_OUTPUT_STREAM_TID),
    .OUTPUT_STREAM_TDEST(Block_proc304_U0_OUTPUT_STREAM_TDEST),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_proc304_U0_ap_start),
    .INPUT_STREAM_TVALID(INPUT_STREAM_TVALID),
    .INPUT_STREAM_TREADY(Block_proc304_U0_INPUT_STREAM_TREADY),
    .OUTPUT_STREAM_TVALID(Block_proc304_U0_OUTPUT_STREAM_TVALID),
    .OUTPUT_STREAM_TREADY(OUTPUT_STREAM_TREADY),
    .ap_done(Block_proc304_U0_ap_done),
    .ap_ready(Block_proc304_U0_ap_ready),
    .ap_idle(Block_proc304_U0_ap_idle),
    .ap_continue(Block_proc304_U0_ap_continue)
);

assign Block_proc304_U0_ap_continue = 1'b1;

assign Block_proc304_U0_ap_start = ap_start;

assign Block_proc304_U0_enable_V_ap_vld = 1'b1;

assign Block_proc304_U0_start_full_n = 1'b1;

assign Block_proc304_U0_start_write = 1'b0;

assign INPUT_STREAM_TREADY = Block_proc304_U0_INPUT_STREAM_TREADY;

assign OUTPUT_STREAM_TDATA = Block_proc304_U0_OUTPUT_STREAM_TDATA;

assign OUTPUT_STREAM_TDEST = Block_proc304_U0_OUTPUT_STREAM_TDEST;

assign OUTPUT_STREAM_TID = Block_proc304_U0_OUTPUT_STREAM_TID;

assign OUTPUT_STREAM_TKEEP = Block_proc304_U0_OUTPUT_STREAM_TKEEP;

assign OUTPUT_STREAM_TLAST = Block_proc304_U0_OUTPUT_STREAM_TLAST;

assign OUTPUT_STREAM_TSTRB = Block_proc304_U0_OUTPUT_STREAM_TSTRB;

assign OUTPUT_STREAM_TUSER = Block_proc304_U0_OUTPUT_STREAM_TUSER;

assign OUTPUT_STREAM_TVALID = Block_proc304_U0_OUTPUT_STREAM_TVALID;

assign ap_done = Block_proc304_U0_ap_done;

assign ap_idle = Block_proc304_U0_ap_idle;

assign ap_ready = Block_proc304_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Block_proc304_U0_ap_done;

assign ap_sync_ready = Block_proc304_U0_ap_ready;

endmodule //Sobel_filter