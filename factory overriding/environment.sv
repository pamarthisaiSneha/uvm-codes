class environment extends uvm_env;

`uvm_component_utils(environment)
agent agt_h1;
agent_1 agt_h_1;

function new(string name,uvm_component parent);
        super.new(name,parent);    
    endfunction

    function void build_phase(uvm_phase phase);
        agt_h1 = agent::type_id::create("agt_h1",this);
        agt_h_1 = agent_1::type_id::create("agt_h_1",this);
        `uvm_info(get_name(),"MESSAGE IS FROM ENVIRONMENT BUILD PHASE WITH NONE",UVM_NONE)
    endfunction

    function void end_of_elaboration_phase(uvm_phase phase);
        uvm_top.print_topology();
        `uvm_info(get_full_name(),"END OF ELABORATION",UVM_LOW)
        `uvm_info("ENVIRONMENT","ENVIRONMENT FUNCTION",UVM_HIGH)
    endfunction
endclass        