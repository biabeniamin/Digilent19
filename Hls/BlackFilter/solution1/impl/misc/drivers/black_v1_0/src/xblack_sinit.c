// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xblack.h"

extern XBlack_Config XBlack_ConfigTable[];

XBlack_Config *XBlack_LookupConfig(u16 DeviceId) {
	XBlack_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBLACK_NUM_INSTANCES; Index++) {
		if (XBlack_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBlack_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBlack_Initialize(XBlack *InstancePtr, u16 DeviceId) {
	XBlack_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBlack_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBlack_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif
