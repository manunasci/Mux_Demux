`timescale 1ns/1ns
`include "estrutural.v"

module estrutural_tb;

    reg [3:0] D;
    reg [1:0] S;
    wire Y;
    mux_estrutural uut(D, S, Y);

    initial begin
        $dumpfile("estrutural_tb.vcd");
        $dumpvars(0, estrutural_tb);

        D = 4'b0001;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;

        $display("Teste Completo");
    end
endmodule
