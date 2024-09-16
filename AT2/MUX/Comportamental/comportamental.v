module mux_comportamental(D, S, Y);

    input [3:0] D;
    input [1:0] S;
    output reg Y;

    always @(D or S) begin
        if (S == 2'b00)
                Y = D[0];
        else if (S == 2'b01)
                Y = D[1];
        else if (S == 2'b10)
                Y = D[2];
        else if (S == 2'b11)
                Y = D[3];    
    end
endmodule