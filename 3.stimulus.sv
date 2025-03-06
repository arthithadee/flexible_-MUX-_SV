class stimulus_gen;
  task stimulus();
    begin
      $display("Stimulus started");
      n = $random % 50;
      $display("Repeat %0d times", n);
      repeat (n) begin
        @(posedge clk);
        s = $urandom_range(0, DEPTH-1);  
        for (int j = 0; j < DEPTH; j++) begin
          i[j] = $urandom_range(0, (1 << WIDTH) - 1);  
        end
      end
      
      $finish;
    end
  endtask
endclass
