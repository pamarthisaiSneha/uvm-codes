// Code your testbench here
// or browse Examples
`include "uvm_macros.svh"
import uvm_pkg::*;

`include "seq_item.sv"
`include "sequencer.sv"
`include "driver.sv"
`include "agent.sv"
`include "env.sv"


class base_seq extends uvm_sequence #(seq_item);
  seq_item req;
  `uvm_object_utils(base_seq)
  
  function new (string name = "base_seq");
    super.new(name);
  endfunction

  task body();
    `uvm_info(get_type_name(), "Base seq: Inside Body", UVM_LOW);
    req = seq_item::type_id::create("req");
	//`uvm_create(req); 
    // or
   // $cast(req, create_item(seq_item::get_type(), m_sequencer, "req"));
    wait_for_grant();
    assert(req.randomize());

    send_request(req);
    `uvm_info(get_type_name(), "Before wait_for_item_done", UVM_LOW);
	
    wait_for_item_done();
    `uvm_info(get_type_name(), "After wait_for_item_done", UVM_LOW);
	
	// get_response(req);
   // `uvm_info(get_type_name(), $sformatf("After get_response: rsp_b = %0d", req.rsp_b), UVM_LOW);
  endtask
endclass



class base_test extends uvm_test;
  env env_o;
  base_seq bseq;

  `uvm_component_utils(base_test)
  
  function new(string name = "base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env_o = env::type_id::create("env_o", this);
  endfunction
 
  task run_phase(uvm_phase phase);
    phase.raise_objection(this); //phase 
    bseq = base_seq::type_id::create("bseq");
    bseq.start(env_o.agt.seqr);
    phase.drop_objection(this);
  endtask
endclass


module tb_top;
  initial begin
    run_test("base_test");
  end
endmodule