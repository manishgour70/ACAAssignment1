`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:38:49 01/30/2020 
// Design Name: 
// Module Name:    multiplexer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module multiplexer(data0,data1,data2,data3,data4,data5,data6,data7,selectLine,Output);
input [31:0]data0,data1,data2,data3,data4,data5,data6,data7;
input [2:0]selectLine;
output [31:0]Output;
reg [31:0] Output;

always @ (data0 or data1 or data2 or data3 or data4 or data5 or data6 or data7 or selectLine) 

begin 

 case (selectLine) 

  3'b000 : Output = data0; 

  3'b001 : Output = data1; 

  3'b010 : Output = data2; 

  3'b011 : Output = data3; 

  3'b100 : Output = data4; 

  3'b101 : Output = data5; 

  3'b110 : Output = data6; 

  3'b111 : Output = data7; 

  default : Output = 32'bx; 

  //If input is undefined then output is undefined 

 endcase 

end  

endmodule


module multiplexer_test;

	// Inputs
	reg [31:0] data0;
	reg [31:0] data1;
	reg [31:0] data3;
	reg [31:0] data2;
	reg [31:0] data4;
	reg [31:0] data5;
	reg [31:0] data6;
	reg [31:0] data7;
	reg [2:0] selectLine;

	// Outputs
	wire [31:0] Output;

	// Instantiate the Unit Under Test (UUT)
	multiplexer uut (
		.data0(data0), 
		.data1(data1), 
		.data2(data2), 
		.data3(data3), 
		.data4(data4), 
		.data5(data5), 
		.data6(data6), 
		.data7(data7), 
		.selectLine(selectLine), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		data0 = 32'd0;
		data1 = 32'd1;
		data2 = 32'd2;;
		data3 = 32'd3;
		data4 = 32'd4;
		data5 = 32'd5;
		data6 = 32'd6;
		data7 = 32'd7;
		selectLine = 3'b000;
		#100
		
		data0 = 32'd0;
		data1 = 32'd1;
		data2 = 32'd2;;
		data3 = 32'd3;
		data4 = 32'd4;
		data5 = 32'd5;
		data6 = 32'd6;
		data7 = 32'd7;
		selectLine = 3'b001;

		// Wait 100 ns for global reset to finish
		#100;
		
		data0 = 32'd0;
		data1 = 32'd1;
		data2 = 32'd2;;
		data3 = 32'd3;
		data4 = 32'd4;
		data5 = 32'd5;
		data6 = 32'd6;
		data7 = 32'd7;
		selectLine = 3'b010;
		#100;
		
      data0 = 32'd0;
		data1 = 32'd1;
		data2 = 32'd2;;
		data3 = 32'd3;
		data4 = 32'd4;
		data5 = 32'd5;
		data6 = 32'd6;
		data7 = 32'd7;
		selectLine = 3'b011;
		#100;
		
		data0 = 32'd0;
		data1 = 32'd1;
		data2 = 32'd2;;
		data3 = 32'd3;
		data4 = 32'd4;
		data5 = 32'd5;
		data6 = 32'd6;
		data7 = 32'd7;
		selectLine = 3'b100;
		#100;
		
		data0 = 32'd0;
		data1 = 32'd1;
		data2 = 32'd2;;
		data3 = 32'd3;
		data4 = 32'd4;
		data5 = 32'd5;
		data6 = 32'd6;
		data7 = 32'd7;
		selectLine = 3'b101;
		#100;
      
		data0 = 32'd0;
		data1 = 32'd1;
		data2 = 32'd2;;
		data3 = 32'd3;
		data4 = 32'd4;
		data5 = 32'd5;
		data6 = 32'd6;
		data7 = 32'd7;
		selectLine = 3'b110;
		#100;
		
		data0 = 32'd0;
		data1 = 32'd1;
		data2 = 32'd2;;
		data3 = 32'd3;
		data4 = 32'd4;
		data5 = 32'd5;
		data6 = 32'd6;
		data7 = 32'd7;
		selectLine = 3'b111;
		#100;
        
        

	end
      
endmodule

