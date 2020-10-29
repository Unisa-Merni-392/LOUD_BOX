/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.11.2.446 */
/* Module Version: 4.6 */
/* /usr/local/diamond/3.11_x64/ispfpga/bin/lin64/scuba -w -n LEDS_DIV12 -lang verilog -synth lse -bus_exp 7 -bb -arch xo2c00 -type counter -up -width 12 -cnt_low 0 -cnt_up 4095  */
/* Mon Jun 22 18:36:20 2020 */


`timescale 1 ns / 1 ps
module LEDS_DIV12 (Clock, Clk_En, Aclr, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire Clock;
    input wire Clk_En;
    input wire Aclr;
    output wire [11:0] Q;

    wire scuba_vlo;
    wire scuba_vhi;
    wire idataout0;
    wire idataout1;
    wire cnt_ci;
    wire idataout2;
    wire idataout3;
    wire co0;
    wire idataout4;
    wire idataout5;
    wire co1;
    wire idataout6;
    wire idataout7;
    wire co2;
    wire idataout8;
    wire idataout9;
    wire co3;
    wire idataout10;
    wire idataout11;
    wire co5;
    wire co4;

    FD1P3DX FF_11 (.D(idataout0), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[0]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_10 (.D(idataout1), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[1]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_9 (.D(idataout2), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[2]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_8 (.D(idataout3), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[3]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_7 (.D(idataout4), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[4]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_6 (.D(idataout5), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[5]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_5 (.D(idataout6), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[6]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_4 (.D(idataout7), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[7]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_3 (.D(idataout8), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[8]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_2 (.D(idataout9), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[9]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_1 (.D(idataout10), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[10]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_0 (.D(idataout11), .SP(Clk_En), .CK(Clock), .CD(Aclr), .Q(Q[11]))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    FADD2B cnt_cia (.A0(scuba_vlo), .A1(scuba_vhi), .B0(scuba_vlo), .B1(scuba_vhi), 
        .CI(scuba_vlo), .COUT(cnt_ci), .S0(), .S1());

    CU2 cnt_0 (.CI(cnt_ci), .PC0(Q[0]), .PC1(Q[1]), .CO(co0), .NC0(idataout0), 
        .NC1(idataout1));

    CU2 cnt_1 (.CI(co0), .PC0(Q[2]), .PC1(Q[3]), .CO(co1), .NC0(idataout2), 
        .NC1(idataout3));

    CU2 cnt_2 (.CI(co1), .PC0(Q[4]), .PC1(Q[5]), .CO(co2), .NC0(idataout4), 
        .NC1(idataout5));

    CU2 cnt_3 (.CI(co2), .PC0(Q[6]), .PC1(Q[7]), .CO(co3), .NC0(idataout6), 
        .NC1(idataout7));

    CU2 cnt_4 (.CI(co3), .PC0(Q[8]), .PC1(Q[9]), .CO(co4), .NC0(idataout8), 
        .NC1(idataout9));

    CU2 cnt_5 (.CI(co4), .PC0(Q[10]), .PC1(Q[11]), .CO(co5), .NC0(idataout10), 
        .NC1(idataout11));



    // exemplar begin
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
