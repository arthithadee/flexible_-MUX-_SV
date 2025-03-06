clk_gen clk_h;
  rst_gen rst_h;
  stimulus_gen stimulus_h;
  rst_test rst_t_h;
  compare comp_h;

  task run_g();
    begin
      clk_h = new();
      rst_h = new();
      stimulus_h = new();
      rst_t_h = new();
      comp_h = new();

      // Fork tasks to run concurrently
      fork
        clk_h.clk_g();
        rst_h.rst_g();
        stimulus_h.stimulus();
        rst_t_h.rst_t();
        comp_h.comp();    // use begin end for each thread
      join
    end
  endtask

endclass
