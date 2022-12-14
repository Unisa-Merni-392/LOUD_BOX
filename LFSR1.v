/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.11.2.446 */
/* Module Version: 3.7 */
/* /usr/local/diamond/3.11_x64/ispfpga/bin/lin64/scuba -w -n LFSR1 -lang verilog -synth lse -bus_exp 7 -bb -arch xo2c00 -type lfsr -stage 16 -feedback_poly b400 -init_seed 3729 -parallel_out  */
/* Thu Jun 18 10:02:22 2020 */


`timescale 1 ns / 1 ps
module LFSR1 (Clk, Enb, Rst, Dout)/* synthesis NGD_DRC_MASK=1 */;
    input wire Clk;
    input wire Enb;
    input wire Rst;
    output wire [15:0] Dout;

    wire lfsr_oddparity;
    wire lfsr_reg_out0;
    wire lfsr_reg_out1;
    wire lfsr_reg_out2;
    wire lfsr_reg_out3;
    wire lfsr_reg_out4;
    wire lfsr_reg_out5;
    wire lfsr_reg_out6;
    wire lfsr_reg_out7;
    wire lfsr_reg_out8;
    wire lfsr_reg_out9;
    wire lfsr_reg_out10;
    wire lfsr_reg_out11;
    wire lfsr_reg_out12;
    wire lfsr_reg_out13;
    wire lfsr_reg_out15;
    wire lfsr_reg_out14;

    defparam LUT4_0.initval =  16'h6996 ;
    ROM16X1A LUT4_0 (.AD3(lfsr_reg_out10), .AD2(lfsr_reg_out12), .AD1(lfsr_reg_out13), 
        .AD0(lfsr_reg_out15), .DO0(lfsr_oddparity));

    FD1P3JX FF_15 (.D(lfsr_oddparity), .SP(Enb), .CK(Clk), .PD(Rst), .Q(lfsr_reg_out0))
             /* synthesis GSR="ENABLED" */;

    FD1P3IX FF_14 (.D(lfsr_reg_out0), .SP(Enb), .CK(Clk), .CD(Rst), .Q(lfsr_reg_out1))
             /* synthesis GSR="ENABLED" */;

    FD1P3IX FF_13 (.D(lfsr_reg_out1), .SP(Enb), .CK(Clk), .CD(Rst), .Q(lfsr_reg_out2))
             /* synthesis GSR="ENABLED" */;

    FD1P3JX FF_12 (.D(lfsr_reg_out2), .SP(Enb), .CK(Clk), .PD(Rst), .Q(lfsr_reg_out3))
             /* synthesis GSR="ENABLED" */;

    FD1P3IX FF_11 (.D(lfsr_reg_out3), .SP(Enb), .CK(Clk), .CD(Rst), .Q(lfsr_reg_out4))
             /* synthesis GSR="ENABLED" */;

    FD1P3JX FF_10 (.D(lfsr_reg_out4), .SP(Enb), .CK(Clk), .PD(Rst), .Q(lfsr_reg_out5))
             /* synthesis GSR="ENABLED" */;

    FD1P3IX FF_9 (.D(lfsr_reg_out5), .SP(Enb), .CK(Clk), .CD(Rst), .Q(lfsr_reg_out6))
             /* synthesis GSR="ENABLED" */;

    FD1P3IX FF_8 (.D(lfsr_reg_out6), .SP(Enb), .CK(Clk), .CD(Rst), .Q(lfsr_reg_out7))
             /* synthesis GSR="ENABLED" */;

    FD1P3JX FF_7 (.D(lfsr_reg_out7), .SP(Enb), .CK(Clk), .PD(Rst), .Q(lfsr_reg_out8))
             /* synthesis GSR="ENABLED" */;

    FD1P3JX FF_6 (.D(lfsr_reg_out8), .SP(Enb), .CK(Clk), .PD(Rst), .Q(lfsr_reg_out9))
             /* synthesis GSR="ENABLED" */;

    FD1P3JX FF_5 (.D(lfsr_reg_out9), .SP(Enb), .CK(Clk), .PD(Rst), .Q(lfsr_reg_out10))
             /* synthesis GSR="ENABLED" */;

    FD1P3IX FF_4 (.D(lfsr_reg_out10), .SP(Enb), .CK(Clk), .CD(Rst), .Q(lfsr_reg_out11))
             /* synthesis GSR="ENABLED" */;

    FD1P3JX FF_3 (.D(lfsr_reg_out11), .SP(Enb), .CK(Clk), .PD(Rst), .Q(lfsr_reg_out12))
             /* synthesis GSR="ENABLED" */;

    FD1P3JX FF_2 (.D(lfsr_reg_out12), .SP(Enb), .CK(Clk), .PD(Rst), .Q(lfsr_reg_out13))
             /* synthesis GSR="ENABLED" */;

    FD1P3IX FF_1 (.D(lfsr_reg_out13), .SP(Enb), .CK(Clk), .CD(Rst), .Q(lfsr_reg_out14))
             /* synthesis GSR="ENABLED" */;

    FD1P3IX FF_0 (.D(lfsr_reg_out14), .SP(Enb), .CK(Clk), .CD(Rst), .Q(lfsr_reg_out15))
             /* synthesis GSR="ENABLED" */;

    assign Dout[0] = lfsr_reg_out0;
    assign Dout[1] = lfsr_reg_out1;
    assign Dout[2] = lfsr_reg_out2;
    assign Dout[3] = lfsr_reg_out3;
    assign Dout[4] = lfsr_reg_out4;
    assign Dout[5] = lfsr_reg_out5;
    assign Dout[6] = lfsr_reg_out6;
    assign Dout[7] = lfsr_reg_out7;
    assign Dout[8] = lfsr_reg_out8;
    assign Dout[9] = lfsr_reg_out9;
    assign Dout[10] = lfsr_reg_out10;
    assign Dout[11] = lfsr_reg_out11;
    assign Dout[12] = lfsr_reg_out12;
    assign Dout[13] = lfsr_reg_out13;
    assign Dout[14] = lfsr_reg_out14;
    assign Dout[15] = lfsr_reg_out15;


    // exemplar begin
    // exemplar attribute FF_15 GSR ENABLED
    // exemplar attribute FF_14 GSR ENABLED
    // exemplar attribute FF_13 GSR ENABLED
    // exemplar attribute FF_12 GSR ENABLED
    // exemplar attribute FF_11 GSR ENABLED
    // exemplar attribute FF_10 GSR ENABLED
    // exemplar attribute FF_9 GSR ENABLED
    // exemplar attribute FF_8 GSR ENABLED
    // exemplar attribute FF_7 GSR ENABLED
    // exemplar attribute FF_6 GSR ENABLED
    // exemplar attribute FF_5 GSR ENABLED
    // exemplar attribute FF_4 GSR ENABLED
    // exemplar attribute FF_3 GSR ENABLED
    // exemplar attribute FF_2 GSR ENABLED
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
