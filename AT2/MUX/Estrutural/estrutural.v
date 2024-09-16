module mux_estrutural(D, S, Y);

    input [3:0] D;
    input [1:0] S;
    output Y;
    wire n_s1, n_s0, y1, y2, y3, y4;

    not(n_s1, S[1]);
    not(n_s0, S[0]);

    and(y1, n_s1, n_s0, D[0]);
    and(y2, n_s1, S[0], D[1]);
    and(y3, S[1], n_s0, D[2]);
    and(y4, S[1], S[0], D[3]);

    or(Y, y1, y2, y3, y4);

    endmodule
