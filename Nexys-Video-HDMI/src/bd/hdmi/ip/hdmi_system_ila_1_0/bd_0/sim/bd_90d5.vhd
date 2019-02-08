--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_90d5.bd
--Design : bd_90d5
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_90d5 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_90d5 : entity is "bd_90d5,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_90d5,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_90d5 : entity is "hdmi_system_ila_1_0.hwdef";
end bd_90d5;

architecture STRUCTURE of bd_90d5 is
  component bd_90d5_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_90d5_ila_lib_0;
  signal clk_1 : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk, FREQ_HZ 100000000, PHASE 0";
begin
  clk_1 <= clk;
  probe0_1(0) <= probe0(0);
ila_lib: component bd_90d5_ila_lib_0
     port map (
      clk => clk_1,
      probe0(0) => probe0_1(0)
    );
end STRUCTURE;