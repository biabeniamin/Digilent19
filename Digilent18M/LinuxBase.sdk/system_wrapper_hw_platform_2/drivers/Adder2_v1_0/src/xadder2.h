// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XADDER2_H
#define XADDER2_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xadder2_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XAdder2_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XAdder2;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAdder2_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAdder2_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAdder2_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAdder2_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAdder2_Initialize(XAdder2 *InstancePtr, u16 DeviceId);
XAdder2_Config* XAdder2_LookupConfig(u16 DeviceId);
int XAdder2_CfgInitialize(XAdder2 *InstancePtr, XAdder2_Config *ConfigPtr);
#else
int XAdder2_Initialize(XAdder2 *InstancePtr, const char* InstanceName);
int XAdder2_Release(XAdder2 *InstancePtr);
#endif

void XAdder2_Start(XAdder2 *InstancePtr);
u32 XAdder2_IsDone(XAdder2 *InstancePtr);
u32 XAdder2_IsIdle(XAdder2 *InstancePtr);
u32 XAdder2_IsReady(XAdder2 *InstancePtr);
void XAdder2_EnableAutoRestart(XAdder2 *InstancePtr);
void XAdder2_DisableAutoRestart(XAdder2 *InstancePtr);

u32 XAdder2_Get_agg_result_a(XAdder2 *InstancePtr);
u32 XAdder2_Get_agg_result_a_vld(XAdder2 *InstancePtr);
u32 XAdder2_Get_agg_result_b(XAdder2 *InstancePtr);
u32 XAdder2_Get_agg_result_b_vld(XAdder2 *InstancePtr);
u32 XAdder2_Get_agg_result_c(XAdder2 *InstancePtr);
u32 XAdder2_Get_agg_result_c_vld(XAdder2 *InstancePtr);
u32 XAdder2_Get_agg_result_d(XAdder2 *InstancePtr);
u32 XAdder2_Get_agg_result_d_vld(XAdder2 *InstancePtr);
u32 XAdder2_Get_agg_result_e(XAdder2 *InstancePtr);
u32 XAdder2_Get_agg_result_e_vld(XAdder2 *InstancePtr);
u32 XAdder2_Get_agg_result_f(XAdder2 *InstancePtr);
u32 XAdder2_Get_agg_result_f_vld(XAdder2 *InstancePtr);
void XAdder2_Set_searched(XAdder2 *InstancePtr, u32 Data);
u32 XAdder2_Get_searched(XAdder2 *InstancePtr);

void XAdder2_InterruptGlobalEnable(XAdder2 *InstancePtr);
void XAdder2_InterruptGlobalDisable(XAdder2 *InstancePtr);
void XAdder2_InterruptEnable(XAdder2 *InstancePtr, u32 Mask);
void XAdder2_InterruptDisable(XAdder2 *InstancePtr, u32 Mask);
void XAdder2_InterruptClear(XAdder2 *InstancePtr, u32 Mask);
u32 XAdder2_InterruptGetEnabled(XAdder2 *InstancePtr);
u32 XAdder2_InterruptGetStatus(XAdder2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
