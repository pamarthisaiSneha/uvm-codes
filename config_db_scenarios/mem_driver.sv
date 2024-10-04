class mem_driver extends uvm_driver #(sequence_item);
 integer count;
`uvm_component_utils(mem_driver)
    function new(string name, uvm_component parent);
        super.new(name,parent);    
    endfunction


 function void build_phase(uvm_phase phase);
    // if(!uvm_config_db#(integer)::get(this,"uvm_test_top.env_h.agt_h.drv_h","count",count))
     if(!uvm_config_db#(integer)::get(this,"uvm_test_top.env_h.*","count",count))
        begin
            `uvm_error("CONFIG_DB_ERROR","NOT BE ABLE TO RETRIVE COUNT FROM DB")   
	    end
        else begin
            `uvm_info("DRIVER","Config_db getting)",UVM_NONE)
        end

        `uvm_info("DRIVER","MESSAGE IS FROM DRIVER BUILD PHASE WITH NONE",UVM_NONE)
        `uvm_info("DRIVER","MESSAGE IS FROM DRIVER BUILD PHASE WITH LOW",UVM_LOW)
        `uvm_info("DRIVER","MESSAGE IS FROM DRIVER BUILD PHASE WITH MEDIUM",UVM_MEDIUM)
        `uvm_info("DRIVER","MESSAGE IS FROM DRIVER BUILD PHASE WITH HIGH",UVM_HIGH)
        `uvm_info("DRIVER","MESSAGE IS FROM DRIVER BUILD PHASE WITH FULL",UVM_FULL)
        `uvm_info("DRIVER","MESSAGE IS FROM DRIVER BUILD PHASE WITH DEBUG",UVM_DEBUG)    
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            
             `uvm_info("driver_runphase",$psprintf("printing from driver from uvm low = %0d",count),UVM_LOW)

            seq_item_port.get_next_item(req);
            #1;
            req.print();
            seq_item_port.item_done();
            `uvm_info("DRIVER","MESSAGE IS FROM DRIVER RUN PHASE WITH NONE",UVM_NONE)
            `uvm_info("DRIVER","MESSAGE IS FROM DRIVER RUN PHASE WITH LOW",UVM_LOW)
            
            `uvm_info("DRIVER","MESSAGE IS FROM DRIVER RUN PHASE WITH FULL",UVM_FULL)
            `uvm_info("DRIVER","MESSAGE IS FROM DRIVER RUN PHASE WITH DEBUG",UVM_DEBUG)  
        end
    endtask
endclass    
