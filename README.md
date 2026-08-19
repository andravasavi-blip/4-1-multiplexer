# 4x1 Multiplexer using Verilog

## Overview

This project implements a 4x1 Multiplexer using Verilog HDL.

A multiplexer is a combinational circuit that selects one input from multiple inputs and sends it to a single output.

## Inputs

- `I0` – Input 0
- `I1` – Input 1
- `I2` – Input 2
- `I3` – Input 3
- `S0` – Select line 0
- `S1` – Select line 1

## Output

- `Y` – Selected output

## Selection Table

| S1 | S0 | Selected Input |
|----|----|----------------|
| 0  | 0  | I0 |
| 0  | 1  | I1 |
| 1  | 0  | I2 |
| 1  | 1  | I3 |

## Working

The two select lines determine which input is connected to the output.

For example:

S1 S0 = 01

Then:

Y = I1

## Files

- `mux4x1.v` – Verilog design
- `mux4x1_tb.v` – Testbench
- `README.md` – Project documentation
- `simulation_result.png` – Simulation waveform

## Software Used

- Icarus Verilog
- ModelSim / Vivado
- GTKWave

## How to Run

### Compile

```bash
iverilog -o mux mux4x1.v mux4x1_tb.v