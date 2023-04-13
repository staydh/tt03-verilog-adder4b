/* Generated by Yosys 0.27+22 (git sha1 53c0a6b78, clang 11.0.1-2 -fPIC -Os) */

module adder(i0, i1, s, co);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  wire _4_;
  wire _5_;
  wire _6_;
  wire _7_;
  wire ci;
  output co;
  wire co;
  input [3:0] i0;
  wire [3:0] i0;
  input [3:0] i1;
  wire [3:0] i1;
  output [3:0] s;
  wire [3:0] s;
  wire [4:0] t;
  full_adder \fa_f:1.fa_i  (
    .ci(t[0]),
    .co(_1_),
    .i0(i0[0]),
    .i1(i1[0]),
    .s(_0_)
  );
  full_adder \fa_f:2.fa_i  (
    .ci(t[1]),
    .co(_3_),
    .i0(i0[1]),
    .i1(i1[1]),
    .s(_2_)
  );
  full_adder \fa_f:3.fa_i  (
    .ci(t[2]),
    .co(_5_),
    .i0(i0[2]),
    .i1(i1[2]),
    .s(_4_)
  );
  full_adder \fa_f:4.fa_i  (
    .ci(t[3]),
    .co(_7_),
    .i0(i0[3]),
    .i1(i1[3]),
    .s(_6_)
  );
  assign t = { _7_, _5_, _3_, _1_, ci };
  assign ci = 1'h0;
  assign s = { _6_, _4_, _2_, _0_ };
  assign co = t[4];
endmodule
