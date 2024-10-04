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

class new_sequence_item1 extends sequence_item;

rand bit[3:0]error_1;
rand bit[4:0]error_2;

`uvm_object_utils_begin(new_sequence_item1)
`uvm_field_int(error_1,UVM_ALL_ON)
`uvm_field_int(error_2,UVM_ALL_ON)
`uvm_object_utils_end

function new(string name = "new_sequence_item1");
    super.new(name);
endfunction
    
endclass

class new_sequence_item2 extends new_sequence_item1;

    rand bit[3:0]error_3;
    rand bit[4:0]error_4;
    
    `uvm_object_utils_begin(new_sequence_item2)
    `uvm_field_int(error_3,UVM_ALL_ON)
    `uvm_field_int(error_4,UVM_ALL_ON)
    `uvm_object_utils_end
    
    function new(string name = "new_sequence_item2");
        super.new(name);
    endfunction
        
    endclass
    