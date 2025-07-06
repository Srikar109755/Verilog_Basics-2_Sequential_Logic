# 🔁 Verilog_Basics-2_Sequential_Logic

A comprehensive collection of sequential logic designs implemented in Verilog HDL.  
This repository is intended for learners, educators, and engineers revisiting foundational and intermediate sequential designs.

Each module includes:

- ✅ Verilog source code  
- 🧪 Testbenches for simulation and verification  
- 📊 Waveform screenshots or simulation results  

---

## 📁 Repository Structure

Each module is contained in its own directory with the following:

- `module.v` → Verilog HDL code  
- `tb_module.v` → Testbench  
- `output.png / output.txt` → Simulation outputs  

---

<details>
<summary>🧠 Flip-Flops</summary>

- [x] D Flip-Flop  
- [x] D Flip-Flop with Asynchronous Reset  
- [x] D Latch with Enable  
- [x] T Flip-Flop  
- [x] T Flip-Flop using D Flip-Flop  
- [x] JK Flip-Flop  
- [x] JK Flip-Flop using D Flip-Flop  
- [x] Master-Slave JK Flip-Flop  

📁 [`/D_FlipFlop`](./D_FlipFlop)  
📁 [`/DFF_Asyn_Rst`](./DFF_Asyn_Rst)  
📁 [`/D_Latch_Enable`](./D_Latch_Enable)  
📁 [`/T_FlipFlop`](./T_FlipFlop)  
📁 [`/TFF_with_DFF`](./TFF_with_DFF)  
📁 [`/JK_Flip_Flop`](./JK_Flip_Flop)  
📁 [`/JKFF_with_DFF`](./JKFF_with_DFF)  
📁 [`/MS_JK_FlipFlop`](./MS_JK_FlipFlop)

</details>

<details>
<summary>🧮 Counters & Clock Dividers</summary>

- [x] Asynchronous Counter using T Flip-Flops  
- [x] Synchronous Up-Down Counter  
- [x] Ring Counter  
- [x] Johnson Counter  
- [x] Clock Divider by 2  
- [x] Clock Divider by 3  
- [x] Clock Divider by 4  
- [x] Clock Divider by 248  

📁 [`/Asyn_Counter_TFF`](./Asyn_Counter_TFF)  
📁 [`/Syn_Up_Down_Counter`](./Syn_Up_Down_Counter)  
📁 [`/Ring_Counter`](./Ring_Counter)  
📁 [`/Jhonson_Counter`](./Jhonson_Counter)  
📁 [`/Clk_Div_2`](./Clk_Div_2)  
📁 [`/Clk_Div_3`](./Clk_Div_3)  
📁 [`/Clk_Div_4`](./Clk_Div_4)  
📁 [`/Clk_Div_248`](./Clk_Div_248)

</details>

<details>
<summary>📦 Shift Registers</summary>

- [x] Serial-In Serial-Out (SISO)  
- [x] Serial-In Parallel-Out (SIPO)  
- [x] Parallel-In Parallel-Out (PIPO)  
- [x] Parallel-In Serial-Out (PISO)  

📁 [`/SISO`](./SISO)  
📁 [`/SIPO`](./SIPO)  
📁 [`/PIPO`](./PIPO)  
📁 [`/PISO`](./PISO)

</details>

<details>
<summary>🔐 Latches</summary>

- [x] RS Latch using NAND Gates  
- [x] RS Latch using NOR Gates  
- [x] SR Latch with Enable  

📁 [`/RS_Latch_NAND_Gates`](./RS_Latch_NAND_Gates)  
📁 [`/RS_Latch_NOR_Gates`](./RS_Latch_NOR_Gates)  
📁 [`/SR_Latch_Enable`](./SR_Latch_Enable)

</details>

<details>
<summary>⚙️ Finite State Machines (FSM)</summary>

- [x] Mealy FSM for Half Adder  
- [x] Moore FSM for Half Adder  
- [x] Mealy FSM for Sequence Detector  
- [x] Moore FSM for Sequence Detector  

📁 [`/FSM_Mealy_Half_Adder`](./FSM_Mealy_Half_Adder)  
📁 [`/FSM_Moore_Half_Adder`](./FSM_Moore_Half_Adder)  
📁 [`/Mealy_FSM_Seq_Dec`](./Mealy_FSM_Seq_Dec)  
📁 [`/Moore_FSM_Seq_Dec`](./Moore_FSM_Seq_Dec)

</details>

<details>
<summary>🎯 Miscellaneous Modules</summary>

- [x] Pulse Modulo-3 Generator  
- [x] Pulse Modulo-11 Generator  
- [x] Linear Feedback Shift Register (LFSR)  

📁 [`/Pulse_Mod_3`](./Pulse_Mod_3)  
📁 [`/Pulse_Mod_11`](./Pulse_Mod_11)  
📁 [`/LFSR`](./LFSR)

</details>

---

## 🚀 How to Simulate

1. Use any Verilog simulator (ModelSim, Vivado, Icarus Verilog, etc.)  
2. Run the testbench file:  
   ```bash
   iverilog module.v tb_module.v -o sim.out  
   vvp sim.out  
