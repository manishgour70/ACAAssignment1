`timescale 1ns / 1ps
 
// Create Date:    06:41:06 01/30/2020 
// Design Name: 
//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// author: Manish Gour
// Program 1: 3*8 decoder
// Create Date: 13:36:33 01/22/2020 
// Design Name: 3*8 decoder
// Module Name:    Decoder3to8 
// Project Name: Assignment1
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
//parameters inputs--> a,b,c
//parameters outputs--> d0,d1,d2,d3,d4,d5,d6,d7

module Decoder(a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);
	input a,b,c;
	output d0,d1,d2,d3,d4,d5,d6,d7;
	assign d0=(~a&~b&~c),
			 d1=(~a&~b&c),
			 d2=(~a&b&~c),
			 d3=(~a&b&c),
			 d4=(a&~b&~c),
			 d5=(a&~b&c),
			 d6=(a&b&~c),
			 d7=(a&b&c);
endmodule //Decoder

module TestModule;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire d0;
	wire d1;
	wire d2;
	wire d3;
	wire d4;
	wire d5;
	wire d6;
	wire d7;

	// Instantiate the Unit Under Test (UUT)
	Decoder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6), 
		.d7(d7)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		a = 0;
		b = 0;
		c = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		   
		a = 0;
		b = 1;
		c = 0;
		#100;
		
		   
		a = 0;
		b = 1;
		c = 1;
		#100;
		
		a = 1;
		b = 0;
		c = 1;
		#100;
		
		a = 1;
		b = 1;
		c = 0;
		#100;
		
		a = 1;
		b = 1;
		c = 1;
		#100;
		
	end
      
endmodule //Decoder


