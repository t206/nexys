//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2025 12:31:11 PM
// Design Name: Nexys Video Top Level
// Module Name: video_top
// Project Name: 
// Target Devices: Nexys Video Board Artix 7 200T
// Tool Versions: Vivado 2024.2
// Description:
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ps / 1ps
 
module video_top (
  // Inputs
  input  logic sysclk,           // 100 MHz board oscillator, single-ended
  input  logic cpu_resetn,       // CPU reset from PB switch, active low
  input  logic uart_rx_out,      // RS232 RX data
  // Outputs
  output logic [3:0] leds,       // LEDs 0 thru 3
  output logic uart_tx_in,       // RS232 TX data
  output logic ddr3_resetb,      // DDR3 reset to memory, active low
  output logic [14:0] ddr3_addr, // DDR3 address bus
  output logic [2:0] ddr3_ba,
  output logic ddr3_casb,        // DDR3 column address strobe, active low
  output logic ddr3_ck_n,        // DDR3 differential clock (N)     
  output logic ddr3_ck_p,        // DDR3 differential clock (P)
  output logic ddr3_cke,         // DDR3 clock enable
  output logic [1:0] ddr3_dm,
  output logic ddr3_odt,
  output logic ddr3_rasb,        // DDR3 row address strobe, active low
  output logic ddr3_web,         // DDR3 write enable, active low
  // Bidirectionals
  inout  logic scl,              // I2C SCL
  inout  logic sda,              // I2C SDA
  inout  logic [3:0] qspi_dq,    // QSPI bidirectional data lines
  inout  logic qspi_csb,         // QSPI chip select, active low
  inout  logic [15:0] ddr3_dq,   // DDR3 data
  inout  logic [1:0] ddr3_dqs_n,
  inout  logic [1:0] ddr3_dqs_p
);

// Internal Signals
  logic  clk_100;                // 100 MHz fabric clock
  (* dont_touch = "yes" *) logic  clk_200;                // 200 MHz fabric clock
  logic  ddr_cal_done;           // DDR3 calibration complete
  logic  mmcm_locked;            // DDR3 MMCM locked
  logic  fabric_reset_meta = 1;
  (* dont_touch = "yes" *) logic  fabric_reset = 1;       // Reset for all fabric logic  

// Master reset for all fabric logic (active high)
  always_ff @ (posedge clk_100, negedge mmcm_locked)
    begin
      if (!mmcm_locked)
        begin
          fabric_reset_meta <= 1;
          fabric_reset <= 1;
        end
      else
        begin
          fabric_reset_meta <= 0;
          fabric_reset <= fabric_reset_meta;
        end
    end

// Instace Micrblaze processr system via its aut-generated wrapper
mb_system_wrapper mb_system_wrapper_0 (
  // External Signals
  .sysclk            (sysclk),
  .cpu_resetn        (cpu_resetn),
  .DDR3_0_reset_n    (ddr3_resetb),
  .iic_main_scl_io   (scl),         // I2C SCL
  .iic_main_sda_io   (sda),         // I2C SDA
  .led_4bits_tri_o   (leds),        // Board LEDs 0 thru 3
  .qspi_flash_io0_io (qspi_dq[0]),  // QSPI data bit 0
  .qspi_flash_io1_io (qspi_dq[1]),  // QSPI data bit 1
  .qspi_flash_io2_io (qspi_dq[2]),  // QSPI data bit 2
  .qspi_flash_io3_io (qspi_dq[3]),  // QSPI data bit 03
  .qspi_flash_ss_io  (qspi_csb),    // QSPI chip select, active low
  .rs232_uart_rxd    (uart_rx_out), // RS232 RX data
  .rs232_uart_txd    (uart_tx_in),  // RS232 TX data
  .DDR3_0_addr       (ddr3_addr),   // DDR3 address bus
  .DDR3_0_ba         (ddr3_ba),
  .DDR3_0_cas_n      (ddr3_casb),   // DDR3 calumn address strobe, active low
  .DDR3_0_ck_n       (ddr3_ck_n),   // DDR3 differential clock (N)
  .DDR3_0_ck_p       (ddr3_ck_p),   // DDR3 differential clock (P)
  .DDR3_0_cke        (ddr3_cke),    // DDR3 clock enable
  .DDR3_0_dm         (ddr3_dm),
  .DDR3_0_dq         (ddr3_dq),     // DDR3 data
  .DDR3_0_dqs_n      (ddr3_dqs_n),
  .DDR3_0_dqs_p      (ddr3_dqs_p),
  .DDR3_0_odt        (ddr3_odt),
  .DDR3_0_ras_n      (ddr3_rasb),   // DDR3 row address strobe, active low
  .DDR3_0_we_n       (ddr3_web),    // DDR3 write enable, active low
  // Internal Signals
  .clk_100           (clk_100),     // 100 MHz fabric clock from DDR3 cntroaller
  .clk_200           (clk_200),     // 200 MHz fabric clock from DDR3 cntroaller
  .mmcm_locked       (mmcm_locked), // DDR3 MMCM lock signal, active high
  .ddr_cal_done      (ddr_cal_done) // DDDR3 calibration complete
);

endmodule
