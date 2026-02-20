RISC-V Mini Processor (Verilog)

Project Overview

This project implements a basic RISC-V style processor datapath using Verilog.
The design demonstrates how instructions flow through core hardware blocks such as registers, control logic, and ALU operations.

The goal of this project is to understand digital design fundamentals and processor architecture basics.

---

Features

- Simple instruction execution flow
- Register File implementation
- Instruction Memory
- Control Unit
- ALU operations:
  - ADD
  - SUB
  - AND
  - OR
- Testbench for simulation and verification

---

Modules Used

- "regfile" – stores register values
- "instr_mem" – instruction storage
- "control_unit" – generates ALU control signals
- "myalu" – performs arithmetic & logic operations
- "testbench" – verifies functionality

---

Tools & Technologies

- Verilog / SystemVerilog
- EDA Playground (simulation)
- VS Code
- Git & GitHub

---

Simulation Output

Example output:

PC=0 INSTR=000 RESULT=15
PC=1 INSTR=001 RESULT=7
PC=2 INSTR=010 RESULT=5
PC=3 INSTR=011 RESULT=7

---

Learning Outcomes

- Understanding datapath design
- Writing modular Verilog code
- Creating testbenches
- Debugging simulation errors
- Using GitHub for version control

---

Future Improvements

- Add more RISC-V instructions
- Implement clocked pipeline stages
- Add branching and memory access
- FPGA implementation (future work)

---

Author

Rajath Krishna
Electronics & Communication Engineering Student
