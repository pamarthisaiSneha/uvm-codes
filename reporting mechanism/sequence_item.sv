class sequence_item extends uvm_sequence_item;

    rand bit [3:0]addr;
    rand bit [3:0]data;
    bit[3:0] wr_rd;

    function new(string name = "");
        super.new(name); 
    endfunction
    
    `uvm_object_utils_begin(sequence_item)
    `uvm_field_int(addr,UVM_DEC)
    `uvm_field_int(data,UVM_DEC)
    `uvm_field_int(wr_rd,UVM_DEC)
    `uvm_object_utils_end
    
    constraint addr_c{addr inside {[3:5]};}
   
endclass
