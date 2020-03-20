module ALU(input [31:0]acc,input [31:0]din,input cin,input clk,input rst,input [1:0] aluSelect,
			output reg [31:0]  alu_out,output reg c_out);

	reg [31:0] c_out1;
	integer i;
	always @(posedge clk,posedge rst)
	begin
	case(aluSelect)
	2'd0: begin alu_out <= 32'd0;
			c_out <= 1'b0; end
	2'd1:begin alu_out=acc+din+cin; end 
	2'd2:begin alu_out <= ~acc;
			c_out <= 1'b0;end
	2'd3:begin alu_out <= ( acc & din ) ;
			c_out <= 1'b0;end
	endcase
	end
endmodule
`timescale 1ns / 1ps
module aluTestBench;

	// Inputs
	reg [31:0] acc;
	reg [31:0] din;
	reg cin;
	reg clk;
	reg rst;
	reg [1:0] aluSelect;

	// Outputs
	wire [31:0] alu_out;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.acc(acc), 
		.din(din), 
		.cin(cin), 
		.clk(clk), 
		.rst(rst), 
		.aluSelect(aluSelect), 
		.alu_out(alu_out), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		acc = 32'd10;
		din = 32'd10;
		cin = 0;
		clk = 0;
		rst = 0;
		aluSelect = 2;
		#100;
        
		acc = 32'b10101100101001101010110110110110;
		din = 32'b10101100101001101010110110110110;
		cin = 0;
		clk = 1;
		rst = 0;
		aluSelect = 2;
		#100;
		
		acc = 32'b10101100101001101010110110110110;
		din = 32'b10101100101001101010110110110110;
		cin = 0;
		clk = 0;
		rst = 0;
		aluSelect = 3;
		#100;
		
		acc = 32'b10101100101001101010110110110110;
		din = 32'b10101100101001101010110010100110;
		cin = 0;
		clk = 1;
		rst = 0;
		aluSelect = 3;
		#100;

	end
      
endmodule

