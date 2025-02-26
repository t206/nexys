//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Wed Feb 26 17:23:46 2025
//Host        : TONY95B7 running 64-bit major release  (build 9200)
//Command     : generate_target mb_system_wrapper.bd
//Design      : mb_system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_system_wrapper
   (DDR3_0_addr,
    DDR3_0_ba,
    DDR3_0_cas_n,
    DDR3_0_ck_n,
    DDR3_0_ck_p,
    DDR3_0_cke,
    DDR3_0_dm,
    DDR3_0_dq,
    DDR3_0_dqs_n,
    DDR3_0_dqs_p,
    DDR3_0_odt,
    DDR3_0_ras_n,
    DDR3_0_reset_n,
    DDR3_0_we_n,
    cpu_resetn,
    dip_switches_4bits_tri_i,
    iic_main_scl_io,
    iic_main_sda_io,
    lcd_7bits_tri_o,
    led_4bits_tri_io,
    rotary_switch_tri_i,
    rs232_uart_rxd,
    rs232_uart_txd,
    spi_flash_io0_io,
    spi_flash_io1_io,
    spi_flash_io2_io,
    spi_flash_io3_io,
    spi_flash_ss_io,
    sysclk);
  output [14:0]DDR3_0_addr;
  output [2:0]DDR3_0_ba;
  output DDR3_0_cas_n;
  output [0:0]DDR3_0_ck_n;
  output [0:0]DDR3_0_ck_p;
  output [0:0]DDR3_0_cke;
  output [1:0]DDR3_0_dm;
  inout [15:0]DDR3_0_dq;
  inout [1:0]DDR3_0_dqs_n;
  inout [1:0]DDR3_0_dqs_p;
  output [0:0]DDR3_0_odt;
  output DDR3_0_ras_n;
  output DDR3_0_reset_n;
  output DDR3_0_we_n;
  input cpu_resetn;
  input [3:0]dip_switches_4bits_tri_i;
  inout iic_main_scl_io;
  inout iic_main_sda_io;
  output [6:0]lcd_7bits_tri_o;
  inout [31:0]led_4bits_tri_io;
  input [2:0]rotary_switch_tri_i;
  input rs232_uart_rxd;
  output rs232_uart_txd;
  inout spi_flash_io0_io;
  inout spi_flash_io1_io;
  inout spi_flash_io2_io;
  inout spi_flash_io3_io;
  inout [0:0]spi_flash_ss_io;
  input sysclk;

  wire [14:0]DDR3_0_addr;
  wire [2:0]DDR3_0_ba;
  wire DDR3_0_cas_n;
  wire [0:0]DDR3_0_ck_n;
  wire [0:0]DDR3_0_ck_p;
  wire [0:0]DDR3_0_cke;
  wire [1:0]DDR3_0_dm;
  wire [15:0]DDR3_0_dq;
  wire [1:0]DDR3_0_dqs_n;
  wire [1:0]DDR3_0_dqs_p;
  wire [0:0]DDR3_0_odt;
  wire DDR3_0_ras_n;
  wire DDR3_0_reset_n;
  wire DDR3_0_we_n;
  wire cpu_resetn;
  wire [3:0]dip_switches_4bits_tri_i;
  wire iic_main_scl_i;
  wire iic_main_scl_io;
  wire iic_main_scl_o;
  wire iic_main_scl_t;
  wire iic_main_sda_i;
  wire iic_main_sda_io;
  wire iic_main_sda_o;
  wire iic_main_sda_t;
  wire [6:0]lcd_7bits_tri_o;
  wire [0:0]led_4bits_tri_i_0;
  wire [1:1]led_4bits_tri_i_1;
  wire [10:10]led_4bits_tri_i_10;
  wire [11:11]led_4bits_tri_i_11;
  wire [12:12]led_4bits_tri_i_12;
  wire [13:13]led_4bits_tri_i_13;
  wire [14:14]led_4bits_tri_i_14;
  wire [15:15]led_4bits_tri_i_15;
  wire [16:16]led_4bits_tri_i_16;
  wire [17:17]led_4bits_tri_i_17;
  wire [18:18]led_4bits_tri_i_18;
  wire [19:19]led_4bits_tri_i_19;
  wire [2:2]led_4bits_tri_i_2;
  wire [20:20]led_4bits_tri_i_20;
  wire [21:21]led_4bits_tri_i_21;
  wire [22:22]led_4bits_tri_i_22;
  wire [23:23]led_4bits_tri_i_23;
  wire [24:24]led_4bits_tri_i_24;
  wire [25:25]led_4bits_tri_i_25;
  wire [26:26]led_4bits_tri_i_26;
  wire [27:27]led_4bits_tri_i_27;
  wire [28:28]led_4bits_tri_i_28;
  wire [29:29]led_4bits_tri_i_29;
  wire [3:3]led_4bits_tri_i_3;
  wire [30:30]led_4bits_tri_i_30;
  wire [31:31]led_4bits_tri_i_31;
  wire [4:4]led_4bits_tri_i_4;
  wire [5:5]led_4bits_tri_i_5;
  wire [6:6]led_4bits_tri_i_6;
  wire [7:7]led_4bits_tri_i_7;
  wire [8:8]led_4bits_tri_i_8;
  wire [9:9]led_4bits_tri_i_9;
  wire [0:0]led_4bits_tri_io_0;
  wire [1:1]led_4bits_tri_io_1;
  wire [10:10]led_4bits_tri_io_10;
  wire [11:11]led_4bits_tri_io_11;
  wire [12:12]led_4bits_tri_io_12;
  wire [13:13]led_4bits_tri_io_13;
  wire [14:14]led_4bits_tri_io_14;
  wire [15:15]led_4bits_tri_io_15;
  wire [16:16]led_4bits_tri_io_16;
  wire [17:17]led_4bits_tri_io_17;
  wire [18:18]led_4bits_tri_io_18;
  wire [19:19]led_4bits_tri_io_19;
  wire [2:2]led_4bits_tri_io_2;
  wire [20:20]led_4bits_tri_io_20;
  wire [21:21]led_4bits_tri_io_21;
  wire [22:22]led_4bits_tri_io_22;
  wire [23:23]led_4bits_tri_io_23;
  wire [24:24]led_4bits_tri_io_24;
  wire [25:25]led_4bits_tri_io_25;
  wire [26:26]led_4bits_tri_io_26;
  wire [27:27]led_4bits_tri_io_27;
  wire [28:28]led_4bits_tri_io_28;
  wire [29:29]led_4bits_tri_io_29;
  wire [3:3]led_4bits_tri_io_3;
  wire [30:30]led_4bits_tri_io_30;
  wire [31:31]led_4bits_tri_io_31;
  wire [4:4]led_4bits_tri_io_4;
  wire [5:5]led_4bits_tri_io_5;
  wire [6:6]led_4bits_tri_io_6;
  wire [7:7]led_4bits_tri_io_7;
  wire [8:8]led_4bits_tri_io_8;
  wire [9:9]led_4bits_tri_io_9;
  wire [0:0]led_4bits_tri_o_0;
  wire [1:1]led_4bits_tri_o_1;
  wire [10:10]led_4bits_tri_o_10;
  wire [11:11]led_4bits_tri_o_11;
  wire [12:12]led_4bits_tri_o_12;
  wire [13:13]led_4bits_tri_o_13;
  wire [14:14]led_4bits_tri_o_14;
  wire [15:15]led_4bits_tri_o_15;
  wire [16:16]led_4bits_tri_o_16;
  wire [17:17]led_4bits_tri_o_17;
  wire [18:18]led_4bits_tri_o_18;
  wire [19:19]led_4bits_tri_o_19;
  wire [2:2]led_4bits_tri_o_2;
  wire [20:20]led_4bits_tri_o_20;
  wire [21:21]led_4bits_tri_o_21;
  wire [22:22]led_4bits_tri_o_22;
  wire [23:23]led_4bits_tri_o_23;
  wire [24:24]led_4bits_tri_o_24;
  wire [25:25]led_4bits_tri_o_25;
  wire [26:26]led_4bits_tri_o_26;
  wire [27:27]led_4bits_tri_o_27;
  wire [28:28]led_4bits_tri_o_28;
  wire [29:29]led_4bits_tri_o_29;
  wire [3:3]led_4bits_tri_o_3;
  wire [30:30]led_4bits_tri_o_30;
  wire [31:31]led_4bits_tri_o_31;
  wire [4:4]led_4bits_tri_o_4;
  wire [5:5]led_4bits_tri_o_5;
  wire [6:6]led_4bits_tri_o_6;
  wire [7:7]led_4bits_tri_o_7;
  wire [8:8]led_4bits_tri_o_8;
  wire [9:9]led_4bits_tri_o_9;
  wire [0:0]led_4bits_tri_t_0;
  wire [1:1]led_4bits_tri_t_1;
  wire [10:10]led_4bits_tri_t_10;
  wire [11:11]led_4bits_tri_t_11;
  wire [12:12]led_4bits_tri_t_12;
  wire [13:13]led_4bits_tri_t_13;
  wire [14:14]led_4bits_tri_t_14;
  wire [15:15]led_4bits_tri_t_15;
  wire [16:16]led_4bits_tri_t_16;
  wire [17:17]led_4bits_tri_t_17;
  wire [18:18]led_4bits_tri_t_18;
  wire [19:19]led_4bits_tri_t_19;
  wire [2:2]led_4bits_tri_t_2;
  wire [20:20]led_4bits_tri_t_20;
  wire [21:21]led_4bits_tri_t_21;
  wire [22:22]led_4bits_tri_t_22;
  wire [23:23]led_4bits_tri_t_23;
  wire [24:24]led_4bits_tri_t_24;
  wire [25:25]led_4bits_tri_t_25;
  wire [26:26]led_4bits_tri_t_26;
  wire [27:27]led_4bits_tri_t_27;
  wire [28:28]led_4bits_tri_t_28;
  wire [29:29]led_4bits_tri_t_29;
  wire [3:3]led_4bits_tri_t_3;
  wire [30:30]led_4bits_tri_t_30;
  wire [31:31]led_4bits_tri_t_31;
  wire [4:4]led_4bits_tri_t_4;
  wire [5:5]led_4bits_tri_t_5;
  wire [6:6]led_4bits_tri_t_6;
  wire [7:7]led_4bits_tri_t_7;
  wire [8:8]led_4bits_tri_t_8;
  wire [9:9]led_4bits_tri_t_9;
  wire [2:0]rotary_switch_tri_i;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;
  wire spi_flash_io0_i;
  wire spi_flash_io0_io;
  wire spi_flash_io0_o;
  wire spi_flash_io0_t;
  wire spi_flash_io1_i;
  wire spi_flash_io1_io;
  wire spi_flash_io1_o;
  wire spi_flash_io1_t;
  wire spi_flash_io2_i;
  wire spi_flash_io2_io;
  wire spi_flash_io2_o;
  wire spi_flash_io2_t;
  wire spi_flash_io3_i;
  wire spi_flash_io3_io;
  wire spi_flash_io3_o;
  wire spi_flash_io3_t;
  wire [0:0]spi_flash_ss_i_0;
  wire [0:0]spi_flash_ss_io_0;
  wire [0:0]spi_flash_ss_o_0;
  wire spi_flash_ss_t;
  wire sysclk;

  IOBUF iic_main_scl_iobuf
       (.I(iic_main_scl_o),
        .IO(iic_main_scl_io),
        .O(iic_main_scl_i),
        .T(iic_main_scl_t));
  IOBUF iic_main_sda_iobuf
       (.I(iic_main_sda_o),
        .IO(iic_main_sda_io),
        .O(iic_main_sda_i),
        .T(iic_main_sda_t));
  IOBUF led_4bits_tri_iobuf_0
       (.I(led_4bits_tri_o_0),
        .IO(led_4bits_tri_io[0]),
        .O(led_4bits_tri_i_0),
        .T(led_4bits_tri_t_0));
  IOBUF led_4bits_tri_iobuf_1
       (.I(led_4bits_tri_o_1),
        .IO(led_4bits_tri_io[1]),
        .O(led_4bits_tri_i_1),
        .T(led_4bits_tri_t_1));
  IOBUF led_4bits_tri_iobuf_10
       (.I(led_4bits_tri_o_10),
        .IO(led_4bits_tri_io[10]),
        .O(led_4bits_tri_i_10),
        .T(led_4bits_tri_t_10));
  IOBUF led_4bits_tri_iobuf_11
       (.I(led_4bits_tri_o_11),
        .IO(led_4bits_tri_io[11]),
        .O(led_4bits_tri_i_11),
        .T(led_4bits_tri_t_11));
  IOBUF led_4bits_tri_iobuf_12
       (.I(led_4bits_tri_o_12),
        .IO(led_4bits_tri_io[12]),
        .O(led_4bits_tri_i_12),
        .T(led_4bits_tri_t_12));
  IOBUF led_4bits_tri_iobuf_13
       (.I(led_4bits_tri_o_13),
        .IO(led_4bits_tri_io[13]),
        .O(led_4bits_tri_i_13),
        .T(led_4bits_tri_t_13));
  IOBUF led_4bits_tri_iobuf_14
       (.I(led_4bits_tri_o_14),
        .IO(led_4bits_tri_io[14]),
        .O(led_4bits_tri_i_14),
        .T(led_4bits_tri_t_14));
  IOBUF led_4bits_tri_iobuf_15
       (.I(led_4bits_tri_o_15),
        .IO(led_4bits_tri_io[15]),
        .O(led_4bits_tri_i_15),
        .T(led_4bits_tri_t_15));
  IOBUF led_4bits_tri_iobuf_16
       (.I(led_4bits_tri_o_16),
        .IO(led_4bits_tri_io[16]),
        .O(led_4bits_tri_i_16),
        .T(led_4bits_tri_t_16));
  IOBUF led_4bits_tri_iobuf_17
       (.I(led_4bits_tri_o_17),
        .IO(led_4bits_tri_io[17]),
        .O(led_4bits_tri_i_17),
        .T(led_4bits_tri_t_17));
  IOBUF led_4bits_tri_iobuf_18
       (.I(led_4bits_tri_o_18),
        .IO(led_4bits_tri_io[18]),
        .O(led_4bits_tri_i_18),
        .T(led_4bits_tri_t_18));
  IOBUF led_4bits_tri_iobuf_19
       (.I(led_4bits_tri_o_19),
        .IO(led_4bits_tri_io[19]),
        .O(led_4bits_tri_i_19),
        .T(led_4bits_tri_t_19));
  IOBUF led_4bits_tri_iobuf_2
       (.I(led_4bits_tri_o_2),
        .IO(led_4bits_tri_io[2]),
        .O(led_4bits_tri_i_2),
        .T(led_4bits_tri_t_2));
  IOBUF led_4bits_tri_iobuf_20
       (.I(led_4bits_tri_o_20),
        .IO(led_4bits_tri_io[20]),
        .O(led_4bits_tri_i_20),
        .T(led_4bits_tri_t_20));
  IOBUF led_4bits_tri_iobuf_21
       (.I(led_4bits_tri_o_21),
        .IO(led_4bits_tri_io[21]),
        .O(led_4bits_tri_i_21),
        .T(led_4bits_tri_t_21));
  IOBUF led_4bits_tri_iobuf_22
       (.I(led_4bits_tri_o_22),
        .IO(led_4bits_tri_io[22]),
        .O(led_4bits_tri_i_22),
        .T(led_4bits_tri_t_22));
  IOBUF led_4bits_tri_iobuf_23
       (.I(led_4bits_tri_o_23),
        .IO(led_4bits_tri_io[23]),
        .O(led_4bits_tri_i_23),
        .T(led_4bits_tri_t_23));
  IOBUF led_4bits_tri_iobuf_24
       (.I(led_4bits_tri_o_24),
        .IO(led_4bits_tri_io[24]),
        .O(led_4bits_tri_i_24),
        .T(led_4bits_tri_t_24));
  IOBUF led_4bits_tri_iobuf_25
       (.I(led_4bits_tri_o_25),
        .IO(led_4bits_tri_io[25]),
        .O(led_4bits_tri_i_25),
        .T(led_4bits_tri_t_25));
  IOBUF led_4bits_tri_iobuf_26
       (.I(led_4bits_tri_o_26),
        .IO(led_4bits_tri_io[26]),
        .O(led_4bits_tri_i_26),
        .T(led_4bits_tri_t_26));
  IOBUF led_4bits_tri_iobuf_27
       (.I(led_4bits_tri_o_27),
        .IO(led_4bits_tri_io[27]),
        .O(led_4bits_tri_i_27),
        .T(led_4bits_tri_t_27));
  IOBUF led_4bits_tri_iobuf_28
       (.I(led_4bits_tri_o_28),
        .IO(led_4bits_tri_io[28]),
        .O(led_4bits_tri_i_28),
        .T(led_4bits_tri_t_28));
  IOBUF led_4bits_tri_iobuf_29
       (.I(led_4bits_tri_o_29),
        .IO(led_4bits_tri_io[29]),
        .O(led_4bits_tri_i_29),
        .T(led_4bits_tri_t_29));
  IOBUF led_4bits_tri_iobuf_3
       (.I(led_4bits_tri_o_3),
        .IO(led_4bits_tri_io[3]),
        .O(led_4bits_tri_i_3),
        .T(led_4bits_tri_t_3));
  IOBUF led_4bits_tri_iobuf_30
       (.I(led_4bits_tri_o_30),
        .IO(led_4bits_tri_io[30]),
        .O(led_4bits_tri_i_30),
        .T(led_4bits_tri_t_30));
  IOBUF led_4bits_tri_iobuf_31
       (.I(led_4bits_tri_o_31),
        .IO(led_4bits_tri_io[31]),
        .O(led_4bits_tri_i_31),
        .T(led_4bits_tri_t_31));
  IOBUF led_4bits_tri_iobuf_4
       (.I(led_4bits_tri_o_4),
        .IO(led_4bits_tri_io[4]),
        .O(led_4bits_tri_i_4),
        .T(led_4bits_tri_t_4));
  IOBUF led_4bits_tri_iobuf_5
       (.I(led_4bits_tri_o_5),
        .IO(led_4bits_tri_io[5]),
        .O(led_4bits_tri_i_5),
        .T(led_4bits_tri_t_5));
  IOBUF led_4bits_tri_iobuf_6
       (.I(led_4bits_tri_o_6),
        .IO(led_4bits_tri_io[6]),
        .O(led_4bits_tri_i_6),
        .T(led_4bits_tri_t_6));
  IOBUF led_4bits_tri_iobuf_7
       (.I(led_4bits_tri_o_7),
        .IO(led_4bits_tri_io[7]),
        .O(led_4bits_tri_i_7),
        .T(led_4bits_tri_t_7));
  IOBUF led_4bits_tri_iobuf_8
       (.I(led_4bits_tri_o_8),
        .IO(led_4bits_tri_io[8]),
        .O(led_4bits_tri_i_8),
        .T(led_4bits_tri_t_8));
  IOBUF led_4bits_tri_iobuf_9
       (.I(led_4bits_tri_o_9),
        .IO(led_4bits_tri_io[9]),
        .O(led_4bits_tri_i_9),
        .T(led_4bits_tri_t_9));
  mb_system mb_system_i
       (.DDR3_0_addr(DDR3_0_addr),
        .DDR3_0_ba(DDR3_0_ba),
        .DDR3_0_cas_n(DDR3_0_cas_n),
        .DDR3_0_ck_n(DDR3_0_ck_n),
        .DDR3_0_ck_p(DDR3_0_ck_p),
        .DDR3_0_cke(DDR3_0_cke),
        .DDR3_0_dm(DDR3_0_dm),
        .DDR3_0_dq(DDR3_0_dq),
        .DDR3_0_dqs_n(DDR3_0_dqs_n),
        .DDR3_0_dqs_p(DDR3_0_dqs_p),
        .DDR3_0_odt(DDR3_0_odt),
        .DDR3_0_ras_n(DDR3_0_ras_n),
        .DDR3_0_reset_n(DDR3_0_reset_n),
        .DDR3_0_we_n(DDR3_0_we_n),
        .cpu_resetn(cpu_resetn),
        .dip_switches_4bits_tri_i(dip_switches_4bits_tri_i),
        .iic_main_scl_i(iic_main_scl_i),
        .iic_main_scl_o(iic_main_scl_o),
        .iic_main_scl_t(iic_main_scl_t),
        .iic_main_sda_i(iic_main_sda_i),
        .iic_main_sda_o(iic_main_sda_o),
        .iic_main_sda_t(iic_main_sda_t),
        .lcd_7bits_tri_o(lcd_7bits_tri_o),
        .led_4bits_tri_i({led_4bits_tri_i_31,led_4bits_tri_i_30,led_4bits_tri_i_29,led_4bits_tri_i_28,led_4bits_tri_i_27,led_4bits_tri_i_26,led_4bits_tri_i_25,led_4bits_tri_i_24,led_4bits_tri_i_23,led_4bits_tri_i_22,led_4bits_tri_i_21,led_4bits_tri_i_20,led_4bits_tri_i_19,led_4bits_tri_i_18,led_4bits_tri_i_17,led_4bits_tri_i_16,led_4bits_tri_i_15,led_4bits_tri_i_14,led_4bits_tri_i_13,led_4bits_tri_i_12,led_4bits_tri_i_11,led_4bits_tri_i_10,led_4bits_tri_i_9,led_4bits_tri_i_8,led_4bits_tri_i_7,led_4bits_tri_i_6,led_4bits_tri_i_5,led_4bits_tri_i_4,led_4bits_tri_i_3,led_4bits_tri_i_2,led_4bits_tri_i_1,led_4bits_tri_i_0}),
        .led_4bits_tri_o({led_4bits_tri_o_31,led_4bits_tri_o_30,led_4bits_tri_o_29,led_4bits_tri_o_28,led_4bits_tri_o_27,led_4bits_tri_o_26,led_4bits_tri_o_25,led_4bits_tri_o_24,led_4bits_tri_o_23,led_4bits_tri_o_22,led_4bits_tri_o_21,led_4bits_tri_o_20,led_4bits_tri_o_19,led_4bits_tri_o_18,led_4bits_tri_o_17,led_4bits_tri_o_16,led_4bits_tri_o_15,led_4bits_tri_o_14,led_4bits_tri_o_13,led_4bits_tri_o_12,led_4bits_tri_o_11,led_4bits_tri_o_10,led_4bits_tri_o_9,led_4bits_tri_o_8,led_4bits_tri_o_7,led_4bits_tri_o_6,led_4bits_tri_o_5,led_4bits_tri_o_4,led_4bits_tri_o_3,led_4bits_tri_o_2,led_4bits_tri_o_1,led_4bits_tri_o_0}),
        .led_4bits_tri_t({led_4bits_tri_t_31,led_4bits_tri_t_30,led_4bits_tri_t_29,led_4bits_tri_t_28,led_4bits_tri_t_27,led_4bits_tri_t_26,led_4bits_tri_t_25,led_4bits_tri_t_24,led_4bits_tri_t_23,led_4bits_tri_t_22,led_4bits_tri_t_21,led_4bits_tri_t_20,led_4bits_tri_t_19,led_4bits_tri_t_18,led_4bits_tri_t_17,led_4bits_tri_t_16,led_4bits_tri_t_15,led_4bits_tri_t_14,led_4bits_tri_t_13,led_4bits_tri_t_12,led_4bits_tri_t_11,led_4bits_tri_t_10,led_4bits_tri_t_9,led_4bits_tri_t_8,led_4bits_tri_t_7,led_4bits_tri_t_6,led_4bits_tri_t_5,led_4bits_tri_t_4,led_4bits_tri_t_3,led_4bits_tri_t_2,led_4bits_tri_t_1,led_4bits_tri_t_0}),
        .rotary_switch_tri_i(rotary_switch_tri_i),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd),
        .spi_flash_io0_i(spi_flash_io0_i),
        .spi_flash_io0_o(spi_flash_io0_o),
        .spi_flash_io0_t(spi_flash_io0_t),
        .spi_flash_io1_i(spi_flash_io1_i),
        .spi_flash_io1_o(spi_flash_io1_o),
        .spi_flash_io1_t(spi_flash_io1_t),
        .spi_flash_io2_i(spi_flash_io2_i),
        .spi_flash_io2_o(spi_flash_io2_o),
        .spi_flash_io2_t(spi_flash_io2_t),
        .spi_flash_io3_i(spi_flash_io3_i),
        .spi_flash_io3_o(spi_flash_io3_o),
        .spi_flash_io3_t(spi_flash_io3_t),
        .spi_flash_ss_i(spi_flash_ss_i_0),
        .spi_flash_ss_o(spi_flash_ss_o_0),
        .spi_flash_ss_t(spi_flash_ss_t),
        .sysclk(sysclk));
  IOBUF spi_flash_io0_iobuf
       (.I(spi_flash_io0_o),
        .IO(spi_flash_io0_io),
        .O(spi_flash_io0_i),
        .T(spi_flash_io0_t));
  IOBUF spi_flash_io1_iobuf
       (.I(spi_flash_io1_o),
        .IO(spi_flash_io1_io),
        .O(spi_flash_io1_i),
        .T(spi_flash_io1_t));
  IOBUF spi_flash_io2_iobuf
       (.I(spi_flash_io2_o),
        .IO(spi_flash_io2_io),
        .O(spi_flash_io2_i),
        .T(spi_flash_io2_t));
  IOBUF spi_flash_io3_iobuf
       (.I(spi_flash_io3_o),
        .IO(spi_flash_io3_io),
        .O(spi_flash_io3_i),
        .T(spi_flash_io3_t));
  IOBUF spi_flash_ss_iobuf_0
       (.I(spi_flash_ss_o_0),
        .IO(spi_flash_ss_io[0]),
        .O(spi_flash_ss_i_0),
        .T(spi_flash_ss_t));
endmodule
