module unsigned_less_than_256_256_1(
input  [255:0] a,
input  [255:0] b,
output         result
);
assign result = (a < b) ? 1'b1 : 1'b0;
endmodule
