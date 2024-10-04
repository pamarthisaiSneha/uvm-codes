class agent extends uvm_agent;

`uvm_component_utils(agent)
    mem_driver drv_h;
    monitor mon_h;
    mem_sequencer sqr_h;
   
    function new(string name,uvm_component parent);
        super.new(name,parent);    
    endfunction

    function void build_phase(uvm_phase phase);

        drv_h = mem_driver::type_id::create("drv_h",this);
        sqr_h = mem_sequencer::type_id::create("sqr_h",this);
        mon_h = monitor::type_id::create("mon_h",this);
        `uvm_info("agent","MESSAGE IS FROM BUILD PHASE WITH NONE",UVM_NONE) 
	
        `uvm_info("","MESSAGE TO BE WRITTEN",UVM_NONE)  

        `uvm_info("AGENT","MESSAGE IS FROM BUILD PHASE WITH NONE",UVM_LOW)  
        `uvm_info("AGENT","MESSAGE IS FROM BUILD PHASE WITH NONE",UVM_LOW)  
        `uvm_info("AGENT","MESSAGE IS FROM BUILD PHASE WITH NONE",UVM_NONE)  
        `uvm_info("AGENT","MESSAGE IS FROM BUILD PHASE WITH NONE",UVM_NONE)  
        `uvm_info("AGENT","MESSAGE IS FROM BUILD PHASE WITH NONE",UVM_NONE)  
    
    endfunction

    function void connect_phase(uvm_phase phase);
        drv_h.seq_item_port.connect(sqr_h.seq_item_export);   
        `uvm_info("AGENT","MESSAGE IS FROM AGENT CONNECT PHASE WITH MEDIUM",UVM_MEDIUM)
    endfunction

    
endclass


  
 
