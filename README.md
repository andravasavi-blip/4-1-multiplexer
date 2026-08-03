# 4×1 Multiplexer using Verilog

## Overview

A 4×1 Multiplexer (MUX) is a combinational logic circuit that selects one of four input signals and forwards it to a single output based on the values of two select lines.

### Inputs
- I0 : Input 0
- I1 : Input 1
- I2 : Input 2
- I3 : Input 3
- S1 : Select Line 1
- S0 : Select Line 0

### Output
- Y : Selected Output

---

## Truth Table

| S1 | S0 | Output (Y) |
|----|----|------------|
| 0  | 0  | I0 |
| 0  | 1  | I1 |
| 1  | 0  | I2 |
| 1  | 1  | I3 |

---

## Boolean Expression

Y = (~S1 & ~S0 & I0) |
    (~S1 & S0 & I1) |
    (S1 & ~S0 & I2) |
    (S1 & S0 & I3)

---

## Project Files

- `mux4x1.v` – Verilog implementation
- `mux4x1_tb.v` – Testbench
- `simulation_results.png` – Simulation waveform
- `README.md` – Documentation

---

## Simulation Tools

- ModelSim
- Xilinx Vivado
- Icarus Verilog
- GTKWave

---

## Expected Console Output

```
S1 S0 | I0 I1 I2 I3 | Y
-------------------------
0  0  | 0  1  0  1 | 0
0  1  | 0  1  0  1 | 1
1  0  | 0  1  0  1 | 0
1  1  | 0  1  0  1 | 1
```

---

## Applications

- Data Routing
- Digital Communication Systems
- Arithmetic Logic Units (ALUs)
- Processor Design
- Signal Selection Circuits

---

## Author

Your Name