// Code your testbench here
// or browse Examples
module full_adder_tb();
  initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1);
end
   
  logic  [31:0] tb_a;
   logic  [31:0]  tb_b;
   logic   tb_cin;
   logic [31:0]  tb_sum;
   logic   tb_c_out;
  
  full_adder adder1(
    .a( tb_a),
    .b( tb_b),
    .cin( tb_cin),
    .sum( tb_sum),
    .c_out(tb_c_out));
  
   initial begin
     #1;
   tb_a=1;
     tb_b=2;
     tb_cin=1;
         #1;
   tb_a=10;
     tb_b=20;
     tb_cin=0;
         #1;
   tb_a=55;
     tb_b=66;
     tb_cin=1;
     #1;
    $finish();
   end

endmodule: full_adder_tb