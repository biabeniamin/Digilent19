-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:Random:1.0
-- IP Revision: 1903011246

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_Random_0_0 IS
  PORT (
    s_axi_CONTROL_BUS_AWADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s_axi_CONTROL_BUS_AWVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_AWREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CONTROL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CONTROL_BUS_WVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_WREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CONTROL_BUS_BVALID : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_BREADY : IN STD_LOGIC;
    s_axi_CONTROL_BUS_ARADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s_axi_CONTROL_BUS_ARVALID : IN STD_LOGIC;
    s_axi_CONTROL_BUS_ARREADY : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CONTROL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CONTROL_BUS_RVALID : OUT STD_LOGIC;
    s_axi_CONTROL_BUS_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    INPUT_STREAM_TVALID : IN STD_LOGIC;
    INPUT_STREAM_TREADY : OUT STD_LOGIC;
    INPUT_STREAM_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    INPUT_STREAM_TDEST : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    INPUT_STREAM_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    INPUT_STREAM_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    INPUT_STREAM_TUSER : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    INPUT_STREAM_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    INPUT_STREAM_TID : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    temperature_V : IN STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END system_Random_0_0;

ARCHITECTURE system_Random_0_0_arch OF system_Random_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_Random_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Random IS
    GENERIC (
      C_S_AXI_CONTROL_BUS_ADDR_WIDTH : INTEGER;
      C_S_AXI_CONTROL_BUS_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_CONTROL_BUS_AWADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s_axi_CONTROL_BUS_AWVALID : IN STD_LOGIC;
      s_axi_CONTROL_BUS_AWREADY : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CONTROL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_CONTROL_BUS_WVALID : IN STD_LOGIC;
      s_axi_CONTROL_BUS_WREADY : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CONTROL_BUS_BVALID : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_BREADY : IN STD_LOGIC;
      s_axi_CONTROL_BUS_ARADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s_axi_CONTROL_BUS_ARVALID : IN STD_LOGIC;
      s_axi_CONTROL_BUS_ARREADY : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CONTROL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CONTROL_BUS_RVALID : OUT STD_LOGIC;
      s_axi_CONTROL_BUS_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      INPUT_STREAM_TVALID : IN STD_LOGIC;
      INPUT_STREAM_TREADY : OUT STD_LOGIC;
      INPUT_STREAM_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      INPUT_STREAM_TDEST : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      INPUT_STREAM_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      INPUT_STREAM_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      INPUT_STREAM_TUSER : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      INPUT_STREAM_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      INPUT_STREAM_TID : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      temperature_V : IN STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
  END COMPONENT Random;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_Random_0_0_arch: ARCHITECTURE IS "Random,Vivado 2018.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_Random_0_0_arch : ARCHITECTURE IS "system_Random_0_0,Random,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_Random_0_0_arch: ARCHITECTURE IS "system_Random_0_0,Random,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=Random,x_ipVersion=1.0,x_ipCoreRevision=1903011246,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_BUS_ADDR_WIDTH=7,C_S_AXI_CONTROL_BUS_DATA_WIDTH=32}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF system_Random_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF temperature_V: SIGNAL IS "XIL_INTERFACENAME temperature_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}}" & 
" value false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF temperature_V: SIGNAL IS "xilinx.com:signal:data:1.0 temperature_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF INPUT_STREAM_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 INPUT_STREAM TID";
  ATTRIBUTE X_INTERFACE_INFO OF INPUT_STREAM_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 INPUT_STREAM TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF INPUT_STREAM_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 INPUT_STREAM TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF INPUT_STREAM_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 INPUT_STREAM TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF INPUT_STREAM_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 INPUT_STREAM TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF INPUT_STREAM_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 INPUT_STREAM TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF INPUT_STREAM_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 INPUT_STREAM TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF INPUT_STREAM_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 INPUT_STREAM TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF INPUT_STREAM_TVALID: SIGNAL IS "XIL_INTERFACENAME INPUT_STREAM, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF INPUT_STREAM_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 INPUT_STREAM TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CONTROL_BUS:INPUT_STREAM, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0" & 
".000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_CONTROL_BUS_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_CONTROL_BUS, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 1000000" & 
"00, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CONTROL_BUS_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWADDR";
BEGIN
  U0 : Random
    GENERIC MAP (
      C_S_AXI_CONTROL_BUS_ADDR_WIDTH => 7,
      C_S_AXI_CONTROL_BUS_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_CONTROL_BUS_AWADDR => s_axi_CONTROL_BUS_AWADDR,
      s_axi_CONTROL_BUS_AWVALID => s_axi_CONTROL_BUS_AWVALID,
      s_axi_CONTROL_BUS_AWREADY => s_axi_CONTROL_BUS_AWREADY,
      s_axi_CONTROL_BUS_WDATA => s_axi_CONTROL_BUS_WDATA,
      s_axi_CONTROL_BUS_WSTRB => s_axi_CONTROL_BUS_WSTRB,
      s_axi_CONTROL_BUS_WVALID => s_axi_CONTROL_BUS_WVALID,
      s_axi_CONTROL_BUS_WREADY => s_axi_CONTROL_BUS_WREADY,
      s_axi_CONTROL_BUS_BRESP => s_axi_CONTROL_BUS_BRESP,
      s_axi_CONTROL_BUS_BVALID => s_axi_CONTROL_BUS_BVALID,
      s_axi_CONTROL_BUS_BREADY => s_axi_CONTROL_BUS_BREADY,
      s_axi_CONTROL_BUS_ARADDR => s_axi_CONTROL_BUS_ARADDR,
      s_axi_CONTROL_BUS_ARVALID => s_axi_CONTROL_BUS_ARVALID,
      s_axi_CONTROL_BUS_ARREADY => s_axi_CONTROL_BUS_ARREADY,
      s_axi_CONTROL_BUS_RDATA => s_axi_CONTROL_BUS_RDATA,
      s_axi_CONTROL_BUS_RRESP => s_axi_CONTROL_BUS_RRESP,
      s_axi_CONTROL_BUS_RVALID => s_axi_CONTROL_BUS_RVALID,
      s_axi_CONTROL_BUS_RREADY => s_axi_CONTROL_BUS_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      INPUT_STREAM_TVALID => INPUT_STREAM_TVALID,
      INPUT_STREAM_TREADY => INPUT_STREAM_TREADY,
      INPUT_STREAM_TDATA => INPUT_STREAM_TDATA,
      INPUT_STREAM_TDEST => INPUT_STREAM_TDEST,
      INPUT_STREAM_TKEEP => INPUT_STREAM_TKEEP,
      INPUT_STREAM_TSTRB => INPUT_STREAM_TSTRB,
      INPUT_STREAM_TUSER => INPUT_STREAM_TUSER,
      INPUT_STREAM_TLAST => INPUT_STREAM_TLAST,
      INPUT_STREAM_TID => INPUT_STREAM_TID,
      temperature_V => temperature_V
    );
END system_Random_0_0_arch;
