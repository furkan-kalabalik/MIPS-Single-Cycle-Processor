module ALUCtrl(func, ALUop, ALUctr);
input [5:0] func;
input [1:0] ALUop;
output [2:0] ALUctr;
wire aluctr2and, not1, not2, orFunc;
and(aluctr2and, ALUop[1], func[1]);
or(ALUctr[2], ALUop[0], aluctr2and);
not(not1, ALUop[1]);
not(not2, func[2]);
or(ALUctr[1], not1, not2);
or(orFunc, func[3], func[0]);
and(ALUctr[0], ALUop[1], orFunc);
endmodule