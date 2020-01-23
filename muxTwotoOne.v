module muxTwotoOne(in1, in2, sel,out);
input in1,in2,sel;
output out;
wire notSel, and1, and2;
not(notSel, sel);
and(and1, in2, sel);
and(and2, notSel, in1);
or(out, and1, and2);

endmodule