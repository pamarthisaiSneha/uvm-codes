
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
integer count;

string data;
initial begin
   count = 20;
     $value$plusargs("count_no=%0d",count);
   uvm_config_db#(integer)::set(uvm_root::get(),"uvm_test_top.env_h.*","count",count);
  // uvm_config_db#(integer)::set(uvm_root::get(),"uvm_test_top.env_h.agt_h.*","count",count);
  // uvm_config_db#(integer)::set(null,"uvm_test_top.env_h.agt_h.drv_h","count",count);
end

initial begin
    run_test(" ");
end
endmodule
