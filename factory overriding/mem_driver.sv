class mem_driver extends uvm_driver #(sequence_item);
	
	`uvm_component_utils(mem_driver)

 function new(string name, uvm_component parent);
        super.new(name,parent);    
    endfunction

    function void build_phase(uvm_phase phase);
        `uvm_info("DRIVER","MESSAGE IS FROM OLD DRIVER BUILD PHASE WITH NONE",UVM_NONE)
        `uvm_info("DRIVER","MESSAGE IS FROM OLD DRIVER BUILD PHASE WITH LOW",UVM_LOW)
        `uvm_info("DRIVER","MESSAGE IS FROM OLD DRIVER BUILD PHASE WITH MEDIUM",UVM_MEDIUM)  
    endfunction

  task run_phase(uvm_phase phase);
    
               forever begin
            seq_item_port.get_next_item(req);
            #1;
            req.print();
            seq_item_port.item_done();
            `uvm_info("DRIVER","MESSAGE IS FROM OLD DRIVER RUN PHASE WITH NONE",UVM_NONE)
            `uvm_info("DRIVER","MESSAGE IS FROM OLD DRIVER RUN PHASE WITH LOW",UVM_LOW)
            `uvm_info("DRIVER","MESSAGE IS FROM OLD DRIVER RUN PHASE WITH MEDIUM",UVM_MEDIUM)
            `uvm_info("DRIVER","MESSAGE IS FROM OLD DRIVER RUN PHASE WITH HIGH",UVM_HIGH)
            `uvm_info("DRIVER","MESSAGE IS FROM OLD DRIVER RUN PHASE WITH FULL",UVM_FULL)
            `uvm_info("DRIVER","MESSAGE IS FROM OLD DRIVER RUN PHASE WITH DEBUG",UVM_DEBUG)  
        end
    endtask
endclass    

