// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="PassThrough,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.816000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=663,HLS_SYN_LUT=1419,HLS_VERSION=2018_2}" *)

module PassThrough (
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
        ap_clk,
        ap_rst_n,
        ap_start,
        INPUT_STREAM_TVALID,
        INPUT_STREAM_TREADY,
        OUTPUT_STREAM_TVALID,
        OUTPUT_STREAM_TREADY,
        ap_done,
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
input   ap_clk;
input   ap_rst_n;
input   ap_start;
input   INPUT_STREAM_TVALID;
output   INPUT_STREAM_TREADY;
output   OUTPUT_STREAM_TVALID;
input   OUTPUT_STREAM_TREADY;
output   ap_done;
output   ap_ready;
output   ap_idle;

 reg    ap_rst_n_inv;
wire    Block_proc_U0_ap_start;
wire    Block_proc_U0_ap_done;
wire    Block_proc_U0_ap_continue;
wire    Block_proc_U0_ap_idle;
wire    Block_proc_U0_ap_ready;
wire   [11:0] Block_proc_U0_img_0_rows_V_out_din;
wire    Block_proc_U0_img_0_rows_V_out_write;
wire   [11:0] Block_proc_U0_img_0_cols_V_out_din;
wire    Block_proc_U0_img_0_cols_V_out_write;
wire    AXIvideo2Mat_U0_ap_start;
wire    AXIvideo2Mat_U0_ap_done;
wire    AXIvideo2Mat_U0_ap_continue;
wire    AXIvideo2Mat_U0_ap_idle;
wire    AXIvideo2Mat_U0_ap_ready;
wire    AXIvideo2Mat_U0_start_out;
wire    AXIvideo2Mat_U0_start_write;
wire    AXIvideo2Mat_U0_INPUT_STREAM_TREADY;
wire    AXIvideo2Mat_U0_img_rows_V_read;
wire    AXIvideo2Mat_U0_img_cols_V_read;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_0_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_0_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_1_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_1_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_2_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_2_V_write;
wire   [11:0] AXIvideo2Mat_U0_img_rows_V_out_din;
wire    AXIvideo2Mat_U0_img_rows_V_out_write;
wire   [11:0] AXIvideo2Mat_U0_img_cols_V_out_din;
wire    AXIvideo2Mat_U0_img_cols_V_out_write;
wire    Mat2AXIvideo_U0_ap_start;
wire    Mat2AXIvideo_U0_ap_done;
wire    Mat2AXIvideo_U0_ap_continue;
wire    Mat2AXIvideo_U0_ap_idle;
wire    Mat2AXIvideo_U0_ap_ready;
wire    Mat2AXIvideo_U0_img_rows_V_read;
wire    Mat2AXIvideo_U0_img_cols_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_0_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_1_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_2_V_read;
wire   [23:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;
wire    Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;
wire   [2:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;
wire   [2:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TID;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;
wire    ap_sync_continue;
wire    img_0_rows_V_c_full_n;
wire   [11:0] img_0_rows_V_c_dout;
wire    img_0_rows_V_c_empty_n;
wire    img_0_cols_V_c_full_n;
wire   [11:0] img_0_cols_V_c_dout;
wire    img_0_cols_V_c_empty_n;
wire    img_0_data_stream_0_full_n;
wire   [7:0] img_0_data_stream_0_dout;
wire    img_0_data_stream_0_empty_n;
wire    img_0_data_stream_1_full_n;
wire   [7:0] img_0_data_stream_1_dout;
wire    img_0_data_stream_1_empty_n;
wire    img_0_data_stream_2_full_n;
wire   [7:0] img_0_data_stream_2_dout;
wire    img_0_data_stream_2_empty_n;
wire    img_0_rows_V_c4_full_n;
wire   [11:0] img_0_rows_V_c4_dout;
wire    img_0_rows_V_c4_empty_n;
wire    img_0_cols_V_c5_full_n;
wire   [11:0] img_0_cols_V_c5_dout;
wire    img_0_cols_V_c5_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    Block_proc_U0_start_full_n;
wire    Block_proc_U0_start_write;
wire   [0:0] start_for_Mat2AXIvideo_U0_din;
wire    start_for_Mat2AXIvideo_U0_full_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_dout;
wire    start_for_Mat2AXIvideo_U0_empty_n;
wire    Mat2AXIvideo_U0_start_full_n;
wire    Mat2AXIvideo_U0_start_write;

Block_proc Block_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_proc_U0_ap_start),
    .ap_done(Block_proc_U0_ap_done),
    .ap_continue(Block_proc_U0_ap_continue),
    .ap_idle(Block_proc_U0_ap_idle),
    .ap_ready(Block_proc_U0_ap_ready),
    .img_0_rows_V_out_din(Block_proc_U0_img_0_rows_V_out_din),
    .img_0_rows_V_out_full_n(img_0_rows_V_c_full_n),
    .img_0_rows_V_out_write(Block_proc_U0_img_0_rows_V_out_write),
    .img_0_cols_V_out_din(Block_proc_U0_img_0_cols_V_out_din),
    .img_0_cols_V_out_full_n(img_0_cols_V_c_full_n),
    .img_0_cols_V_out_write(Block_proc_U0_img_0_cols_V_out_write)
);

AXIvideo2Mat AXIvideo2Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2Mat_U0_ap_start),
    .start_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .ap_done(AXIvideo2Mat_U0_ap_done),
    .ap_continue(AXIvideo2Mat_U0_ap_continue),
    .ap_idle(AXIvideo2Mat_U0_ap_idle),
    .ap_ready(AXIvideo2Mat_U0_ap_ready),
    .start_out(AXIvideo2Mat_U0_start_out),
    .start_write(AXIvideo2Mat_U0_start_write),
    .INPUT_STREAM_TDATA(INPUT_STREAM_TDATA),
    .INPUT_STREAM_TVALID(INPUT_STREAM_TVALID),
    .INPUT_STREAM_TREADY(AXIvideo2Mat_U0_INPUT_STREAM_TREADY),
    .INPUT_STREAM_TKEEP(INPUT_STREAM_TKEEP),
    .INPUT_STREAM_TSTRB(INPUT_STREAM_TSTRB),
    .INPUT_STREAM_TUSER(INPUT_STREAM_TUSER),
    .INPUT_STREAM_TLAST(INPUT_STREAM_TLAST),
    .INPUT_STREAM_TID(INPUT_STREAM_TID),
    .INPUT_STREAM_TDEST(INPUT_STREAM_TDEST),
    .img_rows_V_dout(img_0_rows_V_c_dout),
    .img_rows_V_empty_n(img_0_rows_V_c_empty_n),
    .img_rows_V_read(AXIvideo2Mat_U0_img_rows_V_read),
    .img_cols_V_dout(img_0_cols_V_c_dout),
    .img_cols_V_empty_n(img_0_cols_V_c_empty_n),
    .img_cols_V_read(AXIvideo2Mat_U0_img_cols_V_read),
    .img_data_stream_0_V_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .img_data_stream_0_V_full_n(img_0_data_stream_0_full_n),
    .img_data_stream_0_V_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .img_data_stream_1_V_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .img_data_stream_1_V_full_n(img_0_data_stream_1_full_n),
    .img_data_stream_1_V_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .img_data_stream_2_V_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .img_data_stream_2_V_full_n(img_0_data_stream_2_full_n),
    .img_data_stream_2_V_write(AXIvideo2Mat_U0_img_data_stream_2_V_write),
    .img_rows_V_out_din(AXIvideo2Mat_U0_img_rows_V_out_din),
    .img_rows_V_out_full_n(img_0_rows_V_c4_full_n),
    .img_rows_V_out_write(AXIvideo2Mat_U0_img_rows_V_out_write),
    .img_cols_V_out_din(AXIvideo2Mat_U0_img_cols_V_out_din),
    .img_cols_V_out_full_n(img_0_cols_V_c5_full_n),
    .img_cols_V_out_write(AXIvideo2Mat_U0_img_cols_V_out_write)
);

Mat2AXIvideo Mat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Mat2AXIvideo_U0_ap_start),
    .ap_done(Mat2AXIvideo_U0_ap_done),
    .ap_continue(Mat2AXIvideo_U0_ap_continue),
    .ap_idle(Mat2AXIvideo_U0_ap_idle),
    .ap_ready(Mat2AXIvideo_U0_ap_ready),
    .img_rows_V_dout(img_0_rows_V_c4_dout),
    .img_rows_V_empty_n(img_0_rows_V_c4_empty_n),
    .img_rows_V_read(Mat2AXIvideo_U0_img_rows_V_read),
    .img_cols_V_dout(img_0_cols_V_c5_dout),
    .img_cols_V_empty_n(img_0_cols_V_c5_empty_n),
    .img_cols_V_read(Mat2AXIvideo_U0_img_cols_V_read),
    .img_data_stream_0_V_dout(img_0_data_stream_0_dout),
    .img_data_stream_0_V_empty_n(img_0_data_stream_0_empty_n),
    .img_data_stream_0_V_read(Mat2AXIvideo_U0_img_data_stream_0_V_read),
    .img_data_stream_1_V_dout(img_0_data_stream_1_dout),
    .img_data_stream_1_V_empty_n(img_0_data_stream_1_empty_n),
    .img_data_stream_1_V_read(Mat2AXIvideo_U0_img_data_stream_1_V_read),
    .img_data_stream_2_V_dout(img_0_data_stream_2_dout),
    .img_data_stream_2_V_empty_n(img_0_data_stream_2_empty_n),
    .img_data_stream_2_V_read(Mat2AXIvideo_U0_img_data_stream_2_V_read),
    .OUTPUT_STREAM_TDATA(Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA),
    .OUTPUT_STREAM_TVALID(Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID),
    .OUTPUT_STREAM_TREADY(OUTPUT_STREAM_TREADY),
    .OUTPUT_STREAM_TKEEP(Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP),
    .OUTPUT_STREAM_TSTRB(Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB),
    .OUTPUT_STREAM_TUSER(Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER),
    .OUTPUT_STREAM_TLAST(Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST),
    .OUTPUT_STREAM_TID(Mat2AXIvideo_U0_OUTPUT_STREAM_TID),
    .OUTPUT_STREAM_TDEST(Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST)
);

fifo_w12_d2_A img_0_rows_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_proc_U0_img_0_rows_V_out_din),
    .if_full_n(img_0_rows_V_c_full_n),
    .if_write(Block_proc_U0_img_0_rows_V_out_write),
    .if_dout(img_0_rows_V_c_dout),
    .if_empty_n(img_0_rows_V_c_empty_n),
    .if_read(AXIvideo2Mat_U0_img_rows_V_read)
);

fifo_w12_d2_A img_0_cols_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_proc_U0_img_0_cols_V_out_din),
    .if_full_n(img_0_cols_V_c_full_n),
    .if_write(Block_proc_U0_img_0_cols_V_out_write),
    .if_dout(img_0_cols_V_c_dout),
    .if_empty_n(img_0_cols_V_c_empty_n),
    .if_read(AXIvideo2Mat_U0_img_cols_V_read)
);

fifo_w8_d2_A img_0_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .if_full_n(img_0_data_stream_0_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .if_dout(img_0_data_stream_0_dout),
    .if_empty_n(img_0_data_stream_0_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_0_V_read)
);

fifo_w8_d2_A img_0_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .if_full_n(img_0_data_stream_1_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .if_dout(img_0_data_stream_1_dout),
    .if_empty_n(img_0_data_stream_1_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_1_V_read)
);

fifo_w8_d2_A img_0_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .if_full_n(img_0_data_stream_2_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_2_V_write),
    .if_dout(img_0_data_stream_2_dout),
    .if_empty_n(img_0_data_stream_2_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_2_V_read)
);

fifo_w12_d2_A img_0_rows_V_c4_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_rows_V_out_din),
    .if_full_n(img_0_rows_V_c4_full_n),
    .if_write(AXIvideo2Mat_U0_img_rows_V_out_write),
    .if_dout(img_0_rows_V_c4_dout),
    .if_empty_n(img_0_rows_V_c4_empty_n),
    .if_read(Mat2AXIvideo_U0_img_rows_V_read)
);

fifo_w12_d2_A img_0_cols_V_c5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_cols_V_out_din),
    .if_full_n(img_0_cols_V_c5_full_n),
    .if_write(AXIvideo2Mat_U0_img_cols_V_out_write),
    .if_dout(img_0_cols_V_c5_dout),
    .if_empty_n(img_0_cols_V_c5_empty_n),
    .if_read(Mat2AXIvideo_U0_img_cols_V_read)
);

start_for_Mat2AXIbkb start_for_Mat2AXIbkb_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Mat2AXIvideo_U0_din),
    .if_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .if_write(AXIvideo2Mat_U0_start_write),
    .if_dout(start_for_Mat2AXIvideo_U0_dout),
    .if_empty_n(start_for_Mat2AXIvideo_U0_empty_n),
    .if_read(Mat2AXIvideo_U0_ap_ready)
);

assign AXIvideo2Mat_U0_ap_continue = 1'b1;

assign AXIvideo2Mat_U0_ap_start = ap_start;

assign Block_proc_U0_ap_continue = 1'b1;

assign Block_proc_U0_ap_start = ap_start;

assign Block_proc_U0_start_full_n = 1'b1;

assign Block_proc_U0_start_write = 1'b0;

assign INPUT_STREAM_TREADY = AXIvideo2Mat_U0_INPUT_STREAM_TREADY;

assign Mat2AXIvideo_U0_ap_continue = 1'b1;

assign Mat2AXIvideo_U0_ap_start = start_for_Mat2AXIvideo_U0_empty_n;

assign Mat2AXIvideo_U0_start_full_n = 1'b1;

assign Mat2AXIvideo_U0_start_write = 1'b0;

assign OUTPUT_STREAM_TDATA = Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;

assign OUTPUT_STREAM_TDEST = Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;

assign OUTPUT_STREAM_TID = Mat2AXIvideo_U0_OUTPUT_STREAM_TID;

assign OUTPUT_STREAM_TKEEP = Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;

assign OUTPUT_STREAM_TLAST = Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;

assign OUTPUT_STREAM_TSTRB = Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;

assign OUTPUT_STREAM_TUSER = Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;

assign OUTPUT_STREAM_TVALID = Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;

assign ap_done = Mat2AXIvideo_U0_ap_done;

assign ap_idle = (Mat2AXIvideo_U0_ap_idle & Block_proc_U0_ap_idle & AXIvideo2Mat_U0_ap_idle);

assign ap_ready = AXIvideo2Mat_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Mat2AXIvideo_U0_ap_done;

assign ap_sync_ready = AXIvideo2Mat_U0_ap_ready;

assign start_for_Mat2AXIvideo_U0_din = 1'b1;

endmodule //PassThrough