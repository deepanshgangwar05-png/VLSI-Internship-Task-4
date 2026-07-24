# VLSI-Internship-Task-4
## RTL Design of Finite State Machines (FSM) and Control Units
### 📌 Objective
The Objective of this task is to design and simulate Finite State Machines (FSMs) using Verilog HDL. This project focuses on understanding FSM concepts, implementing RTL designs, creating testbenches, and verifying functionality through simulation waveforms.
### 🛠 Tools Used
- Verilog HDL
- EDA Playground
- Icarus Verilog
- GTKWave
- ModelSim (Optional)
### 📚 Concepts Covered
- Finite State Machine (FSM)
- Moore Machine
- Mealy Machine
- State Transition Diagram
- State Encoding
- RTL Design
- Verilog HDL
- Testbench Development
- Waveform Analysis
 
## 🚦 Project 1: Traffic Light Controller
### Description
A Traffic Light Controller is designed using FSM concepts. The controller cycles through three states:

| State   |  Output  |
|---------|----------|
| RED     |  Stop    |
| GREEN   |  Go      |
| YELLOW  |  Wait    |
### State Transition
RED → GREEN → YELLOW → RED
## Simulation Waveforms
### Traffic Light Controller
<img width="1366" height="724" alt="Traffic lights_graph" src="https://github.com/user-attachments/assets/a4e582e6-6a1e-4ffc-994e-86f891e67016" />

## 🔍 Project 2: Sequence Detector (1011)
### Description
The Sequence Detector identifies the binary pattern 1011 in a serial input stream using FSM design.
### States
| States | Meaning       |
|--------|---------------|
| S0     | Initial State |
| S1     | Detected 1    |
| S10    | Detected 10   |
| S101   | Detected 101  |
## Detection Sequence
1011 → Output = 1
## Simulation Waveform
### SEQUENCE DETECTOR 1011
<img width="1366" height="724" alt="Traffic lights_graph" src="https://github.com/user-attachments/assets/3da49be0-2a90-4c48-b855-e2742057f02d" />

## 🧪 Verification
Testbenches were developed to verify:

- State Transitions
- Reset Operation
- Clock Functionality
- Output Logic
- Pattern Detection Accuracy
## 📈 Results
✅ Successfully designed FSM-based digital circuits

✅ Implemented RTL design using Verilog HDL

✅ Developed and executed testbenches

✅ Verified outputs through simulation waveforms

✅ Analyzed state transitions using GTKWave

## 🎯 Learning Outcomes
- Understanding of FSM architecture
- Moore vs Mealy machine implementation
- RTL coding practices in Verilog
- Sequential circuit design
- Simulation and debugging techniques
- Waveform analysis skills
## 🏆 Conclusion
This task demonstrates the implementation and verification of Finite State Machines (FSMs) using Verilog HDL. The Traffic Light Controller and Sequence Detector projects provide practical experience in sequential circuit design, simulation, and waveform analysis, which are essential skills in VLSI and Digital Design Engineering.

## Author
DEEPANSH GANGWAR



