# ALU - Arithmetic Logic Unit

## 📌 Project Description

An Arithmetic Logic Unit (ALU) is a digital circuit used in processors and
microcontrollers to perform arithmetic and logical operations.

This project implements a simple 4-bit ALU using Verilog HDL.

## ⚙️ Operations Supported

| Opcode | Operation | Description |
|--------|-----------|-------------|
| 000 | ADD | A + B |
| 001 | SUB | A - B |
| 010 | AND | A & B |
| 011 | OR  | A | B |
| 100 | XOR | A ^ B |
| 101 | NOT | ~A |
| 110 | Increment | A + 1 |
| 111 | Decrement | A - 1 |

## 🧩 Inputs

- A: 4-bit input
- B: 4-bit input
- opcode: 3-bit operation selection

## 🧩 Outputs

- result: 4-bit ALU result
- carry: Carry output

## 🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- GitHub

## ▶️ Simulation

Compile the design and testbench using:

```bash
iverilog -o alu_sim alu.v alu_tb.v