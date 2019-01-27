// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Sobel_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Sobel_1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Sobel_1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> Sobel_1::ap_ST_fsm_state1 = "1";
const sc_lv<2> Sobel_1::ap_ST_fsm_state2 = "10";
const sc_lv<32> Sobel_1::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> Sobel_1::ap_const_lv32_1 = "1";
const sc_lv<2> Sobel_1::ap_const_lv2_2 = "10";
const sc_lv<2> Sobel_1::ap_const_lv2_3 = "11";
const sc_lv<3> Sobel_1::ap_const_lv3_0 = "000";
const sc_lv<4> Sobel_1::ap_const_lv4_0 = "0000";
const sc_lv<2> Sobel_1::ap_const_lv2_1 = "1";
const sc_lv<3> Sobel_1::ap_const_lv3_2 = "10";
const bool Sobel_1::ap_const_boolean_1 = true;

Sobel_1::Sobel_1(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_Filter2D_fu_52 = new Filter2D("grp_Filter2D_fu_52");
    grp_Filter2D_fu_52->ap_clk(ap_clk);
    grp_Filter2D_fu_52->ap_rst(ap_rst);
    grp_Filter2D_fu_52->ap_start(grp_Filter2D_fu_52_ap_start);
    grp_Filter2D_fu_52->ap_done(grp_Filter2D_fu_52_ap_done);
    grp_Filter2D_fu_52->ap_idle(grp_Filter2D_fu_52_ap_idle);
    grp_Filter2D_fu_52->ap_ready(grp_Filter2D_fu_52_ap_ready);
    grp_Filter2D_fu_52->p_src_data_stream_V_dout(p_src_data_stream_V_dout);
    grp_Filter2D_fu_52->p_src_data_stream_V_empty_n(p_src_data_stream_V_empty_n);
    grp_Filter2D_fu_52->p_src_data_stream_V_read(grp_Filter2D_fu_52_p_src_data_stream_V_read);
    grp_Filter2D_fu_52->p_dst_data_stream_V_din(grp_Filter2D_fu_52_p_dst_data_stream_V_din);
    grp_Filter2D_fu_52->p_dst_data_stream_V_full_n(p_dst_data_stream_V_full_n);
    grp_Filter2D_fu_52->p_dst_data_stream_V_write(grp_Filter2D_fu_52_p_dst_data_stream_V_write);
    grp_Filter2D_fu_52->p_kernel_val_0_V_1_read(ap_var_for_const0);
    grp_Filter2D_fu_52->p_kernel_val_0_V_2_read(ap_var_for_const1);
    grp_Filter2D_fu_52->p_kernel_val_1_V_0_read(ap_var_for_const2);
    grp_Filter2D_fu_52->p_kernel_val_1_V_2_read(ap_var_for_const3);
    grp_Filter2D_fu_52->p_kernel_val_2_V_0_read(ap_var_for_const4);
    grp_Filter2D_fu_52->p_kernel_val_2_V_1_read(ap_var_for_const5);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state1_ignore_call2);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( grp_Filter2D_fu_52_ap_done );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( grp_Filter2D_fu_52_ap_done );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_grp_Filter2D_fu_52_ap_start);
    sensitive << ( grp_Filter2D_fu_52_ap_start_reg );

    SC_METHOD(thread_p_dst_data_stream_V_din);
    sensitive << ( grp_Filter2D_fu_52_p_dst_data_stream_V_din );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_dst_data_stream_V_write);
    sensitive << ( grp_Filter2D_fu_52_p_dst_data_stream_V_write );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_src_data_stream_V_read);
    sensitive << ( grp_Filter2D_fu_52_p_src_data_stream_V_read );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( grp_Filter2D_fu_52_ap_done );
    sensitive << ( ap_CS_fsm_state2 );

    SC_THREAD(thread_ap_var_for_const0);

    SC_THREAD(thread_ap_var_for_const1);

    SC_THREAD(thread_ap_var_for_const2);

    SC_THREAD(thread_ap_var_for_const3);

    SC_THREAD(thread_ap_var_for_const4);

    SC_THREAD(thread_ap_var_for_const5);

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "01";
    grp_Filter2D_fu_52_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Sobel_1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, p_src_data_stream_V_dout, "(port)p_src_data_stream_V_dout");
    sc_trace(mVcdFile, p_src_data_stream_V_empty_n, "(port)p_src_data_stream_V_empty_n");
    sc_trace(mVcdFile, p_src_data_stream_V_read, "(port)p_src_data_stream_V_read");
    sc_trace(mVcdFile, p_dst_data_stream_V_din, "(port)p_dst_data_stream_V_din");
    sc_trace(mVcdFile, p_dst_data_stream_V_full_n, "(port)p_dst_data_stream_V_full_n");
    sc_trace(mVcdFile, p_dst_data_stream_V_write, "(port)p_dst_data_stream_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, grp_Filter2D_fu_52_ap_start, "grp_Filter2D_fu_52_ap_start");
    sc_trace(mVcdFile, grp_Filter2D_fu_52_ap_done, "grp_Filter2D_fu_52_ap_done");
    sc_trace(mVcdFile, grp_Filter2D_fu_52_ap_idle, "grp_Filter2D_fu_52_ap_idle");
    sc_trace(mVcdFile, grp_Filter2D_fu_52_ap_ready, "grp_Filter2D_fu_52_ap_ready");
    sc_trace(mVcdFile, grp_Filter2D_fu_52_p_src_data_stream_V_read, "grp_Filter2D_fu_52_p_src_data_stream_V_read");
    sc_trace(mVcdFile, grp_Filter2D_fu_52_p_dst_data_stream_V_din, "grp_Filter2D_fu_52_p_dst_data_stream_V_din");
    sc_trace(mVcdFile, grp_Filter2D_fu_52_p_dst_data_stream_V_write, "grp_Filter2D_fu_52_p_dst_data_stream_V_write");
    sc_trace(mVcdFile, grp_Filter2D_fu_52_ap_start_reg, "grp_Filter2D_fu_52_ap_start_reg");
    sc_trace(mVcdFile, ap_block_state1_ignore_call2, "ap_block_state1_ignore_call2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
#endif

    }
}

Sobel_1::~Sobel_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete grp_Filter2D_fu_52;
}

void Sobel_1::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_lv2_2;
}

void Sobel_1::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_lv2_3;
}

void Sobel_1::thread_ap_var_for_const2() {
    ap_var_for_const2 = ap_const_lv3_0;
}

void Sobel_1::thread_ap_var_for_const3() {
    ap_var_for_const3 = ap_const_lv4_0;
}

void Sobel_1::thread_ap_var_for_const4() {
    ap_var_for_const4 = ap_const_lv2_1;
}

void Sobel_1::thread_ap_var_for_const5() {
    ap_var_for_const5 = ap_const_lv3_2;
}

void Sobel_1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(grp_Filter2D_fu_52_ap_done.read(), ap_const_logic_1) && 
                    esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_Filter2D_fu_52_ap_start_reg = ap_const_logic_0;
    } else {
        if ((!(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
            grp_Filter2D_fu_52_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_Filter2D_fu_52_ap_ready.read())) {
            grp_Filter2D_fu_52_ap_start_reg = ap_const_logic_0;
        }
    }
}

void Sobel_1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Sobel_1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void Sobel_1::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void Sobel_1::thread_ap_block_state1_ignore_call2() {
    ap_block_state1_ignore_call2 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void Sobel_1::thread_ap_done() {
    if ((esl_seteq<1,1,1>(grp_Filter2D_fu_52_ap_done.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Sobel_1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Sobel_1::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(grp_Filter2D_fu_52_ap_done.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Sobel_1::thread_grp_Filter2D_fu_52_ap_start() {
    grp_Filter2D_fu_52_ap_start = grp_Filter2D_fu_52_ap_start_reg.read();
}

void Sobel_1::thread_p_dst_data_stream_V_din() {
    p_dst_data_stream_V_din = grp_Filter2D_fu_52_p_dst_data_stream_V_din.read();
}

void Sobel_1::thread_p_dst_data_stream_V_write() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        p_dst_data_stream_V_write = grp_Filter2D_fu_52_p_dst_data_stream_V_write.read();
    } else {
        p_dst_data_stream_V_write = ap_const_logic_0;
    }
}

void Sobel_1::thread_p_src_data_stream_V_read() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        p_src_data_stream_V_read = grp_Filter2D_fu_52_p_src_data_stream_V_read.read();
    } else {
        p_src_data_stream_V_read = ap_const_logic_0;
    }
}

void Sobel_1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((!(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(grp_Filter2D_fu_52_ap_done.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}

