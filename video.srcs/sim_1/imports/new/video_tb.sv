//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 08:34:20 PM
// Design Name: 
// Module Name: VIDEO_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ps / 1ps

module video_tb;

//  Outputs
//	wire [31:0] count_per_sec;
	
// Parameters
    parameter SYSCLK_PERIOD = 10000;                     // ps
    parameter HALF_SYSCLK_PERIOD = SYSCLK_PERIOD / 2;    // ps
//	parameter FIVE_HUNDRED_US  = 32'd500000000;          // ps
//	parameter ONE_MILLISECOND  = 32'd1000000000;         // ps
//	parameter TEN_MILLISECONDS = 40'd10000000000;        // ps
//	parameter ONE_HUNDRED_MS   = 40'd100000000000;       // ps
//	parameter ONE_SECOND       = 40'd1000000000000;      // ps
//	parameter GPS_PULSE_WIDTH  = 40'd100000000000;       // ps
//	parameter USERCLK_PERIOD = 2494;                     // ns
//	parameter HALF_USERCLK_PERIOD = USERCLK_PERIOD / 2;  // ps
//	parameter USE_SIM_LED_DELAY = 0;
	
//  Internal Signals
	
//	reg  userclk_p = 0;
//	wire userclk_n;
	reg  sys_clk = 0;
//	reg  reset_b = 0;
//	reg  gps_onesec = 0;
//	wire btnr_sw = 0;

// Instantiate the Unit Under Test (UUT)

video_top uut (
  // Inputs
  .sysclk          (sys_clk),    // 100 MHz board oscillator, single-ended
  .cpu_resetn      (),           // CPU reset from PB switch, active low
  .uart_rx_out     (),           // RS232 RX data
  // Outputs
  .leds            (),           // LEDs [3:0]
  .uart_tx_in      (),           // RS232 TX data
  .ddr3_resetb     (),           // DDR3 reset to memory, active low
  .ddr3_addr       (),           // DDR3 address bus {14:0]
  .ddr3_ba         (),           // [2:0]
  .ddr3_casb       (),           // DDR3 column address strobe, active low
  .ddr3_ck_n       (),           // DDR3 differential clock (N)     
  .ddr3_ck_p       (),           // DDR3 differential clock (P)
  .ddr3_cke        (),           // DDR3 clock enable
  .ddr3_dm         (),           // [1:0]
  .ddr3_odt        (),
  .ddr3_rasb       (),           // DDR3 row address strobe, active low
  .ddr3_web        (),           // DDR3 write enable, active low
  // Bidirectionals
  .scl             (),           // I2C SCL
  .sda             (),           // I2C SDA
  .qspi_dq         (),           // QSPI bidirectional data lines [3:0]
  .qspi_csb        (),           // QSPI chip select, active low
  .ddr3_dq         (),           // DDR3 data [15:0]
  .ddr3_dqs_n      (),           // {1:0]
  .ddr3_dqs_p      ()            // [1:0]
);
//	freq_counter #(USE_SIM_LED_DELAY) uut (
//	  .userclk_p   (userclk_p),
//	  .userclk_n   (userclk_n),
//      .sys_clk     (sys_clk),
//	  .ext_reset_b (reset_b),
//	  .gps_onesec  (gps_onesec),
//	  .btnr_sw     (btnr_sw),
//	  .gps_led()
//	);

	initial
	  begin
//		#175129;
//		reset_b = 1;
//		@(negedge freq_counter_tb.uut.reset_refclk_sync);
//        #61023;
//		gps_onesec = 1;
//		#GPS_PULSE_WIDTH;
//		gps_onesec = 0;
//		#(ONE_SECOND - GPS_PULSE_WIDTH);
//		gps_onesec = 1;
//		#GPS_PULSE_WIDTH;
//		gps_onesec = 0;
//		#(ONE_SECOND - GPS_PULSE_WIDTH);
//		gps_onesec = 1;
//		#GPS_PULSE_WIDTH;
//		gps_onesec = 0;
//		#(ONE_SECOND - GPS_PULSE_WIDTH);
//		gps_onesec = 1;
//		#GPS_PULSE_WIDTH;
//		gps_onesec = 0;
//		#(ONE_SECOND - GPS_PULSE_WIDTH);
//		gps_onesec = 1;
//		#GPS_PULSE_WIDTH;
//		gps_onesec = 0;
//		#(ONE_SECOND - GPS_PULSE_WIDTH);
//		gps_onesec = 1;
//		#GPS_PULSE_WIDTH;
//		gps_onesec = 0;
	  end

//   always
//	  begin
//	    #HALF_USERCLK_PERIOD userclk_p = ~userclk_p;
//	    #(USERCLK_PERIOD - HALF_USERCLK_PERIOD) userclk_p = ~userclk_p;
//	  end
	
//	assign userclk_n = ~userclk_p;

   always
	  begin
	    #HALF_SYSCLK_PERIOD sys_clk = ~sys_clk;
	  end
	
endmodule
