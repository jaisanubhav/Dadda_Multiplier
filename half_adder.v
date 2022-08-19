module half_adder (in1, in2, sum, cout);
	input in1, in2;
	output sum, cout;
	
	assign sum = in1 ^ in2 ;
	assign cout = in1 & in2 ;
	
endmodule
