// Code your testbench here
// or browse Examples

`include "files.sv"

module mux_16x1_tb_top();

  
  // Instantiate the DUT with parameters
  mux_16x1 #(
    .WIDTH(WIDTH),
    .DEPTH(DEPTH)
  ) mux_16x1_inst (
    .clk(clk),
    .rst(rst),
    .i(i),
    .s(s),
    .y(y)
  );
    
 // Initialize signals
  initial begin
    clk = 1'b1;
    rst = 1'b1;
    s = 4'b0000;
    for (int j = 0; j < DEPTH; j++) begin
      i[j] = {WIDTH{1'b0}};
    end
  end

  // Create objects and run tasks
 run run_h;
  initial begin
    run_h=new();
    run_h.run_g();
  end

  // Wave generation
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    #200 $finish;
  end

endmodule
