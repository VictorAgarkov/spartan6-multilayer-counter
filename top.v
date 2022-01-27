`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:30:16 01/26/2022 
// Design Name: 
// Module Name:    top 
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
module top
(
	input r,
	input c,
	input ce,
	input [5:0] s,
	output [7:0] q
);

	wire [7:0] plus1 = q + 1;

	genvar i;
	
	generate
		for(i = 0; i < 8; i = i + 1) begin

			t64 TRG
			(
				.c(c),
				.r(r),
				.ce(ce),
				.s(s),
				.d(plus1[i]),
				.q(q[i])
			);
		
		end	
	endgenerate
endmodule
