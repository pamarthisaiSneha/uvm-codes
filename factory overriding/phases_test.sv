class phases_test extends uvm_test;

    `uvm_component_utils(phases_test)
    
    environment env_h;
    mem_sequence seq_h;
    
    function new(string name,uvm_component parent);
            super.new(name,parent);    
        endfunction
    
        function void build_phase(uvm_phase phase);
            env_h = environment::type_id::create("env_h",this);
		//factory.print();
            `uvm_info(get_type_name(),"MESSAGE FROM TEST BUILD PHASE WITH NONE",UVM_NONE)
        endfunction
    
        task run_phase(uvm_phase phase);
            seq_h = mem_sequence::type_id::create("seq_h",this);
			
          // factory.set_type_override_by_name("sequence_item","new_sequence_item1");
        factory.set_type_override_by_name("new_sequence_item1","new_sequence_item2");
		  
            factory.print();
			
			
            `uvm_info("TEST","message is from test run_phase with none",UVM_NONE)
            phase.raise_objection(this);
            begin
                seq_h.start(env_h.agt_h1.sqr_h);
            end
            phase.drop_objection(this);
        endtask
    endclass
