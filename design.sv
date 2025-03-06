// Code your design here
module mux_16x1 #(
  parameter WIDTH = 32,  // Width of each input
  parameter DEPTH = 16   // Number of inputs (16:1 mux)
)(
  input logic clk,
  input logic rst,
  input logic [DEPTH-1:0][WIDTH-1:0] i,  
  input logic [3:0] s,                   
  output logic [WIDTH-1:0] y              
);

  always @(posedge clk or negedge rst) begin
    if (!rst)
     assign y = i[s];  
    else
     assign y= {WIDTH{1'b0}};  
  end

endmodule
