module ControlUnit(op, RegWrite, AluSrc, MemtoReg, MemRead, MemWrite, ALUop, LuiCtrl, LoadCtrl, StoreCtrl);
input [5:0] op;
wire not0,not1,not2,not3,not4,not5, Rtype, lw, sw, lui, lb, lbu, lh, lhu, sh, sb;
output RegWrite, AluSrc, MemtoReg, MemRead, MemWrite, LuiCtrl, LoadCtrl, StoreCtrl;
output [1:0] ALUop;
not(not0, op[0]);
not(not1, op[1]);
not(not2, op[2]);
not(not3, op[3]);
not(not4, op[4]);
not(not5, op[5]);
and(sh, op[5], not4, op[3], not2, not1, op[0]);
and(sb, op[5], not4, op[3], not2, not1, not0);
and(lb, op[5], not4, not3, not2, not1, not0);
and(lbu, op[5], not4, not3, op[2], not1, not0);
and(lh, op[5], not4, not3, not2, not1, op[0]);
and(lhu, op[5], not4, not3, op[2], not1, op[0]);
and(lui, not5, not4, op[3], op[2], op[1], op[0]);
and (lw, op[5], not4, not3, not2, op[1], op[0]);
and (sw, op[5], not4, op[3], not2, op[1],op[0]);
or(RegWrite, lw, lui, lb, lbu, lh, lhu);
or(AluSrc, lw, sw, lb, lbu, lh, lhu, sh, sb);
or(MemtoReg, lw, lb, lbu, lh, lhu);
or(MemRead, lw, lb, lbu, lh, lhu);
or(MemWrite, sw, sh, sb);
and(ALUop[1], 1'b0, 1'b1);
and(ALUop[0], 1'b0, 1'b1);
and(LuiCtrl, lui, 1'b1);
and(LoadCtrl, lw, 1'b1);
and(StoreCtrl, sw, 1'b1);
endmodule