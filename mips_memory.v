module mips_memory
( read_data, write_data, address, memWrite, memRead, clk);

	output [31:0] read_data;
	input [31:0] write_data;
	input [31:0] address;
	input memWrite, memRead, clk;
	
	reg [31:0] memory [255:0];
	
	initial begin
		$readmemb("data.txt", memory);
	end
	
	assign read_data = (memRead == 1'b1)? memory[address] : 32'bx;
	

   always @(posedge clk) begin
		if(memWrite == 1'b1) begin
			$display("Memorye store edilen data: %b", write_data);
			memory[address] <= write_data;
			$writememb("data.txt", memory);
		end
	end
		
	//
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