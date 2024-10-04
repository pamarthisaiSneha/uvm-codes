class mem_sequence extends uvm_sequence#(sequence_item);
    `uvm_object_utils(mem_sequence)

    function new(string name = "mem_sequence");
        super.new(name);
    endfunction

    task body();
        req = sequence_item::type_id::create("req");
        start_item(req);
        assert(req.randomize());
        finish_item(req);
    endtask
endclass