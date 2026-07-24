# Full Subtractor using Verilog

## Overview
A Full Subtractor is a combinational logic circuit that subtracts three binary bits:
- Minuend (A)
- Subtrahend (B)
- Borrow Input (Bin)

It produces:
- Difference (Diff)
- Borrow Output (Bout)

## Boolean Expressions

Difference:
```
Diff = A ⊕ B ⊕ Bin
```

Borrow Output:
```
Bout = (~A & B) | (~A & Bin) | (B & Bin)
```

## Truth Table

| A | B | Bin | Diff | Bout |
|---|---|-----|------|------|
|0|0|0|0|0|
|0|0|1|1|1|
|0|1|0|1|1|
|0|1|1|0|1|
|1|0|0|1|0|
|1|0|1|0|0|
|1|1|0|0|0|
|1|1|1|1|1|

## Project Structure

```
Full-Subtractor
├── README.md
├── src
│   └── full_subtractor.v
├── testbench
│   └── full_subtractor_tb.v
└── simulation
    ├── waveform.png
    └── simulation_output.txt
```

## Simulation

Compile:

```bash
iverilog -o full_subtractor src/full_subtractor.v testbench/full_subtractor_tb.v
```

Run:

```bash
vvp full_subtractor
```

Generate waveform:

```bash
gtkwave full_subtractor.vcd
```

## Expected Output

The simulation verifies all possible input combinations and confirms the correctness of the Full Subtractor.

## Author

Your Name