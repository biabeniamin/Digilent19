// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Adder2_HH_
#define _Adder2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Adder2_CONTROL_BUS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_CONTROL_BUS_ADDR_WIDTH = 7,
         unsigned int C_S_AXI_CONTROL_BUS_DATA_WIDTH = 32>
struct Adder2 : public sc_module {
    // Port declarations 38
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<32> > INPUT_STREAM_TDATA;
    sc_in< sc_logic > INPUT_STREAM_TVALID;
    sc_out< sc_logic > INPUT_STREAM_TREADY;
    sc_in< sc_lv<4> > INPUT_STREAM_TKEEP;
    sc_in< sc_lv<4> > INPUT_STREAM_TSTRB;
    sc_in< sc_lv<2> > INPUT_STREAM_TUSER;
    sc_in< sc_lv<1> > INPUT_STREAM_TLAST;
    sc_in< sc_lv<5> > INPUT_STREAM_TID;
    sc_in< sc_lv<6> > INPUT_STREAM_TDEST;
    sc_in< sc_lv<32> > LAST_STREAM_TDATA;
    sc_in< sc_logic > LAST_STREAM_TVALID;
    sc_out< sc_logic > LAST_STREAM_TREADY;
    sc_in< sc_lv<4> > LAST_STREAM_TKEEP;
    sc_in< sc_lv<4> > LAST_STREAM_TSTRB;
    sc_in< sc_lv<2> > LAST_STREAM_TUSER;
    sc_in< sc_lv<1> > LAST_STREAM_TLAST;
    sc_in< sc_lv<5> > LAST_STREAM_TID;
    sc_in< sc_lv<6> > LAST_STREAM_TDEST;
    sc_in< sc_logic > s_axi_CONTROL_BUS_AWVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_AWREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_ADDR_WIDTH> > s_axi_CONTROL_BUS_AWADDR;
    sc_in< sc_logic > s_axi_CONTROL_BUS_WVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_WREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH> > s_axi_CONTROL_BUS_WDATA;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH/8> > s_axi_CONTROL_BUS_WSTRB;
    sc_in< sc_logic > s_axi_CONTROL_BUS_ARVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_ARREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_ADDR_WIDTH> > s_axi_CONTROL_BUS_ARADDR;
    sc_out< sc_logic > s_axi_CONTROL_BUS_RVALID;
    sc_in< sc_logic > s_axi_CONTROL_BUS_RREADY;
    sc_out< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH> > s_axi_CONTROL_BUS_RDATA;
    sc_out< sc_lv<2> > s_axi_CONTROL_BUS_RRESP;
    sc_out< sc_logic > s_axi_CONTROL_BUS_BVALID;
    sc_in< sc_logic > s_axi_CONTROL_BUS_BREADY;
    sc_out< sc_lv<2> > s_axi_CONTROL_BUS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;


    // Module declarations
    Adder2(sc_module_name name);
    SC_HAS_PROCESS(Adder2);

    ~Adder2();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    Adder2_CONTROL_BUS_s_axi<C_S_AXI_CONTROL_BUS_ADDR_WIDTH,C_S_AXI_CONTROL_BUS_DATA_WIDTH>* Adder2_CONTROL_BUS_s_axi_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_logic > agg_result_a_ap_vld;
    sc_signal< sc_logic > agg_result_b_ap_vld;
    sc_signal< sc_logic > agg_result_c_ap_vld;
    sc_signal< sc_lv<32> > agg_result_d;
    sc_signal< sc_logic > agg_result_d_ap_vld;
    sc_signal< sc_lv<32> > agg_result_e;
    sc_signal< sc_logic > agg_result_e_ap_vld;
    sc_signal< sc_logic > agg_result_f_ap_vld;
    sc_signal< sc_lv<32> > INPUT_STREAM_V_data_V_0_data_out;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_vld_in;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_vld_out;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_ack_in;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_ack_out;
    sc_signal< sc_lv<32> > INPUT_STREAM_V_data_V_0_payload_A;
    sc_signal< sc_lv<32> > INPUT_STREAM_V_data_V_0_payload_B;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_sel_rd;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_sel_wr;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_sel;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_load_A;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_load_B;
    sc_signal< sc_lv<2> > INPUT_STREAM_V_data_V_0_state;
    sc_signal< sc_logic > INPUT_STREAM_V_data_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_last_V_0_data_out;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_vld_in;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_vld_out;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_ack_in;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_ack_out;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_last_V_0_payload_A;
    sc_signal< sc_lv<1> > INPUT_STREAM_V_last_V_0_payload_B;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_sel_rd;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_sel_wr;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_sel;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_load_A;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_load_B;
    sc_signal< sc_lv<2> > INPUT_STREAM_V_last_V_0_state;
    sc_signal< sc_logic > INPUT_STREAM_V_last_V_0_state_cmp_full;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_vld_in;
    sc_signal< sc_logic > INPUT_STREAM_V_dest_V_0_ack_out;
    sc_signal< sc_lv<2> > INPUT_STREAM_V_dest_V_0_state;
    sc_signal< sc_lv<32> > LAST_STREAM_V_data_V_0_data_out;
    sc_signal< sc_logic > LAST_STREAM_V_data_V_0_vld_in;
    sc_signal< sc_logic > LAST_STREAM_V_data_V_0_vld_out;
    sc_signal< sc_logic > LAST_STREAM_V_data_V_0_ack_in;
    sc_signal< sc_logic > LAST_STREAM_V_data_V_0_ack_out;
    sc_signal< sc_lv<32> > LAST_STREAM_V_data_V_0_payload_A;
    sc_signal< sc_lv<32> > LAST_STREAM_V_data_V_0_payload_B;
    sc_signal< sc_logic > LAST_STREAM_V_data_V_0_sel_rd;
    sc_signal< sc_logic > LAST_STREAM_V_data_V_0_sel_wr;
    sc_signal< sc_logic > LAST_STREAM_V_data_V_0_sel;
    sc_signal< sc_logic > LAST_STREAM_V_data_V_0_load_A;
    sc_signal< sc_logic > LAST_STREAM_V_data_V_0_load_B;
    sc_signal< sc_lv<2> > LAST_STREAM_V_data_V_0_state;
    sc_signal< sc_logic > LAST_STREAM_V_data_V_0_state_cmp_full;
    sc_signal< sc_logic > LAST_STREAM_V_dest_V_0_vld_in;
    sc_signal< sc_logic > LAST_STREAM_V_dest_V_0_ack_out;
    sc_signal< sc_lv<2> > LAST_STREAM_V_dest_V_0_state;
    sc_signal< sc_lv<32> > searched;
    sc_signal< sc_logic > INPUT_STREAM_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_fu_283_p2;
    sc_signal< sc_logic > LAST_STREAM_TDATA_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<1> > tmp_reg_619;
    sc_signal< sc_lv<23> > in1Count_reg_205;
    sc_signal< sc_lv<23> > in1Count_reg_205_pp0_iter1_reg;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<64> > p_0_reg_217;
    sc_signal< sc_lv<32> > differentBytes_reg_229;
    sc_signal< sc_lv<32> > suma_reg_241;
    sc_signal< sc_lv<1> > tmp_reg_619_pp0_iter1_reg;
    sc_signal< sc_lv<23> > in1Count_3_fu_289_p2;
    sc_signal< sc_lv<23> > in1Count_3_reg_623;
    sc_signal< sc_lv<23> > in1Count_3_reg_623_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_data_V_reg_629;
    sc_signal< sc_lv<1> > tmp_last_V_reg_634;
    sc_signal< sc_lv<1> > tmp_last_V_reg_634_pp0_iter1_reg;
    sc_signal< sc_lv<8> > tmp_2_fu_303_p1;
    sc_signal< sc_lv<8> > tmp_2_reg_638;
    sc_signal< sc_lv<8> > tmp_8_1_cast_reg_643;
    sc_signal< sc_lv<8> > tmp_8_2_cast_reg_648;
    sc_signal< sc_lv<8> > tmp_1_reg_653;
    sc_signal< sc_lv<1> > tmp_3_fu_345_p2;
    sc_signal< sc_lv<1> > tmp_3_reg_658;
    sc_signal< sc_lv<10> > tmp3_fu_536_p2;
    sc_signal< sc_lv<10> > tmp3_reg_665;
    sc_signal< sc_lv<10> > tmp5_fu_542_p2;
    sc_signal< sc_lv<10> > tmp5_reg_670;
    sc_signal< sc_lv<64> > sum_V_1_fu_576_p3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<32> > differentBytes_1_fu_583_p3;
    sc_signal< sc_lv<32> > suma_2_fu_590_p3;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< bool > ap_predicate_tran4to5_state2;
    sc_signal< sc_lv<23> > ap_phi_mux_in1Count_phi_fu_209_p4;
    sc_signal< sc_lv<64> > lhs_V_reg_252;
    sc_signal< sc_lv<32> > differentBytes_2_reg_262;
    sc_signal< sc_lv<23> > in1Count_1_reg_273;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > in1Count_1_cast_fu_597_p1;
    sc_signal< sc_lv<8> > tmp_6_fu_341_p1;
    sc_signal< sc_lv<9> > phitmp2_cast_fu_353_p1;
    sc_signal< sc_lv<9> > phitmp1_cast_fu_350_p1;
    sc_signal< sc_lv<9> > diff_fu_357_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_363_p3;
    sc_signal< sc_lv<9> > diff_1_fu_371_p2;
    sc_signal< sc_lv<9> > diff_2_fu_377_p3;
    sc_signal< sc_lv<8> > tmp_4_1_cast_fu_392_p4;
    sc_signal< sc_lv<9> > phitmp2_1_cast_fu_402_p1;
    sc_signal< sc_lv<9> > phitmp1_1_cast_fu_389_p1;
    sc_signal< sc_lv<9> > diff_s_fu_406_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_412_p3;
    sc_signal< sc_lv<9> > diff_1_1_fu_420_p2;
    sc_signal< sc_lv<9> > diff_2_1_fu_426_p3;
    sc_signal< sc_lv<8> > tmp_4_2_cast_fu_441_p4;
    sc_signal< sc_lv<9> > phitmp2_2_cast_fu_451_p1;
    sc_signal< sc_lv<9> > phitmp1_2_cast_fu_438_p1;
    sc_signal< sc_lv<9> > diff_4_fu_455_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_461_p3;
    sc_signal< sc_lv<9> > diff_1_2_fu_469_p2;
    sc_signal< sc_lv<9> > diff_2_2_fu_475_p3;
    sc_signal< sc_lv<8> > tmp_5_fu_490_p4;
    sc_signal< sc_lv<9> > tmp_4_3_cast_fu_500_p1;
    sc_signal< sc_lv<9> > tmp_8_3_cast_fu_487_p1;
    sc_signal< sc_lv<9> > diff_3_fu_504_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_510_p3;
    sc_signal< sc_lv<9> > diff_1_3_fu_518_p2;
    sc_signal< sc_lv<9> > diff_2_3_fu_524_p3;
    sc_signal< sc_lv<10> > diff_2_2_cast_fu_483_p1;
    sc_signal< sc_lv<10> > diff_2_1_cast_fu_434_p1;
    sc_signal< sc_lv<10> > diff_2_3_cast_fu_532_p1;
    sc_signal< sc_lv<10> > diff_2_cast_fu_385_p1;
    sc_signal< sc_lv<32> > tmp5_cast_fu_557_p1;
    sc_signal< sc_lv<32> > tmp3_cast_fu_554_p1;
    sc_signal< sc_lv<32> > tmp4_fu_560_p2;
    sc_signal< sc_lv<32> > suma_1_3_fu_566_p2;
    sc_signal< sc_lv<64> > sum_V_fu_572_p1;
    sc_signal< sc_lv<32> > differentBytes_3_fu_548_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_790;
    static const sc_lv<23> ap_const_lv23_7FBC00;
    static const sc_lv<23> ap_const_lv23_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_INPUT_STREAM_TDATA_blk_n();
    void thread_INPUT_STREAM_TREADY();
    void thread_INPUT_STREAM_V_data_V_0_ack_in();
    void thread_INPUT_STREAM_V_data_V_0_ack_out();
    void thread_INPUT_STREAM_V_data_V_0_data_out();
    void thread_INPUT_STREAM_V_data_V_0_load_A();
    void thread_INPUT_STREAM_V_data_V_0_load_B();
    void thread_INPUT_STREAM_V_data_V_0_sel();
    void thread_INPUT_STREAM_V_data_V_0_state_cmp_full();
    void thread_INPUT_STREAM_V_data_V_0_vld_in();
    void thread_INPUT_STREAM_V_data_V_0_vld_out();
    void thread_INPUT_STREAM_V_dest_V_0_ack_out();
    void thread_INPUT_STREAM_V_dest_V_0_vld_in();
    void thread_INPUT_STREAM_V_last_V_0_ack_in();
    void thread_INPUT_STREAM_V_last_V_0_ack_out();
    void thread_INPUT_STREAM_V_last_V_0_data_out();
    void thread_INPUT_STREAM_V_last_V_0_load_A();
    void thread_INPUT_STREAM_V_last_V_0_load_B();
    void thread_INPUT_STREAM_V_last_V_0_sel();
    void thread_INPUT_STREAM_V_last_V_0_state_cmp_full();
    void thread_INPUT_STREAM_V_last_V_0_vld_in();
    void thread_INPUT_STREAM_V_last_V_0_vld_out();
    void thread_LAST_STREAM_TDATA_blk_n();
    void thread_LAST_STREAM_TREADY();
    void thread_LAST_STREAM_V_data_V_0_ack_in();
    void thread_LAST_STREAM_V_data_V_0_ack_out();
    void thread_LAST_STREAM_V_data_V_0_data_out();
    void thread_LAST_STREAM_V_data_V_0_load_A();
    void thread_LAST_STREAM_V_data_V_0_load_B();
    void thread_LAST_STREAM_V_data_V_0_sel();
    void thread_LAST_STREAM_V_data_V_0_state_cmp_full();
    void thread_LAST_STREAM_V_data_V_0_vld_in();
    void thread_LAST_STREAM_V_data_V_0_vld_out();
    void thread_LAST_STREAM_V_dest_V_0_ack_out();
    void thread_LAST_STREAM_V_dest_V_0_vld_in();
    void thread_agg_result_a_ap_vld();
    void thread_agg_result_b_ap_vld();
    void thread_agg_result_c_ap_vld();
    void thread_agg_result_d();
    void thread_agg_result_d_ap_vld();
    void thread_agg_result_e();
    void thread_agg_result_e_ap_vld();
    void thread_agg_result_f_ap_vld();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_in1Count_phi_fu_209_p4();
    void thread_ap_predicate_tran4to5_state2();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_diff_1_1_fu_420_p2();
    void thread_diff_1_2_fu_469_p2();
    void thread_diff_1_3_fu_518_p2();
    void thread_diff_1_fu_371_p2();
    void thread_diff_2_1_cast_fu_434_p1();
    void thread_diff_2_1_fu_426_p3();
    void thread_diff_2_2_cast_fu_483_p1();
    void thread_diff_2_2_fu_475_p3();
    void thread_diff_2_3_cast_fu_532_p1();
    void thread_diff_2_3_fu_524_p3();
    void thread_diff_2_cast_fu_385_p1();
    void thread_diff_2_fu_377_p3();
    void thread_diff_3_fu_504_p2();
    void thread_diff_4_fu_455_p2();
    void thread_diff_fu_357_p2();
    void thread_diff_s_fu_406_p2();
    void thread_differentBytes_1_fu_583_p3();
    void thread_differentBytes_3_fu_548_p2();
    void thread_in1Count_1_cast_fu_597_p1();
    void thread_in1Count_3_fu_289_p2();
    void thread_phitmp1_1_cast_fu_389_p1();
    void thread_phitmp1_2_cast_fu_438_p1();
    void thread_phitmp1_cast_fu_350_p1();
    void thread_phitmp2_1_cast_fu_402_p1();
    void thread_phitmp2_2_cast_fu_451_p1();
    void thread_phitmp2_cast_fu_353_p1();
    void thread_sum_V_1_fu_576_p3();
    void thread_sum_V_fu_572_p1();
    void thread_suma_1_3_fu_566_p2();
    void thread_suma_2_fu_590_p3();
    void thread_tmp3_cast_fu_554_p1();
    void thread_tmp3_fu_536_p2();
    void thread_tmp4_fu_560_p2();
    void thread_tmp5_cast_fu_557_p1();
    void thread_tmp5_fu_542_p2();
    void thread_tmp_10_fu_510_p3();
    void thread_tmp_2_fu_303_p1();
    void thread_tmp_3_fu_345_p2();
    void thread_tmp_4_1_cast_fu_392_p4();
    void thread_tmp_4_2_cast_fu_441_p4();
    void thread_tmp_4_3_cast_fu_500_p1();
    void thread_tmp_5_fu_490_p4();
    void thread_tmp_6_fu_341_p1();
    void thread_tmp_7_fu_363_p3();
    void thread_tmp_8_3_cast_fu_487_p1();
    void thread_tmp_8_fu_412_p3();
    void thread_tmp_9_fu_461_p3();
    void thread_tmp_fu_283_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
