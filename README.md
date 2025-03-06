# flexible_-MUX-_SV
This SystemVerilog module implements a 16:1 multiplexer (MUX) using parameterized width and depth. The design allows for flexible data width (default 32-bit) and input depth (default 16), making it reusable 

 Features
- **Parameterized Design:** Supports different data widths (`WIDTH`) and number of inputs (`DEPTH`).
- **Synchronous Reset:** Active-low reset implementation.
- **Testbench Structure:** Stimulus generation, clock generation, reset testing, and compare verification.
- **Waveform Dumping:** Generates `dump.vcd` for waveform analysis.



Generating Clock and Reset signals.
Providing Random Inputs to the MUX.
Checking Output Against Expected Values.
Generating Waveforms (dump.vcd).

Verification Approach
🔹 compare.sv (Output Verification)
Captures expected output from input queue.
Compares it against the actual MUX output.
Prints PASS/FAIL messages.
