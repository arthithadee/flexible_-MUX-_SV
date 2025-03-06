// File: compare.sv
class compare;
  logic [WIDTH-1:0] input_queue[$];  
  logic [WIDTH-1:0] output_queue[$]; 

  task comp();
    logic [WIDTH-1:0] exp_value, actual_output;  
    repeat (n) begin
      @(posedge clk or negedge clk);
      $display("Time=%0t\tclk=%b\ti0=%h\ti1=%h\ti2=%h\ti3=%h\ti4=%h\ti5=%h\ti6=%h\ti7=%h\ti8=%h\ti9=%h\ti10=%h\ti11=%h\ti12=%h\ti13=%h\ti14=%h\ti15=%h",
         $time, clk, i[0], i[1], i[2], i[3], i[4], i[5], i[6], i[7], 
         i[8], i[9], i[10], i[11], i[12], i[13], i[14], i[15]);

      if (!rst) begin
        #0.1;
        input_queue.push_back(i[s]);  
        output_queue.push_back(y);   

        exp_value = input_queue.pop_front();
        actual_output = output_queue.pop_front();

        if (exp_value == actual_output) 
          $display("Test PASSED: Select Line (s)= i%d \tInput = %h \tOutput = %h", s, exp_value, actual_output);
        else 
          $error("Test FAILED: Select Line (s)=i%d\tInput = %h\tOutput = %h", s, exp_value, actual_output);
      end else begin 
        #0.1;
        if (y === {WIDTH{1'b0}})
          $display("Test PASSED (Reset Condition): Time=%0t\t rst=%b\t Output=%h", $time, rst, y);
        else
          $error("Test FAILED (Reset Condition): Time=%0t\t rst=%b \tOutput=%h", $time, rst, y);
      end
    end
  endtask
endclass
