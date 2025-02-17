// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module mb_system (
  rs232_uart_rxd,
  rs232_uart_txd,
  iic_main_scl_i,
  iic_main_scl_o,
  iic_main_scl_t,
  iic_main_sda_i,
  iic_main_sda_o,
  iic_main_sda_t,
  spi_flash_io0_i,
  spi_flash_io0_o,
  spi_flash_io0_t,
  spi_flash_io1_i,
  spi_flash_io1_o,
  spi_flash_io1_t,
  spi_flash_io2_i,
  spi_flash_io2_o,
  spi_flash_io2_t,
  spi_flash_io3_i,
  spi_flash_io3_o,
  spi_flash_io3_t,
  spi_flash_ss_i,
  spi_flash_ss_o,
  spi_flash_ss_t,
  dip_switches_4bits_tri_i,
  lcd_7bits_tri_o,
  led_4bits_tri_i,
  led_4bits_tri_o,
  led_4bits_tri_t,
  rotary_switch_tri_i,
  ext_reset_b,
  sys_clk
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 rs232_uart RxD" *)
  (* X_INTERFACE_MODE = "master rs232_uart" *)
  input rs232_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 rs232_uart TxD" *)
  output rs232_uart_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_I" *)
  (* X_INTERFACE_MODE = "master iic_main" *)
  input iic_main_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_O" *)
  output iic_main_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_T" *)
  output iic_main_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_I" *)
  input iic_main_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_O" *)
  output iic_main_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_T" *)
  output iic_main_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO0_I" *)
  (* X_INTERFACE_MODE = "master spi_flash" *)
  input spi_flash_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO0_O" *)
  output spi_flash_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO0_T" *)
  output spi_flash_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO1_I" *)
  input spi_flash_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO1_O" *)
  output spi_flash_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO1_T" *)
  output spi_flash_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO2_I" *)
  input spi_flash_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO2_O" *)
  output spi_flash_io2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO2_T" *)
  output spi_flash_io2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO3_I" *)
  input spi_flash_io3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO3_O" *)
  output spi_flash_io3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash IO3_T" *)
  output spi_flash_io3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash SS_I" *)
  input [0:0]spi_flash_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash SS_O" *)
  output [0:0]spi_flash_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_flash SS_T" *)
  output spi_flash_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 dip_switches_4bits TRI_I" *)
  (* X_INTERFACE_MODE = "master dip_switches_4bits" *)
  input [3:0]dip_switches_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 lcd_7bits TRI_O" *)
  (* X_INTERFACE_MODE = "master lcd_7bits" *)
  output [6:0]lcd_7bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_I" *)
  (* X_INTERFACE_MODE = "master led_4bits" *)
  input [31:0]led_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_O" *)
  output [31:0]led_4bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_T" *)
  output [31:0]led_4bits_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 rotary_switch TRI_I" *)
  (* X_INTERFACE_MODE = "master rotary_switch" *)
  input [2:0]rotary_switch_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.EXT_RESET_B RST" *)
  (* X_INTERFACE_MODE = "slave RST.EXT_RESET_B" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.EXT_RESET_B, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input ext_reset_b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.SYS_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mb_system_sys_clock, INSERT_VIP 0" *)
  input sys_clk;

  // stub module has no contents

endmodule
