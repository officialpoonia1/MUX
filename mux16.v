module mux16x1(output reg y, input [15:0] i, input [3:0] s);
always @(*) begin
    y = i[s];
end
endmodule