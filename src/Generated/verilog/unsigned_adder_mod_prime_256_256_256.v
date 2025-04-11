module U_adder_256_mod (
    input  [255:0] a,
    input  [255:0] b,
    output [255:0] result
);

    // Define the modulus as a 256-bit constant
    parameter [255:0] MODULUS = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF43;

    // Compute the sum
    wire [256:0] sum_full = a + b; // 257-bit to handle overflow

    // Compute sum modulo the given prime
    assign result = (sum_full >= MODULUS) ? (sum_full - MODULUS) : sum_full;

endmodule