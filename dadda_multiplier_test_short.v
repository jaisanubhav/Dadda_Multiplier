module dadda_multiplier_test_short ();
	
	parameter n = 16;
	reg [n-1:0] t_a, t_b;
	reg [2*n-1:0] gold_prod;
	wire [2*n-1:0] t_prod;
	reg flag;
	integer i,j;
	
	initial begin
		flag = 1'b0;
		for ( i = 0; i < n; i = i + 1 )
		begin
			for ( j = 0; j < n; j = j + 1 ) 
			begin
				//t_a = 2**32-1;
				//t_b = 2**32-1;
				t_a = i;
				t_b = j;
				gold_prod = t_a * t_b;
				#(10)
				if(t_prod != gold_prod)
				begin
					$display("Incorrect");
					flag = 1'b1;
				end
				else
					$display("Correct");
			end
		end
		if ( flag == 0 )
			$display("Success");
		else
			$display("Failed");
		
		#(1) $finish;
	end
	
	dadda_multiplier dut (t_a, t_b, t_prod);
	
endmodule