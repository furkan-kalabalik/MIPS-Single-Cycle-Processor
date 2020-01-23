module program_counter(instr, clk);
input clk;
output [31:0] instr;
reg [31:0] instr;
reg [31:0] instructions [31:0];
reg [31:0] counter;


initial begin
		$readmemb("instr.txt", instructions);
		counter = 5'b00000;
end

always @(posedge clk) begin
	counter <= counter + 32'b1;
	if(counter % 2 == 0) begin
		instr <= instructions[counter/2];
	end
end
always
	#19 $display("Instruction: %b", instr);
endmodule