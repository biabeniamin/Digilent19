// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="Random,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.537929,HLS_SYN_LAT=4185603,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=741,HLS_SYN_LUT=876,HLS_VERSION=2018_2}" *)

module Random (
        ap_clk,
        ap_rst_n,
        INPUT_STREAM_TDATA,
        INPUT_STREAM_TVALID,
        INPUT_STREAM_TREADY,
        INPUT_STREAM_TKEEP,
        INPUT_STREAM_TSTRB,
        INPUT_STREAM_TUSER,
        INPUT_STREAM_TLAST,
        INPUT_STREAM_TID,
        INPUT_STREAM_TDEST,
        temperature_V,
        s_axi_CONTROL_BUS_AWVALID,
        s_axi_CONTROL_BUS_AWREADY,
        s_axi_CONTROL_BUS_AWADDR,
        s_axi_CONTROL_BUS_WVALID,
        s_axi_CONTROL_BUS_WREADY,
        s_axi_CONTROL_BUS_WDATA,
        s_axi_CONTROL_BUS_WSTRB,
        s_axi_CONTROL_BUS_ARVALID,
        s_axi_CONTROL_BUS_ARREADY,
        s_axi_CONTROL_BUS_ARADDR,
        s_axi_CONTROL_BUS_RVALID,
        s_axi_CONTROL_BUS_RREADY,
        s_axi_CONTROL_BUS_RDATA,
        s_axi_CONTROL_BUS_RRESP,
        s_axi_CONTROL_BUS_BVALID,
        s_axi_CONTROL_BUS_BREADY,
        s_axi_CONTROL_BUS_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;
parameter    C_S_AXI_CONTROL_BUS_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_BUS_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_BUS_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input  [31:0] INPUT_STREAM_TDATA;
input   INPUT_STREAM_TVALID;
output   INPUT_STREAM_TREADY;
input  [3:0] INPUT_STREAM_TKEEP;
input  [3:0] INPUT_STREAM_TSTRB;
input  [1:0] INPUT_STREAM_TUSER;
input  [0:0] INPUT_STREAM_TLAST;
input  [4:0] INPUT_STREAM_TID;
input  [5:0] INPUT_STREAM_TDEST;
input  [11:0] temperature_V;
input   s_axi_CONTROL_BUS_AWVALID;
output   s_axi_CONTROL_BUS_AWREADY;
input  [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1:0] s_axi_CONTROL_BUS_AWADDR;
input   s_axi_CONTROL_BUS_WVALID;
output   s_axi_CONTROL_BUS_WREADY;
input  [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1:0] s_axi_CONTROL_BUS_WDATA;
input  [C_S_AXI_CONTROL_BUS_WSTRB_WIDTH - 1:0] s_axi_CONTROL_BUS_WSTRB;
input   s_axi_CONTROL_BUS_ARVALID;
output   s_axi_CONTROL_BUS_ARREADY;
input  [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1:0] s_axi_CONTROL_BUS_ARADDR;
output   s_axi_CONTROL_BUS_RVALID;
input   s_axi_CONTROL_BUS_RREADY;
output  [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1:0] s_axi_CONTROL_BUS_RDATA;
output  [1:0] s_axi_CONTROL_BUS_RRESP;
output   s_axi_CONTROL_BUS_BVALID;
input   s_axi_CONTROL_BUS_BREADY;
output  [1:0] s_axi_CONTROL_BUS_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
reg    agg_result_a_ap_vld;
wire   [31:0] agg_result_b;
reg    agg_result_b_ap_vld;
reg    agg_result_c_ap_vld;
wire   [31:0] agg_result_d;
reg    agg_result_d_ap_vld;
wire   [31:0] agg_result_e;
reg    agg_result_e_ap_vld;
wire   [31:0] agg_result_f;
reg    agg_result_f_ap_vld;
reg   [31:0] INPUT_STREAM_V_data_V_0_data_out;
wire    INPUT_STREAM_V_data_V_0_vld_in;
wire    INPUT_STREAM_V_data_V_0_vld_out;
wire    INPUT_STREAM_V_data_V_0_ack_in;
reg    INPUT_STREAM_V_data_V_0_ack_out;
reg   [31:0] INPUT_STREAM_V_data_V_0_payload_A;
reg   [31:0] INPUT_STREAM_V_data_V_0_payload_B;
reg    INPUT_STREAM_V_data_V_0_sel_rd;
reg    INPUT_STREAM_V_data_V_0_sel_wr;
wire    INPUT_STREAM_V_data_V_0_sel;
wire    INPUT_STREAM_V_data_V_0_load_A;
wire    INPUT_STREAM_V_data_V_0_load_B;
reg   [1:0] INPUT_STREAM_V_data_V_0_state;
wire    INPUT_STREAM_V_data_V_0_state_cmp_full;
reg   [0:0] INPUT_STREAM_V_last_V_0_data_out;
wire    INPUT_STREAM_V_last_V_0_vld_in;
wire    INPUT_STREAM_V_last_V_0_vld_out;
wire    INPUT_STREAM_V_last_V_0_ack_in;
reg    INPUT_STREAM_V_last_V_0_ack_out;
reg   [0:0] INPUT_STREAM_V_last_V_0_payload_A;
reg   [0:0] INPUT_STREAM_V_last_V_0_payload_B;
reg    INPUT_STREAM_V_last_V_0_sel_rd;
reg    INPUT_STREAM_V_last_V_0_sel_wr;
wire    INPUT_STREAM_V_last_V_0_sel;
wire    INPUT_STREAM_V_last_V_0_load_A;
wire    INPUT_STREAM_V_last_V_0_load_B;
reg   [1:0] INPUT_STREAM_V_last_V_0_state;
wire    INPUT_STREAM_V_last_V_0_state_cmp_full;
wire    INPUT_STREAM_V_dest_V_0_vld_in;
reg    INPUT_STREAM_V_dest_V_0_ack_out;
reg   [1:0] INPUT_STREAM_V_dest_V_0_state;
reg    INPUT_STREAM_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] tmp_fu_258_p2;
reg   [54:0] p_0_reg_166;
reg   [22:0] i_reg_176;
reg  signed [31:0] i_op_assign_reg_188;
reg   [31:0] first_s_reg_200;
wire   [54:0] sum_V_cast_fu_254_p1;
reg   [0:0] tmp_reg_386;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [22:0] in1Count_fu_264_p2;
reg   [22:0] in1Count_reg_390;
reg   [31:0] tmp_data_V_reg_396;
reg   [0:0] tmp_last_V_reg_402;
wire   [54:0] sum_V_fu_282_p2;
reg   [54:0] sum_V_reg_406;
wire   [31:0] r_V_2_fu_339_p3;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_predicate_tran3to4_state2;
reg   [54:0] ap_phi_mux_p_0_phi_fu_169_p4;
reg   [22:0] ap_phi_mux_i_phi_fu_180_p4;
reg   [54:0] lhs_V_reg_212;
reg   [31:0] value_1_reg_222;
reg   [31:0] first_2_reg_233;
reg   [22:0] in1Count_1_reg_244;
wire    ap_CS_fsm_state4;
wire   [54:0] tmp_2_cast_fu_278_p1;
wire  signed [55:0] rhs_V_cast_fu_291_p1;
wire   [55:0] lhs_V_cast_fu_288_p1;
wire   [55:0] r_V_fu_295_p2;
wire   [0:0] tmp_5_fu_313_p1;
wire   [31:0] tmp_7_fu_317_p3;
wire   [0:0] tmp_4_fu_309_p1;
wire   [0:0] tmp_2_fu_301_p3;
wire   [31:0] tmp_9_fu_325_p2;
wire   [31:0] tmp_6_fu_331_p3;
wire   [22:0] tmp_8_fu_352_p4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_539;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 INPUT_STREAM_V_data_V_0_sel_rd = 1'b0;
#0 INPUT_STREAM_V_data_V_0_sel_wr = 1'b0;
#0 INPUT_STREAM_V_data_V_0_state = 2'd0;
#0 INPUT_STREAM_V_last_V_0_sel_rd = 1'b0;
#0 INPUT_STREAM_V_last_V_0_sel_wr = 1'b0;
#0 INPUT_STREAM_V_last_V_0_state = 2'd0;
#0 INPUT_STREAM_V_dest_V_0_state = 2'd0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

Random_CONTROL_BUS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_BUS_DATA_WIDTH ))
Random_CONTROL_BUS_s_axi_U(
    .AWVALID(s_axi_CONTROL_BUS_AWVALID),
    .AWREADY(s_axi_CONTROL_BUS_AWREADY),
    .AWADDR(s_axi_CONTROL_BUS_AWADDR),
    .WVALID(s_axi_CONTROL_BUS_WVALID),
    .WREADY(s_axi_CONTROL_BUS_WREADY),
    .WDATA(s_axi_CONTROL_BUS_WDATA),
    .WSTRB(s_axi_CONTROL_BUS_WSTRB),
    .ARVALID(s_axi_CONTROL_BUS_ARVALID),
    .ARREADY(s_axi_CONTROL_BUS_ARREADY),
    .ARADDR(s_axi_CONTROL_BUS_ARADDR),
    .RVALID(s_axi_CONTROL_BUS_RVALID),
    .RREADY(s_axi_CONTROL_BUS_RREADY),
    .RDATA(s_axi_CONTROL_BUS_RDATA),
    .RRESP(s_axi_CONTROL_BUS_RRESP),
    .BVALID(s_axi_CONTROL_BUS_BVALID),
    .BREADY(s_axi_CONTROL_BUS_BREADY),
    .BRESP(s_axi_CONTROL_BUS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .agg_result_a(value_1_reg_222),
    .agg_result_a_ap_vld(agg_result_a_ap_vld),
    .agg_result_b(agg_result_b),
    .agg_result_b_ap_vld(agg_result_b_ap_vld),
    .agg_result_c(first_2_reg_233),
    .agg_result_c_ap_vld(agg_result_c_ap_vld),
    .agg_result_d(agg_result_d),
    .agg_result_d_ap_vld(agg_result_d_ap_vld),
    .agg_result_e(agg_result_e),
    .agg_result_e_ap_vld(agg_result_e_ap_vld),
    .agg_result_f(agg_result_f),
    .agg_result_f_ap_vld(agg_result_f_ap_vld)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        INPUT_STREAM_V_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == INPUT_STREAM_V_data_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_out))) begin
            INPUT_STREAM_V_data_V_0_sel_rd <= ~INPUT_STREAM_V_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        INPUT_STREAM_V_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == INPUT_STREAM_V_data_V_0_ack_in) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_in))) begin
            INPUT_STREAM_V_data_V_0_sel_wr <= ~INPUT_STREAM_V_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        INPUT_STREAM_V_data_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == INPUT_STREAM_V_data_V_0_state) & (1'b0 == INPUT_STREAM_V_data_V_0_vld_in)) | ((2'd3 == INPUT_STREAM_V_data_V_0_state) & (1'b0 == INPUT_STREAM_V_data_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_data_V_0_ack_out)))) begin
            INPUT_STREAM_V_data_V_0_state <= 2'd2;
        end else if ((((2'd1 == INPUT_STREAM_V_data_V_0_state) & (1'b0 == INPUT_STREAM_V_data_V_0_ack_out)) | ((2'd3 == INPUT_STREAM_V_data_V_0_state) & (1'b0 == INPUT_STREAM_V_data_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_in)))) begin
            INPUT_STREAM_V_data_V_0_state <= 2'd1;
        end else if (((~((1'b0 == INPUT_STREAM_V_data_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_data_V_0_ack_out)) & ~((1'b0 == INPUT_STREAM_V_data_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_in)) & (2'd3 == INPUT_STREAM_V_data_V_0_state)) | ((2'd1 == INPUT_STREAM_V_data_V_0_state) & (1'b1 == INPUT_STREAM_V_data_V_0_ack_out)) | ((2'd2 == INPUT_STREAM_V_data_V_0_state) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_in)))) begin
            INPUT_STREAM_V_data_V_0_state <= 2'd3;
        end else begin
            INPUT_STREAM_V_data_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        INPUT_STREAM_V_dest_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == INPUT_STREAM_V_dest_V_0_state) & (1'b0 == INPUT_STREAM_V_dest_V_0_vld_in)) | ((2'd3 == INPUT_STREAM_V_dest_V_0_state) & (1'b0 == INPUT_STREAM_V_dest_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_dest_V_0_ack_out)))) begin
            INPUT_STREAM_V_dest_V_0_state <= 2'd2;
        end else if ((((2'd1 == INPUT_STREAM_V_dest_V_0_state) & (1'b0 == INPUT_STREAM_V_dest_V_0_ack_out)) | ((2'd3 == INPUT_STREAM_V_dest_V_0_state) & (1'b0 == INPUT_STREAM_V_dest_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_dest_V_0_vld_in)))) begin
            INPUT_STREAM_V_dest_V_0_state <= 2'd1;
        end else if (((~((1'b0 == INPUT_STREAM_V_dest_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_dest_V_0_ack_out)) & ~((1'b0 == INPUT_STREAM_V_dest_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_dest_V_0_vld_in)) & (2'd3 == INPUT_STREAM_V_dest_V_0_state)) | ((2'd1 == INPUT_STREAM_V_dest_V_0_state) & (1'b1 == INPUT_STREAM_V_dest_V_0_ack_out)) | ((2'd2 == INPUT_STREAM_V_dest_V_0_state) & (1'b1 == INPUT_STREAM_V_dest_V_0_vld_in)))) begin
            INPUT_STREAM_V_dest_V_0_state <= 2'd3;
        end else begin
            INPUT_STREAM_V_dest_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        INPUT_STREAM_V_last_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == INPUT_STREAM_V_last_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_last_V_0_vld_out))) begin
            INPUT_STREAM_V_last_V_0_sel_rd <= ~INPUT_STREAM_V_last_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        INPUT_STREAM_V_last_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == INPUT_STREAM_V_last_V_0_ack_in) & (1'b1 == INPUT_STREAM_V_last_V_0_vld_in))) begin
            INPUT_STREAM_V_last_V_0_sel_wr <= ~INPUT_STREAM_V_last_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        INPUT_STREAM_V_last_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == INPUT_STREAM_V_last_V_0_state) & (1'b0 == INPUT_STREAM_V_last_V_0_vld_in)) | ((2'd3 == INPUT_STREAM_V_last_V_0_state) & (1'b0 == INPUT_STREAM_V_last_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_last_V_0_ack_out)))) begin
            INPUT_STREAM_V_last_V_0_state <= 2'd2;
        end else if ((((2'd1 == INPUT_STREAM_V_last_V_0_state) & (1'b0 == INPUT_STREAM_V_last_V_0_ack_out)) | ((2'd3 == INPUT_STREAM_V_last_V_0_state) & (1'b0 == INPUT_STREAM_V_last_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_last_V_0_vld_in)))) begin
            INPUT_STREAM_V_last_V_0_state <= 2'd1;
        end else if (((~((1'b0 == INPUT_STREAM_V_last_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_last_V_0_ack_out)) & ~((1'b0 == INPUT_STREAM_V_last_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_last_V_0_vld_in)) & (2'd3 == INPUT_STREAM_V_last_V_0_state)) | ((2'd1 == INPUT_STREAM_V_last_V_0_state) & (1'b1 == INPUT_STREAM_V_last_V_0_ack_out)) | ((2'd2 == INPUT_STREAM_V_last_V_0_state) & (1'b1 == INPUT_STREAM_V_last_V_0_vld_in)))) begin
            INPUT_STREAM_V_last_V_0_state <= 2'd3;
        end else begin
            INPUT_STREAM_V_last_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_predicate_tran3to4_state2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_539)) begin
        if (((tmp_last_V_reg_402 == 1'd1) & (tmp_reg_386 == 1'd1))) begin
            first_2_reg_233 <= tmp_data_V_reg_396;
        end else if ((tmp_reg_386 == 1'd0)) begin
            first_2_reg_233 <= first_s_reg_200;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_386 == 1'd1) & (tmp_last_V_reg_402 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_176 <= in1Count_reg_390;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_176 <= 23'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_539)) begin
        if (((tmp_last_V_reg_402 == 1'd1) & (tmp_reg_386 == 1'd1))) begin
            in1Count_1_reg_244 <= in1Count_reg_390;
        end else if ((tmp_reg_386 == 1'd0)) begin
            in1Count_1_reg_244 <= i_reg_176;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_539)) begin
        if (((tmp_last_V_reg_402 == 1'd1) & (tmp_reg_386 == 1'd1))) begin
            lhs_V_reg_212 <= sum_V_reg_406;
        end else if ((tmp_reg_386 == 1'd0)) begin
            lhs_V_reg_212 <= p_0_reg_166;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_386 == 1'd1) & (tmp_last_V_reg_402 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_0_reg_166 <= sum_V_reg_406;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        p_0_reg_166 <= sum_V_cast_fu_254_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_539)) begin
        if (((tmp_last_V_reg_402 == 1'd1) & (tmp_reg_386 == 1'd1))) begin
            value_1_reg_222 <= r_V_2_fu_339_p3;
        end else if ((tmp_reg_386 == 1'd0)) begin
            value_1_reg_222 <= i_op_assign_reg_188;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == INPUT_STREAM_V_data_V_0_load_A)) begin
        INPUT_STREAM_V_data_V_0_payload_A <= INPUT_STREAM_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == INPUT_STREAM_V_data_V_0_load_B)) begin
        INPUT_STREAM_V_data_V_0_payload_B <= INPUT_STREAM_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == INPUT_STREAM_V_last_V_0_load_A)) begin
        INPUT_STREAM_V_last_V_0_payload_A <= INPUT_STREAM_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == INPUT_STREAM_V_last_V_0_load_B)) begin
        INPUT_STREAM_V_last_V_0_payload_B <= INPUT_STREAM_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_386 == 1'd1) & (tmp_last_V_reg_402 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        first_s_reg_200 <= tmp_data_V_reg_396;
        i_op_assign_reg_188 <= r_V_2_fu_339_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in1Count_reg_390 <= in1Count_fu_264_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_258_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_V_reg_406 <= sum_V_fu_282_p2;
        tmp_data_V_reg_396 <= INPUT_STREAM_V_data_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_258_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_last_V_reg_402 <= INPUT_STREAM_V_last_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_386 <= tmp_fu_258_p2;
    end
end

always @ (*) begin
    if (((tmp_fu_258_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        INPUT_STREAM_TDATA_blk_n = INPUT_STREAM_V_data_V_0_state[1'd0];
    end else begin
        INPUT_STREAM_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_fu_258_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        INPUT_STREAM_V_data_V_0_ack_out = 1'b1;
    end else begin
        INPUT_STREAM_V_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == INPUT_STREAM_V_data_V_0_sel)) begin
        INPUT_STREAM_V_data_V_0_data_out = INPUT_STREAM_V_data_V_0_payload_B;
    end else begin
        INPUT_STREAM_V_data_V_0_data_out = INPUT_STREAM_V_data_V_0_payload_A;
    end
end

always @ (*) begin
    if (((tmp_fu_258_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        INPUT_STREAM_V_dest_V_0_ack_out = 1'b1;
    end else begin
        INPUT_STREAM_V_dest_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_fu_258_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        INPUT_STREAM_V_last_V_0_ack_out = 1'b1;
    end else begin
        INPUT_STREAM_V_last_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == INPUT_STREAM_V_last_V_0_sel)) begin
        INPUT_STREAM_V_last_V_0_data_out = INPUT_STREAM_V_last_V_0_payload_B;
    end else begin
        INPUT_STREAM_V_last_V_0_data_out = INPUT_STREAM_V_last_V_0_payload_A;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        agg_result_a_ap_vld = 1'b1;
    end else begin
        agg_result_a_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        agg_result_b_ap_vld = 1'b1;
    end else begin
        agg_result_b_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        agg_result_c_ap_vld = 1'b1;
    end else begin
        agg_result_c_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        agg_result_d_ap_vld = 1'b1;
    end else begin
        agg_result_d_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        agg_result_e_ap_vld = 1'b1;
    end else begin
        agg_result_e_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        agg_result_f_ap_vld = 1'b1;
    end else begin
        agg_result_f_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_386 == 1'd1) & (tmp_last_V_reg_402 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_i_phi_fu_180_p4 = in1Count_reg_390;
    end else begin
        ap_phi_mux_i_phi_fu_180_p4 = i_reg_176;
    end
end

always @ (*) begin
    if (((tmp_reg_386 == 1'd1) & (tmp_last_V_reg_402 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_p_0_phi_fu_169_p4 = sum_V_reg_406;
    end else begin
        ap_phi_mux_p_0_phi_fu_169_p4 = p_0_reg_166;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign INPUT_STREAM_TREADY = INPUT_STREAM_V_dest_V_0_state[1'd1];

assign INPUT_STREAM_V_data_V_0_ack_in = INPUT_STREAM_V_data_V_0_state[1'd1];

assign INPUT_STREAM_V_data_V_0_load_A = (~INPUT_STREAM_V_data_V_0_sel_wr & INPUT_STREAM_V_data_V_0_state_cmp_full);

assign INPUT_STREAM_V_data_V_0_load_B = (INPUT_STREAM_V_data_V_0_state_cmp_full & INPUT_STREAM_V_data_V_0_sel_wr);

assign INPUT_STREAM_V_data_V_0_sel = INPUT_STREAM_V_data_V_0_sel_rd;

assign INPUT_STREAM_V_data_V_0_state_cmp_full = ((INPUT_STREAM_V_data_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign INPUT_STREAM_V_data_V_0_vld_in = INPUT_STREAM_TVALID;

assign INPUT_STREAM_V_data_V_0_vld_out = INPUT_STREAM_V_data_V_0_state[1'd0];

assign INPUT_STREAM_V_dest_V_0_vld_in = INPUT_STREAM_TVALID;

assign INPUT_STREAM_V_last_V_0_ack_in = INPUT_STREAM_V_last_V_0_state[1'd1];

assign INPUT_STREAM_V_last_V_0_load_A = (~INPUT_STREAM_V_last_V_0_sel_wr & INPUT_STREAM_V_last_V_0_state_cmp_full);

assign INPUT_STREAM_V_last_V_0_load_B = (INPUT_STREAM_V_last_V_0_state_cmp_full & INPUT_STREAM_V_last_V_0_sel_wr);

assign INPUT_STREAM_V_last_V_0_sel = INPUT_STREAM_V_last_V_0_sel_rd;

assign INPUT_STREAM_V_last_V_0_state_cmp_full = ((INPUT_STREAM_V_last_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign INPUT_STREAM_V_last_V_0_vld_in = INPUT_STREAM_TVALID;

assign INPUT_STREAM_V_last_V_0_vld_out = INPUT_STREAM_V_last_V_0_state[1'd0];

assign agg_result_b = in1Count_1_reg_244;

assign agg_result_d = tmp_8_fu_352_p4;

assign agg_result_e = lhs_V_reg_212[31:0];

assign agg_result_f = temperature_V;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((tmp_fu_258_p2 == 1'd1) & (1'b0 == INPUT_STREAM_V_data_V_0_vld_out) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((tmp_fu_258_p2 == 1'd1) & (1'b0 == INPUT_STREAM_V_data_V_0_vld_out) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((tmp_fu_258_p2 == 1'd1) & (1'b0 == INPUT_STREAM_V_data_V_0_vld_out));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_539 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_predicate_tran3to4_state2 = ((tmp_fu_258_p2 == 1'd0) | ((1'd1 == INPUT_STREAM_V_last_V_0_data_out) & (tmp_fu_258_p2 == 1'd1)));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign in1Count_fu_264_p2 = (ap_phi_mux_i_phi_fu_180_p4 + 23'd1);

assign lhs_V_cast_fu_288_p1 = sum_V_reg_406;

assign r_V_2_fu_339_p3 = ((tmp_2_fu_301_p3[0:0] === 1'b1) ? tmp_9_fu_325_p2 : tmp_6_fu_331_p3);

assign r_V_fu_295_p2 = ($signed(rhs_V_cast_fu_291_p1) + $signed(lhs_V_cast_fu_288_p1));

assign rhs_V_cast_fu_291_p1 = i_op_assign_reg_188;

assign sum_V_cast_fu_254_p1 = temperature_V;

assign sum_V_fu_282_p2 = (ap_phi_mux_p_0_phi_fu_169_p4 + tmp_2_cast_fu_278_p1);

assign tmp_2_cast_fu_278_p1 = INPUT_STREAM_V_data_V_0_data_out;

assign tmp_2_fu_301_p3 = r_V_fu_295_p2[32'd55];

assign tmp_4_fu_309_p1 = r_V_fu_295_p2[0:0];

assign tmp_5_fu_313_p1 = r_V_fu_295_p2[0:0];

assign tmp_6_fu_331_p3 = {{31'd0}, {tmp_4_fu_309_p1}};

assign tmp_7_fu_317_p3 = {{31'd0}, {tmp_5_fu_313_p1}};

assign tmp_8_fu_352_p4 = {{lhs_V_reg_212[54:32]}};

assign tmp_9_fu_325_p2 = (32'd0 - tmp_7_fu_317_p3);

assign tmp_fu_258_p2 = ((ap_phi_mux_i_phi_fu_180_p4 < 23'd8371200) ? 1'b1 : 1'b0);

endmodule //Random
