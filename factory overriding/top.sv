
`include "uvm_macros.svh"
import uvm_pkg::*;

`include "sequence_item.sv"
`include "mem_sequence.sv"
`include "mem_sequencer.sv"
`include "mem_driver.sv"
`include "monitor.sv"
`include "agent.sv" 
`include "monitor_1.sv"
`include "agent_1.sv"
`include "environment.sv"
`include "phases_test.sv"


module top;

initial begin
    run_test(" ");
end
endmodule