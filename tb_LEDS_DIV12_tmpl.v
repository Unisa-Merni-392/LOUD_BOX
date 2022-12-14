//Verilog testbench template generated by SCUBA Diamond (64-bit) 3.11.2.446
`timescale 1 ns / 1 ps
module tb;
    reg Clock = 0;
    reg Clk_En = 0;
    reg Aclr = 0;
    wire [11:0] Q;

    integer i0 = 0, i1 = 0, i2 = 0, i3 = 0;

    GSR GSR_INST (.GSR(1'b1));
    PUR PUR_INST (.PUR(1'b1));

    LEDS_DIV12 u1 (.Clock(Clock), .Clk_En(Clk_En), .Aclr(Aclr), .Q(Q)
    );

    always
    #5.00 Clock <= ~ Clock;

    initial
    begin
       Clk_En <= 1'b0;
      #100;
      @(Aclr == 1'b0);
      for (i2 = 0; i2 < 100; i2 = i2 + 1) begin
        @(posedge Clock);
        #1  Clk_En <= 1'b1;
      end
      for (i2 = 0; i2 < 10; i2 = i2 + 1) begin
        @(posedge Clock);
        #1  Clk_En <= 1'b0;
      end
       Clk_En <= 1'b1;
    end
    initial
    begin
       Aclr <= 1'b1;
      #100;
       Aclr <= 1'b0;
    end
endmodule