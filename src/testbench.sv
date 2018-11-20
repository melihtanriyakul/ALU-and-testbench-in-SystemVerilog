module testbench();

  logic clk;
  logic [31:0] a, b, y, y_expected;
  logic [2:0]  f;
  logic        zero, zero_expected;

  logic [31:0] vectornum, errors;
  logic [103:0] testvectors[10000:0];

  // instantiate device under test
  alu dut(a, b, f, y, zero);

  // generate clock
  always begin
    clk = 1; #50; clk = 0; #50;
  end

  // at start of test, load vectors
  initial begin
  // 1
   	#100
	f = 'h2;
	a = 'h00000000;
	b = 'h00000000;
	y_expected = 'h00000000;
	zero_expected = 'h1;
	
	// 2
	#100
	f = 'h2;
	a = 'h00000000;
	b = 'hFFFFFFFF;
	y_expected = 'hFFFFFFFF;
	zero_expected = 'h0;
	
  //3
	#100
	f = 'h2;
	a = 'h00000001;
	b = 'hFFFFFFFF;
	y_expected = 'h00000000;
	zero_expected = 'h1;
	
	//4
	#100
	f = 'h2;
	a = 'h000000FF;
	b = 'h00000001;
	y_expected = 'h00000100;
	zero_expected = 'h0;
	
	//5
	#100
	f = 'h6;
	a = 'h00000000;
	b = 'h00000000;
	y_expected = 'h00000000;
	zero_expected = 'h1;
	
	//6
	#100
	f = 'h6;
	a = 'h00000000;
	b = 'hFFFFFFFF;
	y_expected = 'h00000001;
	zero_expected = 'h0;
	
	//7
	#100
	f = 'h6;
	a = 'h00000001;
	b = 'h00000001;
	y_expected = 'h00000000;
	zero_expected = 'h1;	
	
	//8
	#100
	f = 'h6;
	a = 'h00000100;
	b = 'h00000001;
	y_expected = 'h000000FF;
	zero_expected = 'h0;	
	
	//9
  #100
	f = 'h7;
	a = 'h00000000;
	b = 'h00000000;
	y_expected = 'h00000000;
	zero_expected = 'h1;	
	
	//10
  #100
	f = 'h7;
	a = 'h00000000;
	b = 'h00000001;
	y_expected = 'h00000000;
	zero_expected = 'h1;	
	
	//11
  #100
	f = 'h7;
	a = 'h00000000;
	b = 'hFFFFFFFF;
	y_expected = 'h00000000;
	zero_expected = 'h1;	
	
	//12
  #100
	f = 'h7;
	a = 'h00000001;
	b = 'h00000000;
	y_expected = 'h00000001;
	zero_expected = 'h0;	
  
  //13
	#100
	f = 'h7;
	a = 'hFFFFFFFF;
	b = 'h00000000;
	y_expected = 'hFFFFFFFF;
	zero_expected = 'h0;	
	
	//14
	
	#100
	f = 'h0;
	a = 'hFFFFFFFF;
	b = 'hFFFFFFFF;
	y_expected = 'hFFFFFFFF;
	zero_expected = 'h0;
	
	//15
	#100
	f = 'h0;
	a = 'hFFFFFFFF;
	b = 'h12345678;
	y_expected = 'h12345678;
	zero_expected = 'h0;
	
	//16
	#100
	f = 'h0;
	a = 'h12345678;
	b = 'h87654321;
	y_expected = 'h02244220;
	zero_expected = 'h0;
	
	//17
	
	#100
	f = 'h0;
	a = 'h00000000;
	b = 'hFFFFFFFF;
	y_expected = 'h00000000;
	zero_expected = 'h1;
	
	//18
	
	#100
	f = 'h1;
	a = 'hFFFFFFFF;
	b = 'hFFFFFFFF;
	y_expected = 'hFFFFFFFF;
	zero_expected = 'h0;
	
	//19
	
	#100
	f = 'h1;
	a = 'h12345678;
	b = 'h87654321;
	y_expected = 'h97755779;
	zero_expected = 'h0;
	
	
	//20
		
	#100
	f = 'h1;
	a = 'h00000000;
	b = 'hFFFFFFFF;
	y_expected = 'hFFFFFFFF;
	zero_expected = 'h0;
	
	//21
	
	#100
	f = 'h1;
	a = 'h00000000;
	b = 'h00000000;
	y_expected = 'h00000000;
	zero_expected = 'h1;
	
	
  end

endmodule
