
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:10:55 01/30/2020
// Design Name:   registerFile
// Module Name:   /home/ise/Desktop/Assignments/New/registerFile.v
// Project Name:  New
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registerFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module registerFileTestBench;

	// Inputs
	reg [31:0] din;
	reg OE;
	reg [2:0] sel;
	reg LE;
	reg clk;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	registerFile uut (
		.din(din), 
		.OE(OE), 
		.sel(sel), 
		.LE(LE), 
		.clk(clk), 
		.out(out)
	);

initial begin
	clk=0;
	forever #50 clk=!clk;
	end
	initial begin
		// Initialize Inputs
		din = 32'b10101100101001101010110010100110;
		OE = 0;
		sel = 000;
		LE = 1;
		//clk = 0;
		#100;
		din = 32'b10101100101001101010110010100110;
		OE = 0;
		sel = 000;
		LE = 1;
		//clk = 1;
		#100;
		
		din = 32'b10101100101001101010110010100110;
		OE = 1;
		sel = 000;
		LE = 0;
		//clk = 1;
		#100

		//2
		din = 32'b10101100101001101010110011110110;
		OE = 0;
		sel = 001;
		LE = 1;
		//clk = 1;
		#100;
		
		din = 32'b10101100101001101010110011110110;
		OE = 1;
		sel = 001;
		LE = 0;
		//clk = 1;
		#100
		
		//3
		din = 32'b10101100101001101010110010100110;
		OE = 0;
		sel = 010;
		LE = 1;
		//clk = 1;
		#100;
		
		din = 32'b10101100101001101010110010100110;
		OE = 1;
		sel = 010;
		LE = 0;
		//clk = 1;
		#100
		
		//4
		din = 32'b10101100101001101010110010100110;
		OE = 0;
		sel = 011;
		LE = 1;
		clk = 1;
		#100;
		
		din = 32'b10101100101001101010110010100110;
		OE = 1;
		sel = 011;
		LE = 0;
		clk = 1;
		#100;
		
		//5
		din = 32'b10101100101001101010110010100110;
		OE = 0;
		sel = 100;
		LE = 1;
		clk = 1;
		#100;
		
		din = 32'b10101100101001101010110010100110;
		OE = 1;
		sel = 100;
		LE = 0;
		clk = 1;
		#100;
		
		//6
		din = 32'b10101100101001101010110010100110;
		OE = 0;
		sel = 101;
		LE = 1;
		clk = 1;
		#100;
		
		din = 32'b10101100101001101010110010100110;
		OE = 1;
		sel = 101;
		LE = 0;
		clk = 1;
		#100;
		
		//7
		din = 32'b10101100101001101010110010100110;
		OE = 0;
		sel = 110;
		LE = 1;
		clk = 1;
		#100;
		
		din = 32'b10101100101001101010110010100110;
		OE = 1;
		sel = 110;
		LE = 0;
		clk = 1;
		#100;
		
		//8
		din = 32'b10101100101001101010110010100110;
		OE = 0;
		sel = 111;
		LE = 1;
		clk = 1;
		#100;
		
		din = 32'b10101100101001101010110010100110;
		OE = 1;
		sel = 111;
		LE = 0;
		clk = 1;
		#100;
		
	end
      
endmodule



module registerFile(input [31:0]din,input OE,input [2:0] sel ,input LE,input clk,output reg [31:0] out);
reg [31:0]R[7:0];
parameter s1=3'd0,s2=3'd1,s3=3'd2,s4=3'd3,s5=3'd4,s6=3'd5,s7=3'd6,s8=3'd7;
always@(posedge clk)
begin
case(sel)
s1 : if(LE)
      R[0]=din;
      else if(OE)
      out =R[0];
s2 : if(LE)
      R[1]=din;
      else if(OE)
      out =R[1];
s3 : if(LE)
      begin 
      R[2]=din;
      end
      else if(OE)
      out =R[2];
s4 : if(LE)
      begin
     R[3]=din;
     end
      else if(OE)
      out =R[3];
s5 : if(LE)
      R[4]=din;
      else if(OE)
      out =R[4];
s6 : if(LE)
      R[5]=din;
      else if(OE)
      out =R[5];
s7 : if(LE)
      R[6]=din;
      else if(OE)
      out =R[6];
s8 : if(LE)
      R[7]=din;
      else if(OE)
      out =R[7];
endcase
end
endmodule


