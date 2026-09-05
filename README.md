# FPGA Breakout Game

A modular Verilog digital-design project implementing a Breakout-style game with VGA output, button control, collision handling, and on-screen start/end states.

**Technologies:** Verilog HDL · RTL Design · Finite-State Machines · VGA · Xilinx Vivado

## Highlights

- Modular RTL structure for paddle control, ball motion, collision detection, block-state management, display generation, and VGA timing.
- 640 × 480 visible-area rendering with separate game-state and start/end-screen logic.
- Development-board wrapper and C++/OpenGL viewer for simulation-oriented integration.
- Source set organized for readable review of the complete digital-design flow.

## Main Modules

| Module | Function |
| --- | --- |
| [breakout_top](src/breakout_top.v) | Top-level clocking and module integration |
| [btn_ctrl](src/btn_ctrl.v) | Button sampling, edge detection, and paddle control |
| [ball_logic](src/ball_logic.v) | Ball direction and position updates |
| [collision_logic](src/collision_logic.v) | Collision handling, block state, and win/lose logic |
| [display_logic](src/display_logic.v) | Paddle, ball, blocks, and game-state color generation |
| [vga](src/vga.v) | Raster counters and synchronization |
| [start_end](src/start_end.v) | Start/end text rendering |

## Repository Layout

- `src/` — game RTL and shared definitions
- `sim/` — development-board wrapper and C++/OpenGL viewer
- `scripts/` — simulation launcher
- `docs/` — portfolio page and engineering notes

## Build / Simulation Setup

The repository includes a Verilator-oriented launcher and C++/OpenGL viewer. A typical local workflow is:

```bash
git clone https://github.com/chengmiao2005/FPGAfinalproject.git
cd FPGAfinalproject
bash scripts/run_simulation.sh --build-only
bash scripts/run_simulation.sh
```

Build products are stored in `build/`.

## Verification Scope

A prior version of the development-board source set passed source-level compilation/elaboration during repository review. The current cleanup also fixes several obvious integration issues; those maintenance changes have not been re-validated with a full behavioral simulation or physical FPGA board in this review environment.

The repository does **not** claim verified board deployment, bitstream generation, or measured hardware performance in its current public form. See [Technical Notes](docs/Technical-Notes.md) for the verification record and remaining limitations.

## Portfolio

See the [Engineering Portfolio](docs/PORTFOLIO.md) for a compact overview of this and related projects.
