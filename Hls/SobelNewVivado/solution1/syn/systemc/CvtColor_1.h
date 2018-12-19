// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _CvtColor_1_HH_
#define _CvtColor_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "SobelFilter_mul_mbkb.h"
#include "SobelFilter_mac_mcud.h"
#include "SobelFilter_mac_mdEe.h"

namespace ap_rtl {

struct CvtColor_1 : public sc_module {
    // Port declarations 24
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > p_src_data_stream_0_V_dout;
    sc_in< sc_logic > p_src_data_stream_0_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_0_V_read;
    sc_in< sc_lv<8> > p_src_data_stream_1_V_dout;
    sc_in< sc_logic > p_src_data_stream_1_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_1_V_read;
    sc_in< sc_lv<8> > p_src_data_stream_2_V_dout;
    sc_in< sc_logic > p_src_data_stream_2_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_2_V_read;
    sc_out< sc_lv<8> > p_dst_data_stream_0_V_din;
    sc_in< sc_logic > p_dst_data_stream_0_V_full_n;
    sc_out< sc_logic > p_dst_data_stream_0_V_write;
    sc_out< sc_lv<8> > p_dst_data_stream_1_V_din;
    sc_in< sc_logic > p_dst_data_stream_1_V_full_n;
    sc_out< sc_logic > p_dst_data_stream_1_V_write;
    sc_out< sc_lv<8> > p_dst_data_stream_2_V_din;
    sc_in< sc_logic > p_dst_data_stream_2_V_full_n;
    sc_out< sc_logic > p_dst_data_stream_2_V_write;


    // Module declarations
    CvtColor_1(sc_module_name name);
    SC_HAS_PROCESS(CvtColor_1);

    ~CvtColor_1();

    sc_trace_file* mVcdFile;

    SobelFilter_mul_mbkb<1,1,8,22,29>* SobelFilter_mul_mbkb_U15;
    SobelFilter_mac_mcud<1,1,8,20,29,29>* SobelFilter_mac_mcud_U16;
    SobelFilter_mac_mdEe<1,1,8,23,29,30>* SobelFilter_mac_mdEe_U17;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > p_src_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_72_reg_352;
    sc_signal< sc_logic > p_src_data_stream_1_V_blk_n;
    sc_signal< sc_logic > p_src_data_stream_2_V_blk_n;
    sc_signal< sc_logic > p_dst_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<1> > tmp_72_reg_352_pp0_iter3_reg;
    sc_signal< sc_logic > p_dst_data_stream_1_V_blk_n;
    sc_signal< sc_logic > p_dst_data_stream_2_V_blk_n;
    sc_signal< sc_lv<11> > j_reg_210;
    sc_signal< sc_lv<1> > tmp_s_fu_221_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > i_1_fu_227_p2;
    sc_signal< sc_lv<11> > i_1_reg_347;
    sc_signal< sc_lv<1> > tmp_72_fu_233_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter4;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > tmp_72_reg_352_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_72_reg_352_pp0_iter2_reg;
    sc_signal< sc_lv<11> > j_1_fu_239_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<8> > tmp_186_reg_361;
    sc_signal< sc_lv<8> > tmp_186_reg_361_pp0_iter2_reg;
    sc_signal< sc_lv<8> > tmp_187_reg_366;
    sc_signal< sc_lv<8> > tmp_187_reg_366_pp0_iter2_reg;
    sc_signal< sc_lv<8> > tmp_188_reg_371;
    sc_signal< sc_lv<29> > r_V_4_i_fu_319_p2;
    sc_signal< sc_lv<29> > r_V_4_i_reg_376;
    sc_signal< sc_lv<30> > grp_fu_333_p3;
    sc_signal< sc_lv<30> > r_V_1_reg_381;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<8> > p_Val2_38_reg_386;
    sc_signal< sc_lv<1> > tmp_182_reg_391;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<11> > i_reg_199;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > p_Val2_s_fu_308_p3;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<29> > grp_fu_325_p3;
    sc_signal< sc_lv<8> > tmp_1_i_i_i_fu_273_p1;
    sc_signal< sc_lv<8> > p_Val2_39_fu_283_p2;
    sc_signal< sc_lv<1> > tmp_183_fu_276_p3;
    sc_signal< sc_lv<1> > tmp_184_fu_288_p3;
    sc_signal< sc_lv<1> > p_Result_1_i_i_i_n_fu_296_p2;
    sc_signal< sc_lv<1> > not_carry_fu_302_p2;
    sc_signal< sc_lv<8> > r_V_4_i_fu_319_p0;
    sc_signal< sc_lv<22> > r_V_4_i_fu_319_p1;
    sc_signal< sc_lv<8> > grp_fu_325_p0;
    sc_signal< sc_lv<20> > grp_fu_325_p1;
    sc_signal< sc_lv<8> > grp_fu_333_p0;
    sc_signal< sc_lv<23> > grp_fu_333_p1;
    sc_signal< sc_lv<29> > grp_fu_333_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<28> > grp_fu_325_p00;
    sc_signal< sc_lv<30> > grp_fu_333_p00;
    sc_signal< sc_lv<30> > grp_fu_333_p20;
    sc_signal< sc_lv<29> > r_V_4_i_fu_319_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state8;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_438;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_780;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<29> ap_const_lv29_1322D0;
    static const sc_lv<28> ap_const_lv28_74BC6;
    static const sc_lv<30> ap_const_lv30_259168;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_block_state6_pp0_stage0_iter3();
    void thread_ap_block_state7_pp0_stage0_iter4();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_grp_fu_325_p0();
    void thread_grp_fu_325_p00();
    void thread_grp_fu_325_p1();
    void thread_grp_fu_333_p0();
    void thread_grp_fu_333_p00();
    void thread_grp_fu_333_p1();
    void thread_grp_fu_333_p2();
    void thread_grp_fu_333_p20();
    void thread_i_1_fu_227_p2();
    void thread_j_1_fu_239_p2();
    void thread_not_carry_fu_302_p2();
    void thread_p_Result_1_i_i_i_n_fu_296_p2();
    void thread_p_Val2_39_fu_283_p2();
    void thread_p_Val2_s_fu_308_p3();
    void thread_p_dst_data_stream_0_V_blk_n();
    void thread_p_dst_data_stream_0_V_din();
    void thread_p_dst_data_stream_0_V_write();
    void thread_p_dst_data_stream_1_V_blk_n();
    void thread_p_dst_data_stream_1_V_din();
    void thread_p_dst_data_stream_1_V_write();
    void thread_p_dst_data_stream_2_V_blk_n();
    void thread_p_dst_data_stream_2_V_din();
    void thread_p_dst_data_stream_2_V_write();
    void thread_p_src_data_stream_0_V_blk_n();
    void thread_p_src_data_stream_0_V_read();
    void thread_p_src_data_stream_1_V_blk_n();
    void thread_p_src_data_stream_1_V_read();
    void thread_p_src_data_stream_2_V_blk_n();
    void thread_p_src_data_stream_2_V_read();
    void thread_r_V_4_i_fu_319_p0();
    void thread_r_V_4_i_fu_319_p00();
    void thread_r_V_4_i_fu_319_p1();
    void thread_tmp_183_fu_276_p3();
    void thread_tmp_184_fu_288_p3();
    void thread_tmp_1_i_i_i_fu_273_p1();
    void thread_tmp_72_fu_233_p2();
    void thread_tmp_s_fu_221_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
