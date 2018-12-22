--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_1579.bd
--Design : bd_1579
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_1579 is
  port (
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXIS_tdest : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_1_AXIS_tid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SLOT_1_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXIS_tuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_1579 : entity is "bd_1579,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_1579,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_1579 : entity is "system_system_ila_0_1.hwdef";
end bd_1579;

architecture STRUCTURE of bd_1579 is
  component bd_1579_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_1579_ila_lib_0;
  component bd_1579_g_inst_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    slot_0_axis_tvalid : in STD_LOGIC;
    slot_0_axis_tready : in STD_LOGIC;
    slot_0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axis_tlast : in STD_LOGIC;
    slot_1_axis_tvalid : in STD_LOGIC;
    slot_1_axis_tready : in STD_LOGIC;
    slot_1_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axis_tlast : in STD_LOGIC;
    slot_1_axis_tid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    slot_1_axis_tdest : in STD_LOGIC_VECTOR ( 5 downto 0 );
    slot_1_axis_tuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axis_tvalid : out STD_LOGIC;
    m_slot_0_axis_tready : out STD_LOGIC;
    m_slot_0_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axis_tlast : out STD_LOGIC;
    m_slot_1_axis_tvalid : out STD_LOGIC;
    m_slot_1_axis_tready : out STD_LOGIC;
    m_slot_1_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_1_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_1_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_1_axis_tlast : out STD_LOGIC;
    m_slot_1_axis_tid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_slot_1_axis_tdest : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_slot_1_axis_tuser : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_1579_g_inst_0;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_TDEST : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Conn1_TID : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_TVALID : STD_LOGIC;
  signal Conn_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn_TLAST : STD_LOGIC;
  signal Conn_TREADY : STD_LOGIC;
  signal Conn_TVALID : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal net_slot_0_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axis_tkeep : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_0_axis_tlast : STD_LOGIC;
  signal net_slot_0_axis_tready : STD_LOGIC;
  signal net_slot_0_axis_tvalid : STD_LOGIC;
  signal net_slot_1_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_1_axis_tdest : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal net_slot_1_axis_tid : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal net_slot_1_axis_tkeep : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_1_axis_tlast : STD_LOGIC;
  signal net_slot_1_axis_tready : STD_LOGIC;
  signal net_slot_1_axis_tstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_1_axis_tuser : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_1_axis_tvalid : STD_LOGIC;
  signal resetn_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST";
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of SLOT_0_AXIS_tdata : signal is "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TKEEP";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of SLOT_1_AXIS_tdata : signal is "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDEST";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tid : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TID";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TKEEP";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tstrb : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TSTRB";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tuser : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TUSER";
begin
  Conn1_TDATA(31 downto 0) <= SLOT_1_AXIS_tdata(31 downto 0);
  Conn1_TDEST(5 downto 0) <= SLOT_1_AXIS_tdest(5 downto 0);
  Conn1_TID(4 downto 0) <= SLOT_1_AXIS_tid(4 downto 0);
  Conn1_TKEEP(3 downto 0) <= SLOT_1_AXIS_tkeep(3 downto 0);
  Conn1_TLAST <= SLOT_1_AXIS_tlast;
  Conn1_TREADY <= SLOT_1_AXIS_tready;
  Conn1_TSTRB(3 downto 0) <= SLOT_1_AXIS_tstrb(3 downto 0);
  Conn1_TUSER(1 downto 0) <= SLOT_1_AXIS_tuser(1 downto 0);
  Conn1_TVALID <= SLOT_1_AXIS_tvalid;
  Conn_TDATA(31 downto 0) <= SLOT_0_AXIS_tdata(31 downto 0);
  Conn_TKEEP(3 downto 0) <= SLOT_0_AXIS_tkeep(3 downto 0);
  Conn_TLAST <= SLOT_0_AXIS_tlast;
  Conn_TREADY <= SLOT_0_AXIS_tready;
  Conn_TVALID <= SLOT_0_AXIS_tvalid;
  clk_1 <= clk;
  resetn_1 <= resetn;
g_inst: component bd_1579_g_inst_0
     port map (
      aclk => clk_1,
      aresetn => resetn_1,
      m_slot_0_axis_tdata(31 downto 0) => net_slot_0_axis_tdata(31 downto 0),
      m_slot_0_axis_tkeep(3 downto 0) => net_slot_0_axis_tkeep(3 downto 0),
      m_slot_0_axis_tlast => net_slot_0_axis_tlast,
      m_slot_0_axis_tready => net_slot_0_axis_tready,
      m_slot_0_axis_tvalid => net_slot_0_axis_tvalid,
      m_slot_1_axis_tdata(31 downto 0) => net_slot_1_axis_tdata(31 downto 0),
      m_slot_1_axis_tdest(5 downto 0) => net_slot_1_axis_tdest(5 downto 0),
      m_slot_1_axis_tid(4 downto 0) => net_slot_1_axis_tid(4 downto 0),
      m_slot_1_axis_tkeep(3 downto 0) => net_slot_1_axis_tkeep(3 downto 0),
      m_slot_1_axis_tlast => net_slot_1_axis_tlast,
      m_slot_1_axis_tready => net_slot_1_axis_tready,
      m_slot_1_axis_tstrb(3 downto 0) => net_slot_1_axis_tstrb(3 downto 0),
      m_slot_1_axis_tuser(1 downto 0) => net_slot_1_axis_tuser(1 downto 0),
      m_slot_1_axis_tvalid => net_slot_1_axis_tvalid,
      slot_0_axis_tdata(31 downto 0) => Conn_TDATA(31 downto 0),
      slot_0_axis_tkeep(3 downto 0) => Conn_TKEEP(3 downto 0),
      slot_0_axis_tlast => Conn_TLAST,
      slot_0_axis_tready => Conn_TREADY,
      slot_0_axis_tvalid => Conn_TVALID,
      slot_1_axis_tdata(31 downto 0) => Conn1_TDATA(31 downto 0),
      slot_1_axis_tdest(5 downto 0) => Conn1_TDEST(5 downto 0),
      slot_1_axis_tid(4 downto 0) => Conn1_TID(4 downto 0),
      slot_1_axis_tkeep(3 downto 0) => Conn1_TKEEP(3 downto 0),
      slot_1_axis_tlast => Conn1_TLAST,
      slot_1_axis_tready => Conn1_TREADY,
      slot_1_axis_tstrb(3 downto 0) => Conn1_TSTRB(3 downto 0),
      slot_1_axis_tuser(1 downto 0) => Conn1_TUSER(1 downto 0),
      slot_1_axis_tvalid => Conn1_TVALID
    );
ila_lib: component bd_1579_ila_lib_0
     port map (
      clk => clk_1,
      probe0(31 downto 0) => net_slot_0_axis_tdata(31 downto 0),
      probe1(3 downto 0) => net_slot_0_axis_tkeep(3 downto 0),
      probe10(1 downto 0) => net_slot_1_axis_tuser(1 downto 0),
      probe11(0) => net_slot_1_axis_tvalid,
      probe12(0) => net_slot_1_axis_tready,
      probe13(0) => net_slot_1_axis_tlast,
      probe2(0) => net_slot_0_axis_tvalid,
      probe3(0) => net_slot_0_axis_tready,
      probe4(0) => net_slot_0_axis_tlast,
      probe5(31 downto 0) => net_slot_1_axis_tdata(31 downto 0),
      probe6(5 downto 0) => net_slot_1_axis_tdest(5 downto 0),
      probe7(4 downto 0) => net_slot_1_axis_tid(4 downto 0),
      probe8(3 downto 0) => net_slot_1_axis_tkeep(3 downto 0),
      probe9(3 downto 0) => net_slot_1_axis_tstrb(3 downto 0)
    );
end STRUCTURE;
