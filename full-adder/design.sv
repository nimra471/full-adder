// Code your design here
module full_adder( a,b,cin,sum,c_out);
  input logic  [31:0] a;
  input logic  [31:0] b;
  input  logic  cin;
  output logic [31:0] sum;
  output  logic c_out;
  
 assign sum= a ^ b  ^ cin;
assign c_out= a ^ b & cin | a & b;
  
endmodule:full_adder
 