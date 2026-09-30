# Miao Cheng — Engineering Portfolio

**Electronic and Information Engineering · Macau University of Science and Technology**

Selected projects in digital hardware design, semiconductor device characterisation, digital signal processing, power and energy modeling, feedback control, and web-based geographic visualization.

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

An ongoing final-year simulation study of rail transit braking energy recovery, with five incremental motor–flywheel models and an integrated DC motor–flywheel and converter system.

- Connected synthetic railway demand, a DC link, a nonideal bidirectional converter and the motor–flywheel plant, with PI current control and anti-windup.
- Saved native MATLAB results cover 11 cases with 322/322 checks; one native Simulink integration case passed 67/67 checks. The project includes reproducible energy-accounting verification.
- Added 12 paired C++ parameter-study scenarios with matched terminal stores. Supplemental checks pass 945/948, with three strict auxiliary energy-identity diagnostics still failed.
- A separate aggregate rail-storage dispatch study compares schedule-informed and voltage-feedback control with matched terminal states. Across 100 synthetic scenarios, the mean additional source-energy saving is 0.0827 kWh (about 0.099%).

Parameters remain provisional and hardware validation is pending. The dispatch study is documented in an unpublished, non-peer-reviewed working manuscript.

[Repository](https://github.com/chengmiao2005/Flywheel-Energy-Storage-System-MATLAB) · [Integrated model and results](https://github.com/chengmiao2005/Flywheel-Energy-Storage-System-MATLAB/tree/main/integrated-system) · [Validation scope](https://github.com/chengmiao2005/Flywheel-Energy-Storage-System-MATLAB/blob/main/integrated-system/docs/VALIDATION_SCOPE_CN.md) · [Rail dispatch study](https://github.com/chengmiao2005/Flywheel-Energy-Storage-System-MATLAB/tree/main/research/rail-dispatch)

## 5. Hengqin Enterprise Map and Data Preparation

**HTML/CSS/JavaScript · Leaflet · Python · Excel Data Preparation · Web GIS**

A web-based enterprise information mapping application adapted from an internship project, presented with fictional demonstration records.

- Integrated map markers, enterprise search, detail panels, and interactive record editing.
- Supported visit logs, JSON import/export, manual coordinate confirmation, and geographic range management.
- Provided separate viewing and browser-local editing interfaces, with locally bundled Leaflet assets.
- Used supporting Python scripts to read Excel records, match coordinates by enterprise name/address, and check exported data against the source workbook.

The public edition uses synthetic enterprise data and browser-local storage; it does not include production records or server-side authentication.

[Repository](https://github.com/chengmiao2005/Hengqin-Tax-Map-Visualization-System) · [Editing interface source](https://github.com/chengmiao2005/Hengqin-Tax-Map-Visualization-System/blob/main/admin.html) · [Demonstration data](https://github.com/chengmiao2005/Hengqin-Tax-Map-Visualization-System/blob/main/data/seed-enterprises.js) · [Data preparation scripts](https://github.com/chengmiao2005/Hengqin-Tax-Map-Visualization-System/tree/main/tools)

## 6. MOSFET Characterisation and Parameter Extraction

**MATLAB · ngspice · Device Modelling · Parameter Extraction · Measurement-Error Analysis**

A simulation study connecting an educational MOSFET model with synthetic measurement errors and parameter estimation.

- Compared averaging and two-point calibration across 400 synthetic error scenarios; calibration with 25-reading averages reduced threshold RMSE from 12.5435 mV to 0.9011 mV, while retaining all 15 scenarios with worse absolute error after calibration.
- Automated MATLAB-to-ngspice DC sweeps and compared eight curves containing 1,078 simulated bias-point records against the analytical model.
- Extracted threshold voltage, current-scale coefficient, and channel-length modulation using 107 distinct fitting points, then evaluated 959 distinct held-out points without fit/check overlap.
- Demonstrated parameter non-uniqueness in a fixed-drain transfer curve and how an additional output scan supplies information to distinguish candidate parameters.

The saved runs use a shared educational model. Numerical agreement describes implementation consistency and same-model parameter recovery; it does not establish physical measurement accuracy.

[Repository](https://github.com/chengmiao2005/MOSFET-Characterisation-MATLAB-ngspice) · [Results and methodology](https://github.com/chengmiao2005/MOSFET-Characterisation-MATLAB-ngspice/blob/main/docs/RESULTS.md) · [Parameter-extraction code](https://github.com/chengmiao2005/MOSFET-Characterisation-MATLAB-ngspice/blob/main/project/stage3/RUN_STAGE3.m)
