class agent_1 extends uvm_agent;

    `uvm_component_utils(agent_1)
     monitor_1 mon_h_1;
     
    function new(string name,uvm_component parent);
        super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);

    
        mon_h_1 = monitor_1::type_id::create("mon_h_1",this);
        
        `uvm_info("AGENT_1", "AGENT_1 BUILD_PHASE",UVM_NONE)  

       
    endfunction

    function void connect_phase(uvm_phase phase);
        `uvm_info(get_name(),"MESSAGE FROM AGENT_1",UVM_LOW)   
    endfunction

     task run_phase(uvm_phase phase);
      
     endtask

endclass