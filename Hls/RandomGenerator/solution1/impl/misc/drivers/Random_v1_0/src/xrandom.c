// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xrandom.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XRandom_CfgInitialize(XRandom *InstancePtr, XRandom_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XRandom_Start(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XRandom_WriteReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XRandom_IsDone(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XRandom_IsIdle(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XRandom_IsReady(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XRandom_EnableAutoRestart(XRandom *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRandom_WriteReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XRandom_DisableAutoRestart(XRandom *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRandom_WriteReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

u32 XRandom_Get_agg_result_a(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_A_DATA);
    return Data;
}

u32 XRandom_Get_agg_result_a_vld(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_A_CTRL);
    return Data & 0x1;
}

u32 XRandom_Get_agg_result_b(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_B_DATA);
    return Data;
}

u32 XRandom_Get_agg_result_b_vld(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_B_CTRL);
    return Data & 0x1;
}

u32 XRandom_Get_agg_result_c(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_C_DATA);
    return Data;
}

u32 XRandom_Get_agg_result_c_vld(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_C_CTRL);
    return Data & 0x1;
}

u32 XRandom_Get_agg_result_d(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_D_DATA);
    return Data;
}

u32 XRandom_Get_agg_result_d_vld(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_D_CTRL);
    return Data & 0x1;
}

u32 XRandom_Get_agg_result_e(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_E_DATA);
    return Data;
}

u32 XRandom_Get_agg_result_e_vld(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_E_CTRL);
    return Data & 0x1;
}

u32 XRandom_Get_agg_result_f(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_F_DATA);
    return Data;
}

u32 XRandom_Get_agg_result_f_vld(XRandom *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_AGG_RESULT_F_CTRL);
    return Data & 0x1;
}

void XRandom_InterruptGlobalEnable(XRandom *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRandom_WriteReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_GIE, 1);
}

void XRandom_InterruptGlobalDisable(XRandom *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRandom_WriteReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_GIE, 0);
}

void XRandom_InterruptEnable(XRandom *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_IER);
    XRandom_WriteReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XRandom_InterruptDisable(XRandom *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_IER);
    XRandom_WriteReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XRandom_InterruptClear(XRandom *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRandom_WriteReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XRandom_InterruptGetEnabled(XRandom *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_IER);
}

u32 XRandom_InterruptGetStatus(XRandom *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRandom_ReadReg(InstancePtr->Control_bus_BaseAddress, XRANDOM_CONTROL_BUS_ADDR_ISR);
}

