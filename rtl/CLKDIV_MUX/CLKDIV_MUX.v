
module CLKDIV_MUX #(parameter WIDTH = 8)  
(
input [5:0] IN,
output reg [WIDTH-1:0] OUT
);


always @(*)
  begin
	case(IN) 
	6'b100000 : begin         //prescale 32
				OUT = 'd1 ;
				end
	6'b010000 : begin         //prescale 16
				OUT = 'd2 ;
				end	
	6'b001000 : begin		  //prescale 8
				OUT = 'd4 ;
				end	
	6'b000100 : begin         //prescale 4
				OUT = 'd8 ;
				end
	default   : begin
				OUT = 'd1 ;
				end					
	endcase
  end	
  
  
  
  
endmodule