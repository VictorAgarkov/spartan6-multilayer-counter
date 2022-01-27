`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:34 01/26/2022 
// Design Name: 
// Module Name:    t64 
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
module t64
(
	input c,          // clock
	input ce,         // clock enable
	input [5:0] s,    // select
	input r,          // sync. reset
	input d,          // data in
	output q          // data out
);

	reg [63:0] mem;
	assign q = mem[s];
	
	
	initial begin
		mem <= 0;
	end
	
	always@(posedge c) begin
	
		if(r | ce) begin
			mem[s] <= r ? 0 : d;  // reset
		end 
	
	end


endmodule
