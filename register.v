//Register Module using DFLIPFLOP


module Register(input [31:0]Data,input clock,OE,LE,output[31:0] Registerr);
	wire [31:0] Q;
	wire [31:0] QNot;
	reg [31:0] Registerr;
	genvar i;
	for(i=0;i<32;i=i+1)
		begin
			DFlipFlop dd1(.q(Q[i]),.qnot(QNot[i]),.D(Data[i]),.LE(LE),.clk(clock));
		end;
		always@(clock)
		begin
		if(OE)
		Registerr<=Data;
		end
		
endmodule

module DFlipFlop (output reg q,output reg qnot,input D,LE,clk);
always@(clk)
		begin
		if(LE)
		qnot<=~D;
		q<=D;
		
		end
endmodule

		
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:28:34 01/30/2020
// Design Name:   Register
// Module Name:   /home/ise/Desktop/Assignments/assignment/register_test.v
// Project Name:  assignment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_test;

	// Inputs
	reg [31:0] Data;
	reg clock;
	reg OE;
	reg LE;

	// Outputs
	wire [31:0] Registerr;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.Data(Data), 
		.clock(clock), 
		.OE(OE), 
		.LE(LE), 
		.Registerr(Registerr)
	);

	initial begin
		// Initialize Inputs
		//1
		Data = 32'b1010_1100_1010_0110_1010_1100_1010_0110;
		clock = 0;
		OE = 0;
		LE = 1;
		
		#100;
		Data = 32'b1010_1100_1010_0110_1010_1100_1010_0110;
		clock = 1;
		OE = 0;
		LE = 1;
		#100;
		
		//2
		Data = 32'b1010_1100_1010_0110_1010_1100_1010_0110;
		clock = 0;
		OE = 1;
		LE = 0;
		#100;
		
		Data = 32'b1010_1100_1010_0110_1010_1100_1010_0110;
		clock = 1;
		OE = 1;
		LE = 0;
		#100;
		
			
		//3
		Data = 32'b1010_1110_1010_0111_1010_1110_1010_0111;
		clock = 0;
		OE = 0;
		LE = 1;
		#100;
		
		Data = 32'b1010_1110_1010_0111_1010_1110_1010_0111;
		clock = 1;
		OE = 0;
		LE = 1;
		#100;
		//4
		Data = 32'b1010_1110_1010_0111_1010_1110_1010_0111;
		clock = 0;
		OE = 0;
		LE = 1;
		#100;
		
		Data = 32'b1110_1110_1010_0110_1110_1110_1010_0110;
		clock = 1;
		OE = 0;
		LE = 1;
		#100;
		
		//5
		Data = 32'b1010_1110_1010_0111_1010_1110_1010_0111;
		clock = 0;
		OE = 1;
		LE = 0;
		#100;
		
		Data = 32'b1110_1110_1010_0110_1110_1110_1010_0110;
		clock = 1;
		OE = 1;
		LE = 0;
		#100;
		//6
		Data = 32'b1010_1110_1010_0111_1010_1110_1010_0111;
		clock = 0;
		OE = 0;
		LE = 1;
		#100;
		
		Data = 32'b1110_1110_1010_0110_1110_1110_1010_0110;
		clock = 1;
		OE = 0;
		LE = 1;
		#100;

		//7
		Data = 32'b1010_1110_1010_0111_1010_1110_1010_0111;
		clock = 0;
		OE = 1;
		LE = 0;
		#100;
		
		Data = 32'b1110_1110_1010_0110_1110_1110_1010_0110;
		clock = 1;
		OE = 1;
		LE = 0;
		#100;
	end
      
endmodule

		