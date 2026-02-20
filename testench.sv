module testbench;

reg [1:0] pc;
reg [2:0] r1, r2;

wire [2:0] instruction;
wire [2:0] op;
wire [7:0] a, b;
wire [7:0] result;

regfile rf(.r1(r1), .r2(r2), .d1(a), .d2(b));
instr_mem im(.pc(pc), .instruction(instruction));
control_unit cu(.instruction(instruction), .op(op));
alu myalu(.a(a), .b(b), .op(op), .result(result));

initial begin

    pc = 0;
    r1 = 0;
    r2 = 1;

    repeat(4) begin
        #10;
        $display("PC=%d INSTR=%b RESULT=%d",
                  pc, instruction, result);

        pc = pc + 1;
    end

    $finish;
end

endmodule