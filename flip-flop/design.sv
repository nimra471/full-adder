module flip(
  input logic [31:0] d,
  input logic en,
  input logic clk,
  input logic rset,
  output logic [31:0] q);
  logic  [31:0] ff;
  
 always_ff @(posedge clk) begin
	if (rset) begin
		ff<=0;
    end
	else if(en) begin
  		ff<=d;
    end
   else begin 
     ff<=q;
   end
  end

      assign q=ff;
endmodule
      
      
      
      
      
      
      
      

