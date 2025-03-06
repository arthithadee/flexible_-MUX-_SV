class rst_test;
  task rst_t();
    #50 rst = ~rst;
    $display("Reset test started");
    #20 rst = ~rst;
    $display("Reset test ended");
  endtask
endclass
