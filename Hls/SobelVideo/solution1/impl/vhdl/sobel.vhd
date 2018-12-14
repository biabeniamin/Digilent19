-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sobel is
port (
    INPUT_STREAM_TDATA : IN STD_LOGIC_VECTOR (23 downto 0);
    INPUT_STREAM_TKEEP : IN STD_LOGIC_VECTOR (2 downto 0);
    INPUT_STREAM_TSTRB : IN STD_LOGIC_VECTOR (2 downto 0);
    INPUT_STREAM_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    INPUT_STREAM_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    INPUT_STREAM_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    INPUT_STREAM_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    OUTPUT_STREAM_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
    OUTPUT_STREAM_TKEEP : OUT STD_LOGIC_VECTOR (2 downto 0);
    OUTPUT_STREAM_TSTRB : OUT STD_LOGIC_VECTOR (2 downto 0);
    OUTPUT_STREAM_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    OUTPUT_STREAM_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    OUTPUT_STREAM_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    OUTPUT_STREAM_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    INPUT_STREAM_TVALID : IN STD_LOGIC;
    INPUT_STREAM_TREADY : OUT STD_LOGIC;
    OUTPUT_STREAM_TVALID : OUT STD_LOGIC;
    OUTPUT_STREAM_TREADY : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of sobel is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "sobel,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a200tsbg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=11.000000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=816,HLS_SYN_LUT=1687,HLS_VERSION=2018_2}";
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal ap_rst_n_inv : STD_LOGIC;
    signal Block_proc_U0_ap_start : STD_LOGIC;
    signal Block_proc_U0_ap_done : STD_LOGIC;
    signal Block_proc_U0_ap_continue : STD_LOGIC;
    signal Block_proc_U0_ap_idle : STD_LOGIC;
    signal Block_proc_U0_ap_ready : STD_LOGIC;
    signal Block_proc_U0_img_0_rows_V_out_din : STD_LOGIC_VECTOR (11 downto 0);
    signal Block_proc_U0_img_0_rows_V_out_write : STD_LOGIC;
    signal Block_proc_U0_img_0_cols_V_out_din : STD_LOGIC_VECTOR (11 downto 0);
    signal Block_proc_U0_img_0_cols_V_out_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_start : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_done : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_continue : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_idle : STD_LOGIC;
    signal AXIvideo2Mat_U0_ap_ready : STD_LOGIC;
    signal AXIvideo2Mat_U0_start_out : STD_LOGIC;
    signal AXIvideo2Mat_U0_start_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_INPUT_STREAM_TREADY : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_rows_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_cols_V_read : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_data_stream_0_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal AXIvideo2Mat_U0_img_data_stream_0_V_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_data_stream_1_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal AXIvideo2Mat_U0_img_data_stream_1_V_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_data_stream_2_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal AXIvideo2Mat_U0_img_data_stream_2_V_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_rows_V_out_din : STD_LOGIC_VECTOR (11 downto 0);
    signal AXIvideo2Mat_U0_img_rows_V_out_write : STD_LOGIC;
    signal AXIvideo2Mat_U0_img_cols_V_out_din : STD_LOGIC_VECTOR (11 downto 0);
    signal AXIvideo2Mat_U0_img_cols_V_out_write : STD_LOGIC;
    signal CvtColor_1_U0_ap_start : STD_LOGIC;
    signal CvtColor_1_U0_ap_done : STD_LOGIC;
    signal CvtColor_1_U0_ap_continue : STD_LOGIC;
    signal CvtColor_1_U0_ap_idle : STD_LOGIC;
    signal CvtColor_1_U0_ap_ready : STD_LOGIC;
    signal CvtColor_1_U0_start_out : STD_LOGIC;
    signal CvtColor_1_U0_start_write : STD_LOGIC;
    signal CvtColor_1_U0_p_src_rows_V_read : STD_LOGIC;
    signal CvtColor_1_U0_p_src_cols_V_read : STD_LOGIC;
    signal CvtColor_1_U0_p_src_data_stream_0_V_read : STD_LOGIC;
    signal CvtColor_1_U0_p_src_data_stream_1_V_read : STD_LOGIC;
    signal CvtColor_1_U0_p_src_data_stream_2_V_read : STD_LOGIC;
    signal CvtColor_1_U0_p_dst_data_stream_0_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal CvtColor_1_U0_p_dst_data_stream_0_V_write : STD_LOGIC;
    signal CvtColor_1_U0_p_dst_data_stream_1_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal CvtColor_1_U0_p_dst_data_stream_1_V_write : STD_LOGIC;
    signal CvtColor_1_U0_p_dst_data_stream_2_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal CvtColor_1_U0_p_dst_data_stream_2_V_write : STD_LOGIC;
    signal CvtColor_U0_ap_start : STD_LOGIC;
    signal CvtColor_U0_ap_done : STD_LOGIC;
    signal CvtColor_U0_ap_continue : STD_LOGIC;
    signal CvtColor_U0_ap_idle : STD_LOGIC;
    signal CvtColor_U0_ap_ready : STD_LOGIC;
    signal CvtColor_U0_start_out : STD_LOGIC;
    signal CvtColor_U0_start_write : STD_LOGIC;
    signal CvtColor_U0_p_src_data_stream_0_V_read : STD_LOGIC;
    signal CvtColor_U0_p_src_data_stream_1_V_read : STD_LOGIC;
    signal CvtColor_U0_p_src_data_stream_2_V_read : STD_LOGIC;
    signal CvtColor_U0_p_dst_data_stream_0_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal CvtColor_U0_p_dst_data_stream_0_V_write : STD_LOGIC;
    signal CvtColor_U0_p_dst_data_stream_1_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal CvtColor_U0_p_dst_data_stream_1_V_write : STD_LOGIC;
    signal CvtColor_U0_p_dst_data_stream_2_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal CvtColor_U0_p_dst_data_stream_2_V_write : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_start : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_done : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_continue : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_idle : STD_LOGIC;
    signal Mat2AXIvideo_U0_ap_ready : STD_LOGIC;
    signal Mat2AXIvideo_U0_img_data_stream_0_V_read : STD_LOGIC;
    signal Mat2AXIvideo_U0_img_data_stream_1_V_read : STD_LOGIC;
    signal Mat2AXIvideo_U0_img_data_stream_2_V_read : STD_LOGIC;
    signal Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA : STD_LOGIC_VECTOR (23 downto 0);
    signal Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID : STD_LOGIC;
    signal Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP : STD_LOGIC_VECTOR (2 downto 0);
    signal Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB : STD_LOGIC_VECTOR (2 downto 0);
    signal Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_OUTPUT_STREAM_TID : STD_LOGIC_VECTOR (0 downto 0);
    signal Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sync_continue : STD_LOGIC;
    signal img_0_rows_V_c_full_n : STD_LOGIC;
    signal img_0_rows_V_c_dout : STD_LOGIC_VECTOR (11 downto 0);
    signal img_0_rows_V_c_empty_n : STD_LOGIC;
    signal img_0_cols_V_c_full_n : STD_LOGIC;
    signal img_0_cols_V_c_dout : STD_LOGIC_VECTOR (11 downto 0);
    signal img_0_cols_V_c_empty_n : STD_LOGIC;
    signal img_0_data_stream_0_full_n : STD_LOGIC;
    signal img_0_data_stream_0_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_0_data_stream_0_empty_n : STD_LOGIC;
    signal img_0_data_stream_1_full_n : STD_LOGIC;
    signal img_0_data_stream_1_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_0_data_stream_1_empty_n : STD_LOGIC;
    signal img_0_data_stream_2_full_n : STD_LOGIC;
    signal img_0_data_stream_2_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_0_data_stream_2_empty_n : STD_LOGIC;
    signal img_0_rows_V_c8_full_n : STD_LOGIC;
    signal img_0_rows_V_c8_dout : STD_LOGIC_VECTOR (11 downto 0);
    signal img_0_rows_V_c8_empty_n : STD_LOGIC;
    signal img_0_cols_V_c9_full_n : STD_LOGIC;
    signal img_0_cols_V_c9_dout : STD_LOGIC_VECTOR (11 downto 0);
    signal img_0_cols_V_c9_empty_n : STD_LOGIC;
    signal img_1_data_stream_0_full_n : STD_LOGIC;
    signal img_1_data_stream_0_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_1_data_stream_0_empty_n : STD_LOGIC;
    signal img_1_data_stream_1_full_n : STD_LOGIC;
    signal img_1_data_stream_1_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_1_data_stream_1_empty_n : STD_LOGIC;
    signal img_1_data_stream_2_full_n : STD_LOGIC;
    signal img_1_data_stream_2_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_1_data_stream_2_empty_n : STD_LOGIC;
    signal img_2_data_stream_0_full_n : STD_LOGIC;
    signal img_2_data_stream_0_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_2_data_stream_0_empty_n : STD_LOGIC;
    signal img_2_data_stream_1_full_n : STD_LOGIC;
    signal img_2_data_stream_1_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_2_data_stream_1_empty_n : STD_LOGIC;
    signal img_2_data_stream_2_full_n : STD_LOGIC;
    signal img_2_data_stream_2_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_2_data_stream_2_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal Block_proc_U0_start_full_n : STD_LOGIC;
    signal Block_proc_U0_start_write : STD_LOGIC;
    signal start_for_CvtColor_1_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_CvtColor_1_U0_full_n : STD_LOGIC;
    signal start_for_CvtColor_1_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_CvtColor_1_U0_empty_n : STD_LOGIC;
    signal start_for_CvtColor_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_CvtColor_U0_full_n : STD_LOGIC;
    signal start_for_CvtColor_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_CvtColor_U0_empty_n : STD_LOGIC;
    signal start_for_Mat2AXIvideo_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Mat2AXIvideo_U0_full_n : STD_LOGIC;
    signal start_for_Mat2AXIvideo_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Mat2AXIvideo_U0_empty_n : STD_LOGIC;
    signal Mat2AXIvideo_U0_start_full_n : STD_LOGIC;
    signal Mat2AXIvideo_U0_start_write : STD_LOGIC;

    component Block_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        img_0_rows_V_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
        img_0_rows_V_out_full_n : IN STD_LOGIC;
        img_0_rows_V_out_write : OUT STD_LOGIC;
        img_0_cols_V_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
        img_0_cols_V_out_full_n : IN STD_LOGIC;
        img_0_cols_V_out_write : OUT STD_LOGIC );
    end component;


    component AXIvideo2Mat IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        INPUT_STREAM_TDATA : IN STD_LOGIC_VECTOR (23 downto 0);
        INPUT_STREAM_TVALID : IN STD_LOGIC;
        INPUT_STREAM_TREADY : OUT STD_LOGIC;
        INPUT_STREAM_TKEEP : IN STD_LOGIC_VECTOR (2 downto 0);
        INPUT_STREAM_TSTRB : IN STD_LOGIC_VECTOR (2 downto 0);
        INPUT_STREAM_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        INPUT_STREAM_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        INPUT_STREAM_TID : IN STD_LOGIC_VECTOR (0 downto 0);
        INPUT_STREAM_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
        img_rows_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
        img_rows_V_empty_n : IN STD_LOGIC;
        img_rows_V_read : OUT STD_LOGIC;
        img_cols_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
        img_cols_V_empty_n : IN STD_LOGIC;
        img_cols_V_read : OUT STD_LOGIC;
        img_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_0_V_full_n : IN STD_LOGIC;
        img_data_stream_0_V_write : OUT STD_LOGIC;
        img_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_1_V_full_n : IN STD_LOGIC;
        img_data_stream_1_V_write : OUT STD_LOGIC;
        img_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_2_V_full_n : IN STD_LOGIC;
        img_data_stream_2_V_write : OUT STD_LOGIC;
        img_rows_V_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
        img_rows_V_out_full_n : IN STD_LOGIC;
        img_rows_V_out_write : OUT STD_LOGIC;
        img_cols_V_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
        img_cols_V_out_full_n : IN STD_LOGIC;
        img_cols_V_out_write : OUT STD_LOGIC );
    end component;


    component CvtColor_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        p_src_rows_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
        p_src_rows_V_empty_n : IN STD_LOGIC;
        p_src_rows_V_read : OUT STD_LOGIC;
        p_src_cols_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
        p_src_cols_V_empty_n : IN STD_LOGIC;
        p_src_cols_V_read : OUT STD_LOGIC;
        p_src_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_data_stream_0_V_empty_n : IN STD_LOGIC;
        p_src_data_stream_0_V_read : OUT STD_LOGIC;
        p_src_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_data_stream_1_V_empty_n : IN STD_LOGIC;
        p_src_data_stream_1_V_read : OUT STD_LOGIC;
        p_src_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_data_stream_2_V_empty_n : IN STD_LOGIC;
        p_src_data_stream_2_V_read : OUT STD_LOGIC;
        p_dst_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_dst_data_stream_0_V_full_n : IN STD_LOGIC;
        p_dst_data_stream_0_V_write : OUT STD_LOGIC;
        p_dst_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_dst_data_stream_1_V_full_n : IN STD_LOGIC;
        p_dst_data_stream_1_V_write : OUT STD_LOGIC;
        p_dst_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_dst_data_stream_2_V_full_n : IN STD_LOGIC;
        p_dst_data_stream_2_V_write : OUT STD_LOGIC );
    end component;


    component CvtColor IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        p_src_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_data_stream_0_V_empty_n : IN STD_LOGIC;
        p_src_data_stream_0_V_read : OUT STD_LOGIC;
        p_src_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_data_stream_1_V_empty_n : IN STD_LOGIC;
        p_src_data_stream_1_V_read : OUT STD_LOGIC;
        p_src_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_data_stream_2_V_empty_n : IN STD_LOGIC;
        p_src_data_stream_2_V_read : OUT STD_LOGIC;
        p_dst_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_dst_data_stream_0_V_full_n : IN STD_LOGIC;
        p_dst_data_stream_0_V_write : OUT STD_LOGIC;
        p_dst_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_dst_data_stream_1_V_full_n : IN STD_LOGIC;
        p_dst_data_stream_1_V_write : OUT STD_LOGIC;
        p_dst_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        p_dst_data_stream_2_V_full_n : IN STD_LOGIC;
        p_dst_data_stream_2_V_write : OUT STD_LOGIC );
    end component;


    component Mat2AXIvideo IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        img_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_0_V_empty_n : IN STD_LOGIC;
        img_data_stream_0_V_read : OUT STD_LOGIC;
        img_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_1_V_empty_n : IN STD_LOGIC;
        img_data_stream_1_V_read : OUT STD_LOGIC;
        img_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_2_V_empty_n : IN STD_LOGIC;
        img_data_stream_2_V_read : OUT STD_LOGIC;
        OUTPUT_STREAM_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
        OUTPUT_STREAM_TVALID : OUT STD_LOGIC;
        OUTPUT_STREAM_TREADY : IN STD_LOGIC;
        OUTPUT_STREAM_TKEEP : OUT STD_LOGIC_VECTOR (2 downto 0);
        OUTPUT_STREAM_TSTRB : OUT STD_LOGIC_VECTOR (2 downto 0);
        OUTPUT_STREAM_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        OUTPUT_STREAM_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        OUTPUT_STREAM_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
        OUTPUT_STREAM_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component fifo_w12_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (11 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (11 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w8_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_CvtColoeOg IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_CvtColofYi IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_Mat2AXIg8j IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    Block_proc_U0 : component Block_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Block_proc_U0_ap_start,
        ap_done => Block_proc_U0_ap_done,
        ap_continue => Block_proc_U0_ap_continue,
        ap_idle => Block_proc_U0_ap_idle,
        ap_ready => Block_proc_U0_ap_ready,
        img_0_rows_V_out_din => Block_proc_U0_img_0_rows_V_out_din,
        img_0_rows_V_out_full_n => img_0_rows_V_c_full_n,
        img_0_rows_V_out_write => Block_proc_U0_img_0_rows_V_out_write,
        img_0_cols_V_out_din => Block_proc_U0_img_0_cols_V_out_din,
        img_0_cols_V_out_full_n => img_0_cols_V_c_full_n,
        img_0_cols_V_out_write => Block_proc_U0_img_0_cols_V_out_write);

    AXIvideo2Mat_U0 : component AXIvideo2Mat
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => AXIvideo2Mat_U0_ap_start,
        start_full_n => start_for_CvtColor_1_U0_full_n,
        ap_done => AXIvideo2Mat_U0_ap_done,
        ap_continue => AXIvideo2Mat_U0_ap_continue,
        ap_idle => AXIvideo2Mat_U0_ap_idle,
        ap_ready => AXIvideo2Mat_U0_ap_ready,
        start_out => AXIvideo2Mat_U0_start_out,
        start_write => AXIvideo2Mat_U0_start_write,
        INPUT_STREAM_TDATA => INPUT_STREAM_TDATA,
        INPUT_STREAM_TVALID => INPUT_STREAM_TVALID,
        INPUT_STREAM_TREADY => AXIvideo2Mat_U0_INPUT_STREAM_TREADY,
        INPUT_STREAM_TKEEP => INPUT_STREAM_TKEEP,
        INPUT_STREAM_TSTRB => INPUT_STREAM_TSTRB,
        INPUT_STREAM_TUSER => INPUT_STREAM_TUSER,
        INPUT_STREAM_TLAST => INPUT_STREAM_TLAST,
        INPUT_STREAM_TID => INPUT_STREAM_TID,
        INPUT_STREAM_TDEST => INPUT_STREAM_TDEST,
        img_rows_V_dout => img_0_rows_V_c_dout,
        img_rows_V_empty_n => img_0_rows_V_c_empty_n,
        img_rows_V_read => AXIvideo2Mat_U0_img_rows_V_read,
        img_cols_V_dout => img_0_cols_V_c_dout,
        img_cols_V_empty_n => img_0_cols_V_c_empty_n,
        img_cols_V_read => AXIvideo2Mat_U0_img_cols_V_read,
        img_data_stream_0_V_din => AXIvideo2Mat_U0_img_data_stream_0_V_din,
        img_data_stream_0_V_full_n => img_0_data_stream_0_full_n,
        img_data_stream_0_V_write => AXIvideo2Mat_U0_img_data_stream_0_V_write,
        img_data_stream_1_V_din => AXIvideo2Mat_U0_img_data_stream_1_V_din,
        img_data_stream_1_V_full_n => img_0_data_stream_1_full_n,
        img_data_stream_1_V_write => AXIvideo2Mat_U0_img_data_stream_1_V_write,
        img_data_stream_2_V_din => AXIvideo2Mat_U0_img_data_stream_2_V_din,
        img_data_stream_2_V_full_n => img_0_data_stream_2_full_n,
        img_data_stream_2_V_write => AXIvideo2Mat_U0_img_data_stream_2_V_write,
        img_rows_V_out_din => AXIvideo2Mat_U0_img_rows_V_out_din,
        img_rows_V_out_full_n => img_0_rows_V_c8_full_n,
        img_rows_V_out_write => AXIvideo2Mat_U0_img_rows_V_out_write,
        img_cols_V_out_din => AXIvideo2Mat_U0_img_cols_V_out_din,
        img_cols_V_out_full_n => img_0_cols_V_c9_full_n,
        img_cols_V_out_write => AXIvideo2Mat_U0_img_cols_V_out_write);

    CvtColor_1_U0 : component CvtColor_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => CvtColor_1_U0_ap_start,
        start_full_n => start_for_CvtColor_U0_full_n,
        ap_done => CvtColor_1_U0_ap_done,
        ap_continue => CvtColor_1_U0_ap_continue,
        ap_idle => CvtColor_1_U0_ap_idle,
        ap_ready => CvtColor_1_U0_ap_ready,
        start_out => CvtColor_1_U0_start_out,
        start_write => CvtColor_1_U0_start_write,
        p_src_rows_V_dout => img_0_rows_V_c8_dout,
        p_src_rows_V_empty_n => img_0_rows_V_c8_empty_n,
        p_src_rows_V_read => CvtColor_1_U0_p_src_rows_V_read,
        p_src_cols_V_dout => img_0_cols_V_c9_dout,
        p_src_cols_V_empty_n => img_0_cols_V_c9_empty_n,
        p_src_cols_V_read => CvtColor_1_U0_p_src_cols_V_read,
        p_src_data_stream_0_V_dout => img_0_data_stream_0_dout,
        p_src_data_stream_0_V_empty_n => img_0_data_stream_0_empty_n,
        p_src_data_stream_0_V_read => CvtColor_1_U0_p_src_data_stream_0_V_read,
        p_src_data_stream_1_V_dout => img_0_data_stream_1_dout,
        p_src_data_stream_1_V_empty_n => img_0_data_stream_1_empty_n,
        p_src_data_stream_1_V_read => CvtColor_1_U0_p_src_data_stream_1_V_read,
        p_src_data_stream_2_V_dout => img_0_data_stream_2_dout,
        p_src_data_stream_2_V_empty_n => img_0_data_stream_2_empty_n,
        p_src_data_stream_2_V_read => CvtColor_1_U0_p_src_data_stream_2_V_read,
        p_dst_data_stream_0_V_din => CvtColor_1_U0_p_dst_data_stream_0_V_din,
        p_dst_data_stream_0_V_full_n => img_1_data_stream_0_full_n,
        p_dst_data_stream_0_V_write => CvtColor_1_U0_p_dst_data_stream_0_V_write,
        p_dst_data_stream_1_V_din => CvtColor_1_U0_p_dst_data_stream_1_V_din,
        p_dst_data_stream_1_V_full_n => img_1_data_stream_1_full_n,
        p_dst_data_stream_1_V_write => CvtColor_1_U0_p_dst_data_stream_1_V_write,
        p_dst_data_stream_2_V_din => CvtColor_1_U0_p_dst_data_stream_2_V_din,
        p_dst_data_stream_2_V_full_n => img_1_data_stream_2_full_n,
        p_dst_data_stream_2_V_write => CvtColor_1_U0_p_dst_data_stream_2_V_write);

    CvtColor_U0 : component CvtColor
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => CvtColor_U0_ap_start,
        start_full_n => start_for_Mat2AXIvideo_U0_full_n,
        ap_done => CvtColor_U0_ap_done,
        ap_continue => CvtColor_U0_ap_continue,
        ap_idle => CvtColor_U0_ap_idle,
        ap_ready => CvtColor_U0_ap_ready,
        start_out => CvtColor_U0_start_out,
        start_write => CvtColor_U0_start_write,
        p_src_data_stream_0_V_dout => img_1_data_stream_0_dout,
        p_src_data_stream_0_V_empty_n => img_1_data_stream_0_empty_n,
        p_src_data_stream_0_V_read => CvtColor_U0_p_src_data_stream_0_V_read,
        p_src_data_stream_1_V_dout => img_1_data_stream_1_dout,
        p_src_data_stream_1_V_empty_n => img_1_data_stream_1_empty_n,
        p_src_data_stream_1_V_read => CvtColor_U0_p_src_data_stream_1_V_read,
        p_src_data_stream_2_V_dout => img_1_data_stream_2_dout,
        p_src_data_stream_2_V_empty_n => img_1_data_stream_2_empty_n,
        p_src_data_stream_2_V_read => CvtColor_U0_p_src_data_stream_2_V_read,
        p_dst_data_stream_0_V_din => CvtColor_U0_p_dst_data_stream_0_V_din,
        p_dst_data_stream_0_V_full_n => img_2_data_stream_0_full_n,
        p_dst_data_stream_0_V_write => CvtColor_U0_p_dst_data_stream_0_V_write,
        p_dst_data_stream_1_V_din => CvtColor_U0_p_dst_data_stream_1_V_din,
        p_dst_data_stream_1_V_full_n => img_2_data_stream_1_full_n,
        p_dst_data_stream_1_V_write => CvtColor_U0_p_dst_data_stream_1_V_write,
        p_dst_data_stream_2_V_din => CvtColor_U0_p_dst_data_stream_2_V_din,
        p_dst_data_stream_2_V_full_n => img_2_data_stream_2_full_n,
        p_dst_data_stream_2_V_write => CvtColor_U0_p_dst_data_stream_2_V_write);

    Mat2AXIvideo_U0 : component Mat2AXIvideo
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Mat2AXIvideo_U0_ap_start,
        ap_done => Mat2AXIvideo_U0_ap_done,
        ap_continue => Mat2AXIvideo_U0_ap_continue,
        ap_idle => Mat2AXIvideo_U0_ap_idle,
        ap_ready => Mat2AXIvideo_U0_ap_ready,
        img_data_stream_0_V_dout => img_2_data_stream_0_dout,
        img_data_stream_0_V_empty_n => img_2_data_stream_0_empty_n,
        img_data_stream_0_V_read => Mat2AXIvideo_U0_img_data_stream_0_V_read,
        img_data_stream_1_V_dout => img_2_data_stream_1_dout,
        img_data_stream_1_V_empty_n => img_2_data_stream_1_empty_n,
        img_data_stream_1_V_read => Mat2AXIvideo_U0_img_data_stream_1_V_read,
        img_data_stream_2_V_dout => img_2_data_stream_2_dout,
        img_data_stream_2_V_empty_n => img_2_data_stream_2_empty_n,
        img_data_stream_2_V_read => Mat2AXIvideo_U0_img_data_stream_2_V_read,
        OUTPUT_STREAM_TDATA => Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA,
        OUTPUT_STREAM_TVALID => Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID,
        OUTPUT_STREAM_TREADY => OUTPUT_STREAM_TREADY,
        OUTPUT_STREAM_TKEEP => Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP,
        OUTPUT_STREAM_TSTRB => Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB,
        OUTPUT_STREAM_TUSER => Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER,
        OUTPUT_STREAM_TLAST => Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST,
        OUTPUT_STREAM_TID => Mat2AXIvideo_U0_OUTPUT_STREAM_TID,
        OUTPUT_STREAM_TDEST => Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST);

    img_0_rows_V_c_U : component fifo_w12_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_proc_U0_img_0_rows_V_out_din,
        if_full_n => img_0_rows_V_c_full_n,
        if_write => Block_proc_U0_img_0_rows_V_out_write,
        if_dout => img_0_rows_V_c_dout,
        if_empty_n => img_0_rows_V_c_empty_n,
        if_read => AXIvideo2Mat_U0_img_rows_V_read);

    img_0_cols_V_c_U : component fifo_w12_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_proc_U0_img_0_cols_V_out_din,
        if_full_n => img_0_cols_V_c_full_n,
        if_write => Block_proc_U0_img_0_cols_V_out_write,
        if_dout => img_0_cols_V_c_dout,
        if_empty_n => img_0_cols_V_c_empty_n,
        if_read => AXIvideo2Mat_U0_img_cols_V_read);

    img_0_data_stream_0_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_img_data_stream_0_V_din,
        if_full_n => img_0_data_stream_0_full_n,
        if_write => AXIvideo2Mat_U0_img_data_stream_0_V_write,
        if_dout => img_0_data_stream_0_dout,
        if_empty_n => img_0_data_stream_0_empty_n,
        if_read => CvtColor_1_U0_p_src_data_stream_0_V_read);

    img_0_data_stream_1_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_img_data_stream_1_V_din,
        if_full_n => img_0_data_stream_1_full_n,
        if_write => AXIvideo2Mat_U0_img_data_stream_1_V_write,
        if_dout => img_0_data_stream_1_dout,
        if_empty_n => img_0_data_stream_1_empty_n,
        if_read => CvtColor_1_U0_p_src_data_stream_1_V_read);

    img_0_data_stream_2_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_img_data_stream_2_V_din,
        if_full_n => img_0_data_stream_2_full_n,
        if_write => AXIvideo2Mat_U0_img_data_stream_2_V_write,
        if_dout => img_0_data_stream_2_dout,
        if_empty_n => img_0_data_stream_2_empty_n,
        if_read => CvtColor_1_U0_p_src_data_stream_2_V_read);

    img_0_rows_V_c8_U : component fifo_w12_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_img_rows_V_out_din,
        if_full_n => img_0_rows_V_c8_full_n,
        if_write => AXIvideo2Mat_U0_img_rows_V_out_write,
        if_dout => img_0_rows_V_c8_dout,
        if_empty_n => img_0_rows_V_c8_empty_n,
        if_read => CvtColor_1_U0_p_src_rows_V_read);

    img_0_cols_V_c9_U : component fifo_w12_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => AXIvideo2Mat_U0_img_cols_V_out_din,
        if_full_n => img_0_cols_V_c9_full_n,
        if_write => AXIvideo2Mat_U0_img_cols_V_out_write,
        if_dout => img_0_cols_V_c9_dout,
        if_empty_n => img_0_cols_V_c9_empty_n,
        if_read => CvtColor_1_U0_p_src_cols_V_read);

    img_1_data_stream_0_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => CvtColor_1_U0_p_dst_data_stream_0_V_din,
        if_full_n => img_1_data_stream_0_full_n,
        if_write => CvtColor_1_U0_p_dst_data_stream_0_V_write,
        if_dout => img_1_data_stream_0_dout,
        if_empty_n => img_1_data_stream_0_empty_n,
        if_read => CvtColor_U0_p_src_data_stream_0_V_read);

    img_1_data_stream_1_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => CvtColor_1_U0_p_dst_data_stream_1_V_din,
        if_full_n => img_1_data_stream_1_full_n,
        if_write => CvtColor_1_U0_p_dst_data_stream_1_V_write,
        if_dout => img_1_data_stream_1_dout,
        if_empty_n => img_1_data_stream_1_empty_n,
        if_read => CvtColor_U0_p_src_data_stream_1_V_read);

    img_1_data_stream_2_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => CvtColor_1_U0_p_dst_data_stream_2_V_din,
        if_full_n => img_1_data_stream_2_full_n,
        if_write => CvtColor_1_U0_p_dst_data_stream_2_V_write,
        if_dout => img_1_data_stream_2_dout,
        if_empty_n => img_1_data_stream_2_empty_n,
        if_read => CvtColor_U0_p_src_data_stream_2_V_read);

    img_2_data_stream_0_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => CvtColor_U0_p_dst_data_stream_0_V_din,
        if_full_n => img_2_data_stream_0_full_n,
        if_write => CvtColor_U0_p_dst_data_stream_0_V_write,
        if_dout => img_2_data_stream_0_dout,
        if_empty_n => img_2_data_stream_0_empty_n,
        if_read => Mat2AXIvideo_U0_img_data_stream_0_V_read);

    img_2_data_stream_1_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => CvtColor_U0_p_dst_data_stream_1_V_din,
        if_full_n => img_2_data_stream_1_full_n,
        if_write => CvtColor_U0_p_dst_data_stream_1_V_write,
        if_dout => img_2_data_stream_1_dout,
        if_empty_n => img_2_data_stream_1_empty_n,
        if_read => Mat2AXIvideo_U0_img_data_stream_1_V_read);

    img_2_data_stream_2_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => CvtColor_U0_p_dst_data_stream_2_V_din,
        if_full_n => img_2_data_stream_2_full_n,
        if_write => CvtColor_U0_p_dst_data_stream_2_V_write,
        if_dout => img_2_data_stream_2_dout,
        if_empty_n => img_2_data_stream_2_empty_n,
        if_read => Mat2AXIvideo_U0_img_data_stream_2_V_read);

    start_for_CvtColoeOg_U : component start_for_CvtColoeOg
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_CvtColor_1_U0_din,
        if_full_n => start_for_CvtColor_1_U0_full_n,
        if_write => AXIvideo2Mat_U0_start_write,
        if_dout => start_for_CvtColor_1_U0_dout,
        if_empty_n => start_for_CvtColor_1_U0_empty_n,
        if_read => CvtColor_1_U0_ap_ready);

    start_for_CvtColofYi_U : component start_for_CvtColofYi
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_CvtColor_U0_din,
        if_full_n => start_for_CvtColor_U0_full_n,
        if_write => CvtColor_1_U0_start_write,
        if_dout => start_for_CvtColor_U0_dout,
        if_empty_n => start_for_CvtColor_U0_empty_n,
        if_read => CvtColor_U0_ap_ready);

    start_for_Mat2AXIg8j_U : component start_for_Mat2AXIg8j
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_Mat2AXIvideo_U0_din,
        if_full_n => start_for_Mat2AXIvideo_U0_full_n,
        if_write => CvtColor_U0_start_write,
        if_dout => start_for_Mat2AXIvideo_U0_dout,
        if_empty_n => start_for_Mat2AXIvideo_U0_empty_n,
        if_read => Mat2AXIvideo_U0_ap_ready);




    AXIvideo2Mat_U0_ap_continue <= ap_const_logic_1;
    AXIvideo2Mat_U0_ap_start <= ap_start;
    Block_proc_U0_ap_continue <= ap_const_logic_1;
    Block_proc_U0_ap_start <= ap_start;
    Block_proc_U0_start_full_n <= ap_const_logic_1;
    Block_proc_U0_start_write <= ap_const_logic_0;
    CvtColor_1_U0_ap_continue <= ap_const_logic_1;
    CvtColor_1_U0_ap_start <= start_for_CvtColor_1_U0_empty_n;
    CvtColor_U0_ap_continue <= ap_const_logic_1;
    CvtColor_U0_ap_start <= start_for_CvtColor_U0_empty_n;
    INPUT_STREAM_TREADY <= AXIvideo2Mat_U0_INPUT_STREAM_TREADY;
    Mat2AXIvideo_U0_ap_continue <= ap_const_logic_1;
    Mat2AXIvideo_U0_ap_start <= start_for_Mat2AXIvideo_U0_empty_n;
    Mat2AXIvideo_U0_start_full_n <= ap_const_logic_1;
    Mat2AXIvideo_U0_start_write <= ap_const_logic_0;
    OUTPUT_STREAM_TDATA <= Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;
    OUTPUT_STREAM_TDEST <= Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;
    OUTPUT_STREAM_TID <= Mat2AXIvideo_U0_OUTPUT_STREAM_TID;
    OUTPUT_STREAM_TKEEP <= Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;
    OUTPUT_STREAM_TLAST <= Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;
    OUTPUT_STREAM_TSTRB <= Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;
    OUTPUT_STREAM_TUSER <= Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;
    OUTPUT_STREAM_TVALID <= Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;
    ap_done <= Mat2AXIvideo_U0_ap_done;
    ap_idle <= (Mat2AXIvideo_U0_ap_idle and CvtColor_U0_ap_idle and CvtColor_1_U0_ap_idle and Block_proc_U0_ap_idle and AXIvideo2Mat_U0_ap_idle);
    ap_ready <= AXIvideo2Mat_U0_ap_ready;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_continue <= ap_const_logic_1;
    ap_sync_done <= Mat2AXIvideo_U0_ap_done;
    ap_sync_ready <= AXIvideo2Mat_U0_ap_ready;
    start_for_CvtColor_1_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_CvtColor_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_Mat2AXIvideo_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;
