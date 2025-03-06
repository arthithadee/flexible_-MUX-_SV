`include "clock.svh"
`include "reset.svh"
`include "signals.sv"
`include "testing.sv"
`include "compare.sv"
`include "stimulus_gen.svh"
`include "run.svh"

//signal used
parameter WIDTH = 32;
 parameter DEPTH = 16;

logic clk;
logic rst;
logic [3:0] s;
//logic [$clog2(DEPTH)-1:0] s;
logic [DEPTH-1:0][WIDTH-1:0] i;  
logic [WIDTH-1:0] y;
int n;
