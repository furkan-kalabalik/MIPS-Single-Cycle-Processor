module mips_registers
( read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk );

	output [31:0] read_data_1;
	output [31:0] read_data_2;
	input [31:0] write_data;
	input [4:0] read_reg_1, read_reg_2, write_reg;
	input signal_reg_write, clk;
	
	reg [31:0] registers [31:0];
	
	initial begin
		$readmemb("registers.mem", registers);
	end
	
	assign read_data_1 = registers[read_reg_1];
	assign read_data_2 = registers[read_reg_2];
	
	always @(posedge clk) begin
		if(signal_reg_write) begin
			$display("Registera load edilen data: %b", write_data);
			registers[write_reg] <= write_data;
			$writememb("registers.mem", registers);
		end
	end
		
	//this module use behavioral verilog
	//for register & data memory part, use files
	//register.mem or register.txt (file extension does not important)
	
	//for memory file read & write using followings
	//$readmemb("registers.mem", registers);
	//$writememb("registers.mem", registers);
	
	
	//--- continuos assignment --- 
	//output data;
	//assign data = registers[adress];
	//--- non-blocking assignment ---
	//register data;
	//always @(posedge clk) begin
	//data <= registers[adress]; end
	
endmodule