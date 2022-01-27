`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:12 01/27/2022 
// Design Name: 
// Module Name:    testbench-01 
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
module testbench_01();

	reg [5:0] s;
	reg c;
	wire [7:0] q;
	reg ce;
	reg ccc;
	reg r;
	
	
	
	top top1
	(
		.r(r),
		.c(c),
		.ce(ce),
		.s(s),
		.q(q)		
	);
	
	always #5  c =  ccc & !c;  // генерация тактовой

	initial begin
		c = 0;
		ce = 1;
		r = 0;
		
		s = 0;	
		ccc = 0;
		
		#15
		ccc <= 1;
		
		#550
		
		@(posedge c)
		
		s = 1;		
		#60
		@(posedge c)
		
		
		s = 2;
		# 40;
		@(posedge c)
		
		s = 1;
		#30
		@(posedge c)
		
		s = 0;
		
		#200;
		
		$stop;
	
	end
	
	

endmodule
