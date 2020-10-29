/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.11.2.446 */
/* Module Version: 2.8 */
/* /usr/local/diamond/3.11_x64/ispfpga/bin/lin64/scuba -w -n TABLE_3_2 -lang verilog -synth lse -bus_exp 7 -bb -arch xo2c00 -type rom -addr_width 5 -num_rows 32 -data_width 1 -outdata UNREGISTERED -memfile /home/brane2/LATT_DEMO_PROJ/LOUD_BOX/TABLE_3_2.mem -memformat hex  */
/* Sat Jun 20 17:28:37 2020 */


`timescale 1 ns / 1 ps
module TABLE_3_2 (Address, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [4:0] Address;
    output wire [0:0] Q;


    defparam mem_0_0.initval =  32'h0117177F ;
    ROM32X1A mem_0_0 (.AD4(Address[4]), .AD3(Address[3]), .AD2(Address[2]), 
        .AD1(Address[1]), .AD0(Address[0]), .DO0(Q[0]));



    // exemplar begin
    // exemplar end

endmodule
