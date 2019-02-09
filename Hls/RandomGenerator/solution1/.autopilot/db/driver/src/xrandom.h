// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XRANDOM_H
#define XRANDOM_H

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
#include "xrandom_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XRandom_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XRandom;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XRandom_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XRandom_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XRandom_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XRandom_ReadReg(BaseAddress, RegOffset) \
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
int XRandom_Initialize(XRandom *InstancePtr, u16 DeviceId);
XRandom_Config* XRandom_LookupConfig(u16 DeviceId);
int XRandom_CfgInitialize(XRandom *InstancePtr, XRandom_Config *ConfigPtr);
#else
int XRandom_Initialize(XRandom *InstancePtr, const char* InstanceName);
int XRandom_Release(XRandom *InstancePtr);
#endif

void XRandom_Start(XRandom *InstancePtr);
u32 XRandom_IsDone(XRandom *InstancePtr);
u32 XRandom_IsIdle(XRandom *InstancePtr);
u32 XRandom_IsReady(XRandom *InstancePtr);
void XRandom_EnableAutoRestart(XRandom *InstancePtr);
void XRandom_DisableAutoRestart(XRandom *InstancePtr);

u32 XRandom_Get_agg_result_a(XRandom *InstancePtr);
u32 XRandom_Get_agg_result_a_vld(XRandom *InstancePtr);
u32 XRandom_Get_agg_result_b(XRandom *InstancePtr);
u32 XRandom_Get_agg_result_b_vld(XRandom *InstancePtr);
u32 XRandom_Get_agg_result_c(XRandom *InstancePtr);
u32 XRandom_Get_agg_result_c_vld(XRandom *InstancePtr);
u32 XRandom_Get_agg_result_d(XRandom *InstancePtr);
u32 XRandom_Get_agg_result_d_vld(XRandom *InstancePtr);
u32 XRandom_Get_agg_result_e(XRandom *InstancePtr);
u32 XRandom_Get_agg_result_e_vld(XRandom *InstancePtr);
u32 XRandom_Get_agg_result_f(XRandom *InstancePtr);
u32 XRandom_Get_agg_result_f_vld(XRandom *InstancePtr);

void XRandom_InterruptGlobalEnable(XRandom *InstancePtr);
void XRandom_InterruptGlobalDisable(XRandom *InstancePtr);
void XRandom_InterruptEnable(XRandom *InstancePtr, u32 Mask);
void XRandom_InterruptDisable(XRandom *InstancePtr, u32 Mask);
void XRandom_InterruptClear(XRandom *InstancePtr, u32 Mask);
u32 XRandom_InterruptGetEnabled(XRandom *InstancePtr);
u32 XRandom_InterruptGetStatus(XRandom *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
