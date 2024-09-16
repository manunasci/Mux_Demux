module demux_estrutural(D, S, Y);

    input D;
    input [1:0] S;
    output [3:0] Y;
    wire n_s1, n_s0;

    not(n_s1, S[1]);
    not(n_s0, S[0]);

    and(Y[0], n_s1, n_s0, D);
    and(Y[1], n_s1, S[0], D);
    and(Y[2], S[1], n_s0, D);
    and(Y[3], S[1], S[0], D);

 endmodule