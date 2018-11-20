module alu(input logic [31:0] a, b,
 input logic [2:0] f,
 output logic [31:0] y,
 output logic zero);

always @ ( a, b, f, y, zero)
	 case (f)
		3'b000:begin
					assign y = a & b;
					assign zero = ( y == 0 ) ? 1 : 0;
					end
		3'b001:begin
					assign y = a | b;
					assign zero = ( y == 0 ) ? 1 : 0;
					end
		3'b010:begin
					assign y = a + b;
					assign zero = ( y == 0 ) ? 1 : 0;
					end
		3'b110: begin
					assign y = a - b;
					assign zero = ( y == 0 ) ? 1 : 0;
					end
		3'b111: begin
					assign y = a << b;
					assign zero = ( y == 0 ) ? 1 : 0;
					end
		default: begin
				$display("You have entered wrong inputs!");
		end
	endcase
endmodule
