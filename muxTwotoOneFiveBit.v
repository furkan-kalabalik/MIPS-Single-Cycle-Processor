module muxTwotoOneFiveBit(in1, in2, sel, out);
input [4:0] in1;
input [4:0] in2;
input sel;
output [4:0] out;

muxTwotoOne one(in1[0], in2[0], sel,out[0]);
muxTwotoOne two(in1[1], in2[1], sel,out[1]);
muxTwotoOne three(in1[2], in2[2], sel,out[2]);
muxTwotoOne four(in1[3], in2[3], sel,out[3]);
muxTwotoOne five(in1[4], in2[4], sel,out[4]);

endmodule