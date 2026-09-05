# Miao Cheng — Engineering Portfolio

**Electronic and Information Engineering · Macau University of Science and Technology**

Selected projects in digital hardware design, digital signal processing, and wireless-power modeling.

## 1. FPGA Breakout Game

**Verilog HDL · RTL Design · Finite-State Machines · VGA**

A modular Breakout-style digital system implemented with FPGA-oriented RTL.

- Separated paddle control, ball motion, collision handling, block-state management, display generation, and VGA timing into dedicated modules.
- Implemented coordinate-based rendering, win/lose logic, and start/end display states.
- Organized the source with a development-board wrapper and C++/OpenGL simulation viewer.

[Repository](https://github.com/chengmiao2005/FPGA-Breakout-Game) · [Verilog source](https://github.com/chengmiao2005/FPGA-Breakout-Game/tree/main/src)

## 2. LPC Voice Changer

**MATLAB · Digital Signal Processing · Speech Analysis/Synthesis**

A frame-based speech-processing project using linear predictive coding and pitch-period estimation to modify recorded speech.

- Performed LPC analysis and autocorrelation-based pitch-period estimation.
- Modified excitation and LPC pole angles during resynthesis.
- Added microphone/WAV processing with waveform and spectrum comparison utilities.

[Repository](https://github.com/chengmiao2005/LPC-Voice-Changer-MATLAB) · [Core processing code](https://github.com/chengmiao2005/LPC-Voice-Changer-MATLAB/blob/main/lpc_male_to_female.m)

## 3. Wireless Power Transfer Modeling

**MATLAB · Circuit Modeling · Complex Impedance · Parameter Sweeps**

A steady-state coupled-coil wireless-power model based on phasor calculations and complex impedances.

- Calculated compensation capacitances, branch currents, input/output power, and model efficiency.
- Explored frequency-response and coupling-coefficient effects through parameter sweeps.
- Structured the model into reusable calculation and visualization scripts.

[Repository](https://github.com/chengmiao2005/Wireless-Power-Transfer-MATLAB) · [Model code](https://github.com/chengmiao2005/Wireless-Power-Transfer-MATLAB/blob/main/WirelessPowerSystem.m)
