module tb;
reg [15:0] i;
reg [3:0] s;
wire y;

mux16x1 uut(y, i, s);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    i = 16'b1010101010101010;

    s = 4'b0000; #10;
    s = 4'b0001; #10;
    s = 4'b0010; #10;
    s = 4'b0101; #10;
    s = 4'b1111; #10;

    $finish;
end

initial begin
    $monitor("s=%b y=%b", s, y);
end
endmodule