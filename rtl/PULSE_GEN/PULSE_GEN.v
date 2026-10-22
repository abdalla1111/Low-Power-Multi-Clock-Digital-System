module PULSE_GEN 
(
input clk,
input rst,
input lvl_sig,
output pulse_sig
);


reg rcv_flop  , pls_flop  ;
 
assign pulse_sig = rcv_flop && !pls_flop ;

always @(posedge clk or negedge rst)
 begin
  if(!rst)
  begin
    rcv_flop <= 1'b0 ;
    pls_flop <= 1'b0 ;	
   end
  else
   begin
    rcv_flop <= lvl_sig;   
    pls_flop <= rcv_flop;
   end  
 end
 
endmodule