# VLSI Learning Journey

This repository documents my progress in learning VLSI design using Verilog.  
Each module is implemented with its testbench

## 🟢 Current Projects

### 1. AND Gate
**Folder:** `AND Gate`  
**Files:**
- `and_gate.v` – AND and OR logic module  
- `test_and_gate.v` – Testbench for simulation  

**Description:**  
The `and_gate` module takes two inputs (`a` and `b`) and produces:
- `and_out` : AND output  
- `or_out`  : OR output  

The testbench cycles through all input combinations and prints the results using `$monitor`.
