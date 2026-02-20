module alu(
    input [7:0] a,
    input [7:0] b,
    input [2:0] op,
    output reg [7:0] result
);

always @(*) begin
    case(op)
        3'b000: result = a + b;
        3'b001: result = a - b;
        3'b010: result = a & b;
        3'b011: result = a | b;
        default: result = 0;
    endcase
end

endmodule


//  Register File 
module regfile(
    input [2:0] r1,
    input [2:0] r2,
    output [7:0] d1,
    output [7:0] d2
);

reg [7:0] regs [0:7];

initial begin
    regs[0] = 8'd10;
    regs[1] = 8'd5;
    regs[2] = 8'd3;
    regs[3] = 8'd7;
end

assign d1 = regs[r1];
assign d2 = regs[r2];

endmodule

//  Control Unit 
module control_unit(
    input [2:0] instruction,
    output reg [2:0] op
);

always @(*) begin
    case(instruction)
        3'b000: op = 3'b000; 
        3'b001: op = 3'b001; 
        3'b010: op = 3'b010; 
        3'b011: op = 3'b011; 
        default: op = 3'b000;
    endcase
end

endmodule

module instr_mem(
    input [1:0] pc,
    output [2:0] instruction
);

reg [2:0] mem [0:3];

initial begin
    mem[0] = 3'b000; 
    mem[1] = 3'b001; 
    mem[2] = 3'b010; 
    mem[3] = 3'b011; 
end

assign instruction = mem[pc];

endmodule