# Miao Cheng — Engineering Portfolio

**Electronic and Information Engineering · Macau University of Science and Technology**

Selected undergraduate projects in digital hardware, digital signal processing, and wireless-power modeling. The portfolio is intended as a concise companion to my graduate-application CV.

## 1. FPGA Breakout Game

**Verilog HDL · RTL Design · Finite-State Machines · VGA**

A modular digital-design project implementing a Breakout-style game on an FPGA-oriented RTL architecture.

- Separated control, ball-motion, collision, display, and VGA-timing logic into dedicated modules.
- Implemented paddle and ball rendering, block-state updates, win/lose logic, and start/end screens.
- Organized the source for simulation-oriented review with a development-board wrapper and C++/OpenGL viewer.

[Repository](https://github.com/chengmiao2005/FPGAfinalproject) · [Verilog source](https://github.com/chengmiao2005/FPGAfinalproject/tree/main/src)

## 2. LPC Voice Changer

**MATLAB · Digital Signal Processing · Speech Analysis/Synthesis**

A frame-based speech-processing project using linear predictive coding and pitch-period estimation to modify recorded speech.

- Performed LPC analysis and autocorrelation-based pitch-period estimation.
- Modified excitation and LPC pole angles during resynthesis to create a voice-changing effect.
- Added standalone microphone/WAV processing and waveform/spectrum comparison utilities.

[Repository](https://github.com/chengmiao2005/DSP-voice-changer) · [Core processing code](https://github.com/chengmiao2005/DSP-voice-changer/blob/main/lpc_male_to_female.m)

## 3. Wireless Power Transfer Modeling

**MATLAB · Circuit Modeling · Complex Impedance · Parameter Sweeps**

A steady-state coupled-coil wireless-power model using phasor calculations and complex impedances.

- Calculated compensation capacitances, branch currents, input/output power, and model efficiency.
- Explored frequency response and coupling-coefficient effects through parameter sweeps.
- Structured the model into reusable calculation and visualization scripts.

[Repository](https://github.com/chengmiao2005/-project-pp-) · [Model code](https://github.com/chengmiao2005/-project-pp-/blob/main/WirelessPowerSystem.m)

---

### Notes

These repositories document selected coursework and independent engineering work. Public repositories include only material suitable for external review; project descriptions are limited to functionality supported by the uploaded source and documentation.
