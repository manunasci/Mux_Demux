`timescale 1ns/1ns
`include "comportamental.v"

module comportamental_tb;

    reg [3:0] D;
    reg [1:0] S;
    wire Y;
    mux_comportamental uut(D, S, Y);

    initial begin
        $dumpfile("comportamental_tb.vcd");
        $dumpvars(0, comportamental_tb);

        D = 4'b0001;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;

        $display("Teste Completo");
    end
endmodule
