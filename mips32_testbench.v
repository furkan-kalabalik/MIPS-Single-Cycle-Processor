module mips32_testbench ();
wire [31:0] result;
reg clk;
mips32 test1(result, clk);


initial begin
//you can give here, like below this
//instruction_set = 32'b00000010000100011001000000100000; #10; // rs=$16 rt=$17 rd=$18 s2=s0+s1 		add  s2 s0 s1
//or you can take instructions from file
//readmemb("filename", instruction_set);

//Continue for all instruction types 
//Must be least 9*2=18 control lines (There must be at least 2 tests for each instruction)
//You can change the inside of the register.mem file as desired.

//end of the running, output files must be created/updated (register file & data file)

clk = 1;
//instruction = 32'b10000000011010000000000000000000; 		// rs = 3 rt = 8 imm = 0 			lb $8 0($3)
//#10 instruction = 32'b10000000010010010000000000000010;	// rs = 2 rt = 9 imm = 2			lb $9 2($2)
//#10 instruction = 32'b10010000000001000000000000010100;	//rs = 0 rt = 4 imm = 20			lbu $4 20($0)
//#10 instruction = 32'b10010000001001010000000000000000;  //rs = 1 rt = 5 imm = 0				lbu $5 0($1)
//#10 instruction = 32'b10000100011101000000000000010000;  //rs = 3 rt = 20 imm =16			lh $20 16($3)
//#10 instruction = 32'b10000100010101010000000000010110;  //rs = 2 rt = 21 imm = 22			lh $21 22($2)
//#10 instruction = 32'b10010100001101100000000000011001;	//rs = 1 rt = 22 imm = 25			lhu $22 25($1)
//#10 instruction = 32'b10010100011101110000000000011101;	//rs = 3 rt = 23 imm = 29			lhu $23 29($3)
//#10 instruction = 32'b00111100000111100000000000000001;
//instruction = 32'b10100000011010100000000000111111;			//rs = 0 rt = 30 imm = 1			lui $30, 1
//#20 instruction = 32'b10001100000011010000000001100010;	//rs = 0 rt = 13 imm = 49			lw $13, 98($0)
//#20 instruction = 32'b10100000001010110000000000111111;
//#10 instruction = 32'b10001100000111010000000000110000;	//rs = 0 rt = 29 imm = 48			lw $29, 48($0)
//#10 instruction = 32'b10100000011010100000000000111111;	//rs = 3 rt = 10 imm = 63			sb $10, 63($3)
//#10 instruction = 32'b10100000001010110000000000111111;	//rs = 1 rt = 11 imm = 63			sb $11, 63($1)
//#10 instruction = 32'b10100100010100100000000011110110;	//rs = 2 rt = 18 imm = 246			sh $18, 246($2)
//#10 instruction = 32'b10100100011001100000000011101101;	//rs = 3 rt = 6  imm = 237			sh	$6, 237($3)
//#10 instruction = 32'b10101100000011110000000011011000;	//rs = 0 rt = 15 imm = 216			sw $15, 216($0)
//#10 instruction = 32'b10101100001100000000000011011000;	//rs = 1 rt = 16 imm = 216			sw $16, 216($1)
end

always
	#5 clk = ~clk;
always
	#20 $display("Result: %b", result);
endmodule