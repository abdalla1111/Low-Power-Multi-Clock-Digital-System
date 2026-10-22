module Alu #(parameter DATA_WIDTH = 8, FUN_WIDTH=4)(
  input [DATA_WIDTH-1:0] A, B,
  input [FUN_WIDTH-1:0]  ALU_FUN,
  input CLK,
  input RST,
  input Enalbe,
  output reg [DATA_WIDTH*2-1:0] ALU_OUT,
  output reg ALU_VALID
  );

  always @(posedge CLK or negedge RST)
  begin
    if(!RST)
      begin
        ALU_OUT <= 0;
        ALU_VALID <=0;
      end
    else if(Enalbe)
      begin
          ALU_VALID <= 1'b1;
          case (ALU_FUN)
            4'b0000 : begin
                        ALU_OUT <= A+B;
                      end
            4'b0001 : begin
                        ALU_OUT <= A-B;
                      end
            4'b0010 : begin
                        ALU_OUT <= A*B;
                      end
            4'b0011 : begin
                        ALU_OUT <= A/B;
                      end
            4'b0100 : begin
                        ALU_OUT <= A&B; 
                      end
            4'b0101 : begin
                        ALU_OUT <= A|B;
                      end
            4'b0110 : begin
                        ALU_OUT <= ~(A&B);
                      end
            4'b0111 : begin
                        ALU_OUT <= ~(A|B);
                      end
            4'b1000 : begin
                        ALU_OUT <= A^B;
                      end        
            4'b1001 : begin
                        ALU_OUT <= ~(A^B);
                      end
            4'b1010 : begin
                        ALU_OUT <= (A==B);
                      end
            4'b1011 : begin
                        ALU_OUT <= (A>B)? 'b10 : 'b0 ;
                      end
            4'b1100 : begin
                        ALU_OUT <= (A<B)? 'b11 : 'b0 ;
                      end
            4'b1101 : begin
                        ALU_OUT <= A>>1;
                      end
            4'b1110 : begin
                        ALU_OUT <= A<<1;
                      end
            default  : begin
                        ALU_OUT <= 0;
                        ALU_VALID <= 0; 
                      end
          endcase
      end
  else
    begin
      ALU_VALID <= 1'b0;
    end
  end
 endmodule
