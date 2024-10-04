class phases_test extends uvm_test;

    `uvm_component_utils(phases_test)
    
    environment env_h;
    mem_sequence seq_h;
    
    function new(string name,uvm_component parent);
            super.new(name,parent);    
        endfunction
    
        function void build_phase(uvm_phase phase);
            env_h = environment::type_id::create("env_h",this);
            `uvm_info(get_type_name(),"MESSAGE FROM TEST BUILD PHASE WITH NONE",UVM_NONE)
            `uvm_info(get_full_name(),"MESSAGE FROM TEST BUILD PHASE WITH NONE",UVM_DEBUG)
            `uvm_info(get_name(),"MESSAGE FROM TEST BUILD PHASE WITH NONE",UVM_HIGH)
            `uvm_info(get_type_name(),"MESSAGE FROM TEST BUILD PHASE WITH NONE",UVM_LOW)
            `uvm_info(get_type_name(),"MESSAGE FROM TEST BUILD PHASE WITH NONE",UVM_HIGH)
            `uvm_info(get_type_name(),"MESSAGE FROM TEST BUILD PHASE WITH NONE",UVM_DEBUG)
        
        endfunction
    
        task run_phase(uvm_phase phase);
            seq_h = mem_sequence::type_id::create("seq_h",this);
            `uvm_info("TEST","message is from test run_phase with none",UVM_NONE)
            `uvm_info("TEST","message is from test run_phase with none",UVM_MEDIUM)
            `uvm_info("TEST","message is from test run_phase with none",UVM_LOW)
            `uvm_info("TEST","message is from test run_phase with none",UVM_NONE)
            `uvm_info("TEST","message is from test run_phase with none",UVM_HIGH)
            `uvm_info("TEST","message is from test run_phase with none",UVM_MEDIUM)
            phase.raise_objection(this);
            fork
            seq_h.start(env_h.agt_h.sqr_h);
            join
            phase.drop_objection(this);
        endtask
    endclass
