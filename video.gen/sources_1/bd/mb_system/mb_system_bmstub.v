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
  qspi_flash_io0_i,
  qspi_flash_io0_o,
  qspi_flash_io0_t,
  qspi_flash_io1_i,
  qspi_flash_io1_o,
  qspi_flash_io1_t,
  qspi_flash_io2_i,
  qspi_flash_io2_o,
  qspi_flash_io2_t,
  qspi_flash_io3_i,
  qspi_flash_io3_o,
  qspi_flash_io3_t,
  qspi_flash_ss_i,
  qspi_flash_ss_o,
  qspi_flash_ss_t,
  dip_switches_4bits_tri_i,
  lcd_7bits_tri_o,
  led_4bits_tri_i,
  led_4bits_tri_o,
  led_4bits_tri_t,
  rotary_switch_tri_i,
  DDR3_0_dq,
  DDR3_0_dqs_p,
  DDR3_0_dqs_n,
  DDR3_0_addr,
  DDR3_0_ba,
  DDR3_0_ras_n,
  DDR3_0_cas_n,
  DDR3_0_we_n,
  DDR3_0_reset_n,
  DDR3_0_ck_p,
  DDR3_0_ck_n,
  DDR3_0_cke,
  DDR3_0_dm,
  DDR3_0_odt,
  cpu_resetn,
  sysclk
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_I" *)
  (* X_INTERFACE_MODE = "master qspi_flash" *)
  input qspi_flash_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_O" *)
  output qspi_flash_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_T" *)
  output qspi_flash_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_I" *)
  input qspi_flash_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_O" *)
  output qspi_flash_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_T" *)
  output qspi_flash_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_I" *)
  input qspi_flash_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_O" *)
  output qspi_flash_io2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_T" *)
  output qspi_flash_io2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_I" *)
  input qspi_flash_io3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_O" *)
  output qspi_flash_io3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_T" *)
  output qspi_flash_io3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_I" *)
  input [0:0]qspi_flash_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_O" *)
  output [0:0]qspi_flash_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_T" *)
  output qspi_flash_ss_t;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DQ" *)
  (* X_INTERFACE_MODE = "master DDR3_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR3_0, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  inout [15:0]DDR3_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DQS_P" *)
  inout [1:0]DDR3_0_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DQS_N" *)
  inout [1:0]DDR3_0_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 ADDR" *)
  output [14:0]DDR3_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 BA" *)
  output [2:0]DDR3_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 RAS_N" *)
  output DDR3_0_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CAS_N" *)
  output DDR3_0_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 WE_N" *)
  output DDR3_0_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 RESET_N" *)
  output DDR3_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CK_P" *)
  output [0:0]DDR3_0_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CK_N" *)
  output [0:0]DDR3_0_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 CKE" *)
  output [0:0]DDR3_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 DM" *)
  output [1:0]DDR3_0_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_0 ODT" *)
  output [0:0]DDR3_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CPU_RESETN RST" *)
  (* X_INTERFACE_MODE = "slave RST.CPU_RESETN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CPU_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input cpu_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.SYSCLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mb_system_sys_clock, INSERT_VIP 0" *)
  input sysclk;

  // stub module has no contents

endmodule
