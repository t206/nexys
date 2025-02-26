# 100 MHz System Reference Oscillator
# create_clock -period 10.000 -name sys_clk -waveform {0.000 5.000} [get_ports sys_clk]
# set_property IOSTANDARD LVCMOS25 [get_ports sys_clk]
set_property PACKAGE_PIN R4 [get_ports sys_clk]

# Board Reset Switch
set_property IOSTANDARD LVCMOS15 [get_ports ext_reset_b]
set_property PACKAGE_PIN G4 [get_ports ext_reset_b]
set_property PULLTYPE PULLUP [get_ports ext_reset_b]
set_max_delay -from [get_ports ext_reset_b] -to * 4.000
set_min_delay -from [get_ports ext_reset_b] -to * 0.000

# UART Serial Interface
set_property IOSTANDARD LVCMOS33 [get_ports rs232_uart_*]
set_property PACKAGE_PIN AA19 [get_ports rs232_uart_rxd]
set_property PACKAGE_PIN V18 [get_ports rs232_uart_txd]
set_max_delay -from [get_clocks *] -to [get_ports rs232_uart_txd] 11.000
set_min_delay -from [get_clocks *] -to [get_ports rs232_uart_txd] 0.000
set_max_delay -from [get_ports rs232_uart_rxd] -to [get_clocks *] 4.000
set_min_delay -from [get_ports rs232_uart_rxd] -to [get_clocks *] 0.000

# LCD Driver Outputs
set_max_delay -from [get_clocks *] -to [get_ports lcd_7bits_tri_o[*]] 11.000
set_min_delay -from [get_clocks *] -to [get_ports lcd_7bits_tri_o[*]] 0.000

# LED Outputs
set_max_delay -from [get_clocks *] -to [get_ports led_4bits_tri_io[*]] 11.000
set_min_delay -from [get_clocks *] -to [get_ports led_4bits_tri_io[*]] 0.000

# DDR3 Interface
set_max_delay -from [get_clocks *] -to [get_ports DDR3_0_reset_n] 13.000
set_min_delay -from [get_clocks *] -to [get_ports DDR3_0_reset_n] 0.000

# Userclk (frequency to be measured, 400 MHz maximum for Nexys Video Board)
# Userclks are on connector JC1, pins 1(P) and 2(N)
# create_clock -period 2.520 -name userclk_p -waveform {0.000 1.260} [get_ports userclk_p]
# set_property -dict {PACKAGE_PIN Y6 IOSTANDARD LVDS_25} [get_ports userclk_p]
# set_property DIFF_TERM true [get_ports userclk_*]
# set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets userclk_ibufgds]

# Synchronizers
# set_property ASYNC_REG true [get_cells gps_state*_reg]
# set_max_delay -from [get_cells gps_onesec_sync_reg] -to [get_cells gps_state_meta_reg] 1.500 -datapath_only

# set_property ASYNC_REG true [get_cells gps_onesec*_reg]
# set_max_delay -from [get_cells gps_onesec_meta_reg] -to [get_cells gps_onesec_sync_reg] 1.500

# set_property ASYNC_REG true [get_cells reset_*_reg]
# set_min_delay -from [get_ports ext_reset_b] -to [get_cells reset_*_meta_reg] 0.000
# set_max_delay -from [get_ports ext_reset_b] -to [get_cells reset_*_meta_reg] 4.000

# These signals don't need synchronizers since both sets of registers are stable during the crossing
# set_max_delay -from [get_cells {frequency_out_0_reg[*]}] -to [get_cells {frequency_out_1_reg[*]}] 1.500 -datapath_only

# GPS 1 Hz Input
# set_property IOSTANDARD LVCMOS25 [get_ports gps_onesec]
# set_property PACKAGE_PIN V7 [get_ports gps_onesec]
# set_property PULLTYPE PULLDOWN [get_ports gps_onesec]
# set_min_delay -from [get_ports gps_onesec] -to [get_cells gps_onesec_meta_reg] 0.000
# set_max_delay -from [get_ports gps_onesec] -to [get_cells gps_onesec_meta_reg] 2.800

# BTNR Switch
# set_property IOSTANDARD LVCMOS12 [get_ports btnr_sw]
# set_property PACKAGE_PIN D14 [get_ports btnr_sw]
# set_min_delay -from [get_ports btnr_sw] -to [get_cells gps_onesec_meta_reg] 0.000
# set_max_delay -from [get_ports btnr_sw] -to [get_cells gps_onesec_meta_reg] 3.200

# GPS LED0 Output
# set_property IOSTANDARD LVCMOS25 [get_ports gps_led]
# set_property PACKAGE_PIN T14 [get_ports gps_led]
# set_property IOB TRUE [get_ports gps_led]
# set_output_delay -clock [get_clocks clk_out1_sysclk_gen] 0.800 [get_ports gps_led]

# Debug
