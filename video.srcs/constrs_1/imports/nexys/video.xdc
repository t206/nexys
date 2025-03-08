# 100 MHz System Clock Oscillator
set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports sysclk]
create_clock -period 10.000 -name sysclk -waveform {0.000 5.000} [get_ports sysclk]

# CPU Reset Switch (active low)
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS15} [get_ports cpu_resetn]
set_property  PULLTYPE PULLUP [get_ports cpu_resetn]
set_max_delay -from [get_ports cpu_resetn] -to [get_clocks *] 4.000
set_min_delay -from [get_ports cpu_resetn] -to [get_clocks *] 0.000

# UART Serial Interface (115200,N,8,1)
set_property IOSTANDARD LVCMOS33 [get_ports uart_*]
set_property PACKAGE_PIN AA19 [get_ports uart_rx_out]
set_property PACKAGE_PIN V18 [get_ports uart_tx_in]
set_max_delay -from [get_clocks *] -to [get_ports uart_tx_in] 14.000
set_min_delay -from [get_clocks *] -to [get_ports uart_tx_in] 0.000
set_max_delay -from [get_ports uart_rx_out] -to [get_clocks *] 4.000
set_min_delay -from [get_ports uart_rx_out] -to [get_clocks *] 0.000

# QSPI Flash
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports qspi_csb]
set_property -dict {PACKAGE_PIN P22 IOSTANDARD LVCMOS33} [get_ports qspi_dq[0]]
set_property -dict {PACKAGE_PIN R22 IOSTANDARD LVCMOS33} [get_ports qspi_dq[1]]
set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS33} [get_ports qspi_dq[2]]
set_property -dict {PACKAGE_PIN R21 IOSTANDARD LVCMOS33} [get_ports qspi_dq[3]]
set_max_delay -from [get_ports qspi_*] -to [get_clocks *] 4.000
set_min_delay -from [get_ports qspi_*] -to [get_clocks *] -5.100
set_max_delay -from [get_clocks *] -to [get_ports qspi_*] 15.000
set_min_delay -from [get_clocks *] -to [get_ports qspi_*] 0.000

# LED Outputs
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS25} [get_ports leds[0]]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS25} [get_ports leds[1]]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS25} [get_ports leds[2]]
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS25} [get_ports leds[3]]
# set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS25} [get_ports leds[4]]
# set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS25} [get_ports leds[5]]
# set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS25} [get_ports leds[6]]
# set_property -dict {PACKAGE_PIN Y13 IOSTANDARD LVCMOS25} [get_ports leds[7]]
set_max_delay -from [get_clocks *] -to [get_ports leds[*]] 16.000
set_min_delay -from [get_clocks *] -to [get_ports leds[*]] 0.000

# I2C I/O
set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVCMOS33} [get_ports scl]
set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVCMOS33} [get_ports sda]
set_max_delay -from [get_ports {scl sda}] -to [get_clocks *] 8.000
set_min_delay -from [get_ports {scl sda}] -to [get_clocks *] 0.000
set_max_delay -from [get_clocks *] -to [get_ports {scl sda}] 16.000
set_min_delay -from [get_clocks *] -to [get_ports {scl sda}] 0.000

# DDR3 Interface
set_max_delay -from [get_clocks *] -to [get_ports ddr3_resetb] 13.000
set_min_delay -from [get_clocks *] -to [get_ports ddr3_resetb] 0.000

# OLED Display SPI Interface
# set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports oled_dc]
# set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports oled_res]
# set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports oled_sclk]
# set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS33} [get_ports oled_sdin]
# set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports oled_vbat]
# set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports oled_vdd]

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
# set_min_delay -from [get_ports cpu_resetn] -to [get_cells reset_*_meta_reg] 0.000
# set_max_delay -from [get_ports cpu_resetn] -to [get_cells reset_*_meta_reg] 4.000

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
