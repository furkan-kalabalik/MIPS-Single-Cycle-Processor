module signExtend16Bit(num, result);
input [15:0] num;
output [31:0] result;
and(result[0], num[0], 1'b1);
and(result[1], num[1], 1'b1);
and(result[2], num[2], 1'b1);
and(result[3], num[3], 1'b1);
and(result[4], num[4], 1'b1);
and(result[5], num[5], 1'b1);
and(result[6], num[6], 1'b1);
and(result[7], num[7], 1'b1);
and(result[8], num[8], 1'b1);
and(result[9], num[9], 1'b1);
and(result[10], num[10], 1'b1);
and(result[11], num[11], 1'b1);
and(result[12], num[12], 1'b1);
and(result[13], num[13], 1'b1);
and(result[14], num[14], 1'b1);
and(result[15], num[15], 1'b1);
and(result[16], num[15], 1'b1);
and(result[17], num[15], 1'b1);
and(result[18], num[15], 1'b1);
and(result[19], num[15], 1'b1);
and(result[20], num[15], 1'b1);
and(result[21], num[15], 1'b1);
and(result[22], num[15], 1'b1);
and(result[23], num[15], 1'b1);
and(result[24], num[15], 1'b1);
and(result[25], num[15], 1'b1);
and(result[26], num[15], 1'b1);
and(result[27], num[15], 1'b1);
and(result[28], num[15], 1'b1);
and(result[29], num[15], 1'b1);
and(result[30], num[15], 1'b1);
and(result[31], num[15], 1'b1);
endmodule