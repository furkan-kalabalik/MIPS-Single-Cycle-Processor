module muxTwotoOne32Bit(in1, in2, sel, out);
input [31:0] in1;
input [31:0] in2;
input sel;
output [31:0] out;

muxTwotoOne one(in1[0], in2[0], sel,out[0]);
muxTwotoOne two(in1[1], in2[1], sel,out[1]);
muxTwotoOne three(in1[2], in2[2], sel,out[2]);
muxTwotoOne four(in1[3], in2[3], sel,out[3]);
muxTwotoOne five(in1[4], in2[4], sel,out[4]);
muxTwotoOne six(in1[5], in2[5], sel,out[5]);
muxTwotoOne seven(in1[6], in2[6], sel,out[6]);
muxTwotoOne eight(in1[7], in2[7], sel,out[7]);
muxTwotoOne nine(in1[8], in2[8], sel,out[8]);
muxTwotoOne ten(in1[9], in2[9], sel,out[9]);
muxTwotoOne eleven(in1[10], in2[10], sel,out[10]);
muxTwotoOne twelve(in1[11], in2[11], sel,out[11]);
muxTwotoOne thirteen(in1[12], in2[12], sel,out[12]);
muxTwotoOne fourteen(in1[13], in2[13], sel,out[13]);
muxTwotoOne fifteen(in1[14], in2[14], sel,out[14]);
muxTwotoOne sixteen(in1[15], in2[15], sel,out[15]);
muxTwotoOne seventeen(in1[16], in2[16], sel,out[16]);
muxTwotoOne eighteen(in1[17], in2[17], sel,out[17]);
muxTwotoOne nineteen(in1[18], in2[18], sel,out[18]);
muxTwotoOne twenty(in1[19], in2[19], sel,out[19]);
muxTwotoOne twentyone(in1[20], in2[20], sel,out[20]);
muxTwotoOne twentytwo(in1[21], in2[21], sel,out[21]);
muxTwotoOne twentythree(in1[22], in2[22], sel,out[22]);
muxTwotoOne twentyfour(in1[23], in2[23], sel,out[23]);
muxTwotoOne twentyfive(in1[24], in2[24], sel,out[24]);
muxTwotoOne twentysix(in1[25], in2[25], sel,out[25]);
muxTwotoOne twentyseven(in1[26], in2[26], sel,out[26]);
muxTwotoOne twentyeight(in1[27], in2[27], sel,out[27]);
muxTwotoOne twentynine(in1[28], in2[28], sel,out[28]);
muxTwotoOne thirty(in1[29], in2[29], sel,out[29]);
muxTwotoOne thirtyone(in1[30], in2[30], sel,out[30]);
muxTwotoOne thirtytwo(in1[31], in2[31], sel,out[31]);


endmodule