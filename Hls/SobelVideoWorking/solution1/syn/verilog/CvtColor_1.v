// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module CvtColor_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_src_data_stream_0_V,
        p_src_data_stream_1_V,
        p_src_data_stream_2_V,
        p_dst_data_stream_V_din,
        p_dst_data_stream_V_full_n,
        p_dst_data_stream_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] p_src_data_stream_0_V;
input  [7:0] p_src_data_stream_1_V;
input  [7:0] p_src_data_stream_2_V;
output  [7:0] p_dst_data_stream_V_din;
input   p_dst_data_stream_V_full_n;
output   p_dst_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_dst_data_stream_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_dst_data_stream_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_reg_277;
reg   [0:0] exitcond_reg_277_pp0_iter1_reg;
reg   [10:0] j_reg_136;
wire   [0:0] exitcond5_fu_147_p2;
wire    ap_CS_fsm_state2;
wire   [9:0] i_1_fu_153_p2;
reg   [9:0] i_1_reg_272;
wire   [0:0] exitcond_fu_159_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] j_1_fu_165_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [7:0] tmp_89_reg_286;
reg   [7:0] tmp_90_reg_291;
wire   [28:0] r_V_4_i_fu_244_p2;
reg   [28:0] r_V_4_i_reg_296;
wire   [29:0] grp_fu_258_p3;
reg   [29:0] r_V_1_reg_301;
reg    ap_enable_reg_pp0_iter1;
reg   [7:0] p_Val2_7_reg_306;
reg   [0:0] tmp_85_reg_311;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [9:0] i_reg_125;
reg    ap_block_state1;
wire    ap_CS_fsm_state6;
reg    ap_block_pp0_stage0_01001;
wire   [28:0] grp_fu_250_p3;
wire   [7:0] tmp_1_i_i_i_fu_200_p1;
wire   [7:0] p_Val2_8_fu_210_p2;
wire   [0:0] tmp_86_fu_203_p3;
wire   [0:0] tmp_87_fu_215_p3;
wire   [0:0] p_Result_1_i_i_i_n_fu_223_p2;
wire   [0:0] not_carry_fu_229_p2;
wire   [7:0] r_V_4_i_fu_244_p0;
wire   [21:0] r_V_4_i_fu_244_p1;
wire   [7:0] grp_fu_250_p0;
wire   [19:0] grp_fu_250_p1;
wire   [7:0] grp_fu_258_p0;
wire   [22:0] grp_fu_258_p1;
wire   [28:0] grp_fu_258_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [27:0] grp_fu_250_p00;
wire   [29:0] grp_fu_258_p00;
wire   [29:0] grp_fu_258_p20;
wire   [28:0] r_V_4_i_fu_244_p00;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

Sobel_filter_mul_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 22 ),
    .dout_WIDTH( 29 ))
Sobel_filter_mul_bkb_U29(
    .din0(r_V_4_i_fu_244_p0),
    .din1(r_V_4_i_fu_244_p1),
    .dout(r_V_4_i_fu_244_p2)
);

Sobel_filter_mac_cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 20 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
Sobel_filter_mac_cud_U30(
    .din0(grp_fu_250_p0),
    .din1(grp_fu_250_p1),
    .din2(r_V_4_i_reg_296),
    .dout(grp_fu_250_p3)
);

Sobel_filter_mac_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 23 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 30 ))
Sobel_filter_mac_dEe_U31(
    .din0(grp_fu_258_p0),
    .din1(grp_fu_258_p1),
    .din2(grp_fu_258_p2),
    .dout(grp_fu_258_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((exitcond5_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((exitcond5_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((exitcond5_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_reg_125 <= i_1_reg_272;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_125 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_fu_159_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_reg_136 <= j_1_fu_165_p2;
    end else if (((exitcond5_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_136 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_reg_277 <= exitcond_fu_159_p2;
        exitcond_reg_277_pp0_iter1_reg <= exitcond_reg_277;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_272 <= i_1_fu_153_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_reg_277 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Val2_7_reg_306 <= {{grp_fu_258_p3[29:22]}};
        tmp_85_reg_311 <= grp_fu_258_p3[32'd21];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_reg_277 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_V_1_reg_301 <= grp_fu_258_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_fu_159_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_V_4_i_reg_296 <= r_V_4_i_fu_244_p2;
        tmp_89_reg_286 <= p_src_data_stream_0_V;
        tmp_90_reg_291 <= p_src_data_stream_1_V;
    end
end

always @ (*) begin
    if ((exitcond_fu_159_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond5_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond5_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_277_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_dst_data_stream_V_blk_n = p_dst_data_stream_V_full_n;
    end else begin
        p_dst_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_reg_277_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        p_dst_data_stream_V_write = 1'b1;
    end else begin
        p_dst_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond5_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (exitcond_fu_159_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (exitcond_fu_159_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((exitcond_reg_277_pp0_iter1_reg == 1'd0) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((exitcond_reg_277_pp0_iter1_reg == 1'd0) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((exitcond_reg_277_pp0_iter1_reg == 1'd0) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = ((exitcond_reg_277_pp0_iter1_reg == 1'd0) & (p_dst_data_stream_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign exitcond5_fu_147_p2 = ((i_reg_125 == 10'd720) ? 1'b1 : 1'b0);

assign exitcond_fu_159_p2 = ((j_reg_136 == 11'd1280) ? 1'b1 : 1'b0);

assign grp_fu_250_p0 = grp_fu_250_p00;

assign grp_fu_250_p00 = tmp_89_reg_286;

assign grp_fu_250_p1 = 28'd478150;

assign grp_fu_258_p0 = grp_fu_258_p00;

assign grp_fu_258_p00 = tmp_90_reg_291;

assign grp_fu_258_p1 = 30'd2462056;

assign grp_fu_258_p2 = grp_fu_258_p20;

assign grp_fu_258_p20 = grp_fu_250_p3;

assign i_1_fu_153_p2 = (i_reg_125 + 10'd1);

assign j_1_fu_165_p2 = (j_reg_136 + 11'd1);

assign not_carry_fu_229_p2 = (tmp_87_fu_215_p3 | p_Result_1_i_i_i_n_fu_223_p2);

assign p_Result_1_i_i_i_n_fu_223_p2 = (tmp_86_fu_203_p3 ^ 1'd1);

assign p_Val2_8_fu_210_p2 = (p_Val2_7_reg_306 + tmp_1_i_i_i_fu_200_p1);

assign p_dst_data_stream_V_din = ((not_carry_fu_229_p2[0:0] === 1'b1) ? p_Val2_8_fu_210_p2 : 8'd255);

assign r_V_4_i_fu_244_p0 = r_V_4_i_fu_244_p00;

assign r_V_4_i_fu_244_p00 = p_src_data_stream_2_V;

assign r_V_4_i_fu_244_p1 = 29'd1254096;

assign tmp_1_i_i_i_fu_200_p1 = tmp_85_reg_311;

assign tmp_86_fu_203_p3 = r_V_1_reg_301[32'd29];

assign tmp_87_fu_215_p3 = p_Val2_8_fu_210_p2[32'd7];

endmodule //CvtColor_1