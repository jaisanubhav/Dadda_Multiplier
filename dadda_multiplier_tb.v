module dadda_multiplier_tb ();

        reg [31:0]A,B;
		reg cin;
        wire [31:0] prod;
		
        ///dadda_multiplier dut (A, B, prod);
		brent_kung_adder dut (A, B,cin, prod);

        initial

        begin
                #10 A = 5; B = 7; cin = 0;

                #10 $display("sum of A = %d, B = %d = SUM = %d",A,B,prod);
				
				 #10 A = 1; B = 2; cin = 0;

                #10 $display("sum of A = %d, B = %d = SUM = %d",A,B,prod);
				 #10 A = 2; B = 3; cin = 0;

                #10 $display("sum of A = %d, B = %d = SUM = %d",A,B,prod);
				 #10 A = 3; B = 4; cin = 0;

                #10 $display("sum of A = %d, B = %d = SUM = %d",A,B,prod);
        end

endmodule