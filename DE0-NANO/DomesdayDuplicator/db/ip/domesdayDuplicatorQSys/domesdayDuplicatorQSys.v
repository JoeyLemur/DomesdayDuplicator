// domesdayDuplicatorQSys.v

// Generated using ACDS version 17.0 595

`timescale 1 ps / 1 ps
module domesdayDuplicatorQSys (
		output wire        altpll_0_adc_clk,                //            altpll_0_adc.clk
		output wire        altpll_0_fx3_clk,                //            altpll_0_fx3.clk
		output wire        altpll_0_lock_export,            //           altpll_0_lock.export
		input  wire        altpll_0_pll_slave_read,         //      altpll_0_pll_slave.read
		input  wire        altpll_0_pll_slave_write,        //                        .write
		input  wire [1:0]  altpll_0_pll_slave_address,      //                        .address
		output wire [31:0] altpll_0_pll_slave_readdata,     //                        .readdata
		input  wire [31:0] altpll_0_pll_slave_writedata,    //                        .writedata
		input  wire        clk_50_in_clk,                   //               clk_50_in.clk
		input  wire [15:0] dc_fifo_0_in_data,               //            dc_fifo_0_in.data
		input  wire        dc_fifo_0_in_valid,              //                        .valid
		output wire        dc_fifo_0_in_ready,              //                        .ready
		input  wire        dc_fifo_0_in_clk_clk,            //        dc_fifo_0_in_clk.clk
		input  wire        dc_fifo_0_in_clk_reset_reset_n,  //  dc_fifo_0_in_clk_reset.reset_n
		output wire [15:0] dc_fifo_0_out_data,              //           dc_fifo_0_out.data
		output wire        dc_fifo_0_out_valid,             //                        .valid
		input  wire        dc_fifo_0_out_ready,             //                        .ready
		input  wire        dc_fifo_0_out_clk_clk,           //       dc_fifo_0_out_clk.clk
		input  wire        dc_fifo_0_out_clk_reset_reset_n, // dc_fifo_0_out_clk_reset.reset_n
		input  wire        dc_fifo_0_out_csr_address,       //       dc_fifo_0_out_csr.address
		input  wire        dc_fifo_0_out_csr_read,          //                        .read
		input  wire        dc_fifo_0_out_csr_write,         //                        .write
		output wire [31:0] dc_fifo_0_out_csr_readdata,      //                        .readdata
		input  wire [31:0] dc_fifo_0_out_csr_writedata,     //                        .writedata
		input  wire        reset_reset_n                    //                   reset.reset_n
	);

	wire    rst_controller_reset_out_reset; // rst_controller:reset_out -> altpll_0:reset

	domesdayDuplicatorQSys_altpll_0 altpll_0 (
		.clk                (clk_50_in_clk),                  //       inclk_interface.clk
		.reset              (rst_controller_reset_out_reset), // inclk_interface_reset.reset
		.read               (altpll_0_pll_slave_read),        //             pll_slave.read
		.write              (altpll_0_pll_slave_write),       //                      .write
		.address            (altpll_0_pll_slave_address),     //                      .address
		.readdata           (altpll_0_pll_slave_readdata),    //                      .readdata
		.writedata          (altpll_0_pll_slave_writedata),   //                      .writedata
		.c0                 (altpll_0_fx3_clk),               //                    c0.clk
		.c1                 (altpll_0_adc_clk),               //                    c1.clk
		.locked             (altpll_0_lock_export),           //        locked_conduit.export
		.scandone           (),                               //           (terminated)
		.scandataout        (),                               //           (terminated)
		.areset             (1'b0),                           //           (terminated)
		.phasedone          (),                               //           (terminated)
		.phasecounterselect (4'b0000),                        //           (terminated)
		.phaseupdown        (1'b0),                           //           (terminated)
		.phasestep          (1'b0),                           //           (terminated)
		.scanclk            (1'b0),                           //           (terminated)
		.scanclkena         (1'b0),                           //           (terminated)
		.scandata           (1'b0),                           //           (terminated)
		.configupdate       (1'b0)                            //           (terminated)
	);

	altera_avalon_dc_fifo #(
		.SYMBOLS_PER_BEAT   (1),
		.BITS_PER_SYMBOL    (16),
		.FIFO_DEPTH         (256),
		.CHANNEL_WIDTH      (0),
		.ERROR_WIDTH        (0),
		.USE_PACKETS        (0),
		.USE_IN_FILL_LEVEL  (0),
		.USE_OUT_FILL_LEVEL (1),
		.WR_SYNC_DEPTH      (3),
		.RD_SYNC_DEPTH      (3)
	) dc_fifo_0 (
		.in_clk            (dc_fifo_0_in_clk_clk),                 //        in_clk.clk
		.in_reset_n        (dc_fifo_0_in_clk_reset_reset_n),       //  in_clk_reset.reset_n
		.out_clk           (dc_fifo_0_out_clk_clk),                //       out_clk.clk
		.out_reset_n       (dc_fifo_0_out_clk_reset_reset_n),      // out_clk_reset.reset_n
		.out_csr_address   (dc_fifo_0_out_csr_address),            //       out_csr.address
		.out_csr_read      (dc_fifo_0_out_csr_read),               //              .read
		.out_csr_write     (dc_fifo_0_out_csr_write),              //              .write
		.out_csr_readdata  (dc_fifo_0_out_csr_readdata),           //              .readdata
		.out_csr_writedata (dc_fifo_0_out_csr_writedata),          //              .writedata
		.in_data           (dc_fifo_0_in_data),                    //            in.data
		.in_valid          (dc_fifo_0_in_valid),                   //              .valid
		.in_ready          (dc_fifo_0_in_ready),                   //              .ready
		.out_data          (dc_fifo_0_out_data),                   //           out.data
		.out_valid         (dc_fifo_0_out_valid),                  //              .valid
		.out_ready         (dc_fifo_0_out_ready),                  //              .ready
		.in_csr_address    (1'b0),                                 //   (terminated)
		.in_csr_read       (1'b0),                                 //   (terminated)
		.in_csr_write      (1'b0),                                 //   (terminated)
		.in_csr_readdata   (),                                     //   (terminated)
		.in_csr_writedata  (32'b00000000000000000000000000000000), //   (terminated)
		.in_startofpacket  (1'b0),                                 //   (terminated)
		.in_endofpacket    (1'b0),                                 //   (terminated)
		.out_startofpacket (),                                     //   (terminated)
		.out_endofpacket   (),                                     //   (terminated)
		.in_empty          (1'b0),                                 //   (terminated)
		.out_empty         (),                                     //   (terminated)
		.in_error          (1'b0),                                 //   (terminated)
		.out_error         (),                                     //   (terminated)
		.in_channel        (1'b0),                                 //   (terminated)
		.out_channel       (),                                     //   (terminated)
		.space_avail_data  ()                                      //   (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (clk_50_in_clk),                  //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule