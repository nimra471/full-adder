module testbench;
  logic [31:0] d;
 logic en;
 logic clk=0;
 logic rset;
  logic [31:0] q;
 flip flop(
    .d(d),
    .en(en),
    .clk(clk),
    .rset(rset),
    .q(q));
  always #1 clk=~clk;
  initial begin
    $dumpvars(0);
    #1
    
    en=1'b1;
    d=32'b1110;
    rset=1'b1;
    
    #5
    en=1'b1;
    d=32'b1101;
    rset=1'b0;
    
    #5
    en=1'b1;
    d=32'd8;
    #5
    en=1'b0;
    rset=1'b0;
    
    #10
    $finish();
  end
endmodule
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
