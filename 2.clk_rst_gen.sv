class clk_gen;
  task clk_g();
    $display("Clock is generated");
    forever begin
      #5 clk = ~clk;
    end
  endtask
endclass

class rst_gen;
  task rst_g();
    $display("Reset is generated");
    #10 rst = 1'b0;
  endtask
endclass
