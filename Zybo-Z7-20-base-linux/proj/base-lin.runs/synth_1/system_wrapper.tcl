# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Digilent19/Zybo-Z7-20-base-linux/proj/base-lin.cache/wt [current_project]
set_property parent.project_path C:/Digilent19/Zybo-Z7-20-base-linux/proj/base-lin.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part_repo_paths C:/Xilinx/board_files [current_project]
set_property board_part digilentinc.com:zybo-z7-20:part0:1.0 [current_project]
set_property ip_repo_paths {
  c:/Digilent19/Zybo-Z7-20-base-linux/repo
  c:/Digilent19/vivado-library-master
} [current_project]
set_property ip_output_repo c:/Digilent19/Zybo-Z7-20-base-linux/repo/cache [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/hdl/system_wrapper.vhd
add_files C:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/system.bd
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_eth_0/system_axi_gpio_eth_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_eth_0/system_axi_gpio_eth_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_eth_0/system_axi_gpio_eth_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_led_0/system_axi_gpio_led_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_led_0/system_axi_gpio_led_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_led_0/system_axi_gpio_led_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_sw_btn_0/system_axi_gpio_sw_btn_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_sw_btn_0/system_axi_gpio_sw_btn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_sw_btn_0/system_axi_gpio_sw_btn_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_video_0/system_axi_gpio_video_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_video_0/system_axi_gpio_video_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_gpio_video_0/system_axi_gpio_video_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_vdma_1_0/system_axi_vdma_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_vdma_1_0/system_axi_vdma_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_vdma_1_0/system_axi_vdma_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axis_subset_converter_in_0/system_axis_subset_converter_in_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axis_subset_converter_out_0/system_axis_subset_converter_out_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_dvi2rgb_1_0/src/ila_refclk/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_dvi2rgb_1_0/src/ila_refclk/ila_refclk_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_dvi2rgb_1_0/src/ila_timing_workaround.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_dvi2rgb_1_0/src/dvi2rgb.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_dvi2rgb_1_0/src/dvi2rgb_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_dvi2rgb_1_0/src/ila_pixclk/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_dvi2rgb_1_0/src/ila_pixclk/ila_pixclk_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_rgb2dvi_1_0/src/rgb2dvi.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_rgb2dvi_1_0/src/rgb2dvi_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_rgb2dvi_1_0/src/rgb2dvi_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_rst_ps7_0_133M_0/system_rst_ps7_0_133M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_rst_ps7_0_133M_0/system_rst_ps7_0_133M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_rst_ps7_0_133M_0/system_rst_ps7_0_133M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_v_tc_in_0/system_v_tc_in_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_v_tc_in_0/system_v_tc_in_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_v_tc_out_0/system_v_tc_out_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_v_tc_out_0/system_v_tc_out_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_v_vid_in_axi4s_0_0/system_v_vid_in_axi4s_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_v_vid_in_axi4s_0_0/system_v_vid_in_axi4s_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_util_ds_buf_0_0/system_util_ds_buf_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_util_ds_buf_0_0/system_util_ds_buf_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_util_ds_buf_0_0/system_util_ds_buf_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axis_subset_converter_0_0/system_axis_subset_converter_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_iic_0_0/system_axi_iic_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_iic_0_0/system_axi_iic_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_axi_data_fifo_0_0/system_axi_data_fifo_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_0/bd_0ac3_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_1/bd_0ac3_r_sync_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_1/bd_0ac3_r_sync_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_1/bd_0ac3_r_sync_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_2/ip_0/mipi_csi2_rx_ctrl_v1_0_8_fifo1.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_2/ip_0/mipi_csi2_rx_ctrl_v1_0_8_fifo1_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_2/ip_1/mipi_csi2_rx_ctrl_v1_0_8_fc_644096.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_2/ip_2/mipi_csi2_rx_ctrl_v1_0_8_fifo0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_2/ip_3/mipi_csi2_rx_ctrl_v1_0_8_fifo2.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_2/ip_3/mipi_csi2_rx_ctrl_v1_0_8_fifo2_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_2/bd_0ac3_rx_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_2/bd_0ac3_rx_0_fixed_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_2/bd_0ac3_rx_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_3/bd_0ac3_phy_0.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_3/bd_0ac3_phy_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_3/bd_0ac3_phy_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/ip/ip_4/bd_0ac3_vfb_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/bd_0/bd_0ac3_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/system_mipi_csi2_rx_subsystem_0_1_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/system_mipi_csi2_rx_subsystem_0_1_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_mipi_csi2_rx_subsystem_0_1/system_mipi_csi2_rx_subsystem_0_1_fixed_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_v_frmbuf_wr_0_1/system_v_frmbuf_wr_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_v_frmbuf_wr_0_1/system_v_frmbuf_wr_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_xbar_1/system_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_xbar_0/system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_auto_pc_2/system_auto_pc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_m00_regslice_0/system_m00_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_m00_regslice_0/system_m00_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_auto_pc_1/system_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_s01_regslice_0/system_s01_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_s01_regslice_0/system_s01_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_s00_regslice_0/system_s00_regslice_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_s00_regslice_0/system_s00_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Digilent19/Zybo-Z7-20-base-linux/src/bd/system/system_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Digilent19/Zybo-Z7-20-base-linux/src/constraints/Zybo-Z7-Master.xdc
set_property used_in_implementation false [get_files C:/Digilent19/Zybo-Z7-20-base-linux/src/constraints/Zybo-Z7-Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top system_wrapper -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]