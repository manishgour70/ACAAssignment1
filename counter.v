module counter(input INR,CLR,clk,output [3:0]count);
	reg [3:0]count;
	always@(clk)
	begin
		if(CLR&&clk)
		count=4'd0;
		else if(INR&&clk)
		count =count +1;
		else if(CLR && INR && ~clk)
		count=count-1;
end

endmodule

`timescale 1ns / 1ps
module counter_test;

	// Inputs
	reg INR;
	reg CLR;
	reg clk;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.INR(INR), 
		.CLR(CLR), 
		.clk(clk), 
		.count(count)
	);

	initial begin
			// Initialize Inputs
		INR = 0;
		CLR = 1;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		INR = 1;
		CLR = 0;
		clk = 0;
		#100;
		
		INR = 1;
		CLR = 0;
		clk = 1;
		#100;
		
		INR = 1;
		CLR = 0;
		clk = 0;
		#100
		INR = 1;
		CLR = 0;
		clk = 1;
		#100;
		
		INR = 1;
		CLR = 0;
		clk = 0;
		#100;
		
		INR = 1;
		CLR = 1;
		clk = 0;
		#100;
		INR = 1;
		CLR = 0;
		clk = 1;
		#100;

	end
      
endmodule

