# Miao Cheng — Engineering Portfolio

**Electronic and Information Engineering · Macau University of Science and Technology**

Selected projects in digital hardware design, digital signal processing, power and energy modeling, feedback control, and web-based geographic visualization.

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

## 4. Flywheel Energy Storage Modeling and Control

**MATLAB · Simulink · Dynamic Modeling · Feedback Control · Energy Storage**

An ongoing five-stage simulation study of motor–flywheel dynamics and control for a final-year project on rail transit braking energy recovery.

- Built incremental models covering ideal flywheel dynamics, mechanical losses, speed protection, and DC motor coupling.
- Implemented cascaded proportional speed/current control with compensation, feedforward, and current/voltage limits.
- Added idle, charging, discharging, and protection modes, with model-building scripts and an original simulation result figure.

The models use provisional test parameters; final parameter selection and wider rail-system integration remain in progress.

[Repository](https://github.com/chengmiao2005/Flywheel-Energy-Storage-System-MATLAB) · [Stage 5 model-building script](https://github.com/chengmiao2005/Flywheel-Energy-Storage-System-MATLAB/blob/main/FYP_Flywheel_Stage5_COMPLETE_v2.m) · [Simulation output](https://github.com/chengmiao2005/Flywheel-Energy-Storage-System-MATLAB/blob/main/results/stage5-results.png)

## 5. Hengqin Enterprise Map Visualization

**HTML/CSS/JavaScript · Leaflet · Web GIS · JSON · Data Visualization**

A web-based enterprise information mapping application adapted from an internship project, presented with fictional demonstration records.

- Integrated map markers, enterprise search, detail panels, and interactive record editing.
- Supported visit logs, JSON import/export, manual coordinate confirmation, and geographic range management.
- Provided separate viewing and browser-local editing interfaces, with locally bundled Leaflet assets.

The public edition uses synthetic enterprise data and browser-local storage; it does not include production records or server-side authentication.

[Repository](https://github.com/chengmiao2005/Hengqin-Tax-Map-Visualization-System) · [Editing interface source](https://github.com/chengmiao2005/Hengqin-Tax-Map-Visualization-System/blob/main/admin.html) · [Demonstration data](https://github.com/chengmiao2005/Hengqin-Tax-Map-Visualization-System/blob/main/data/seed-enterprises.js)
