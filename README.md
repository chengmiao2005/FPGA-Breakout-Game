# FPGA Breakout Game

A Verilog digital-design course project combining game control, ball motion, collision handling, and VGA pixel rendering.

**Verilog · RTL Design · Finite-State Machines · VGA**

[Engineering Portfolio](docs/PORTFOLIO.md) · [Technical Notes](docs/Technical-Notes.md)

## Design

The game core targets a 640 × 480 visible area with three rows of block-state registers. The simulation wrapper adds start/end screens and converts game colors to RGB565 for a C++ viewer.

| Module | Function |
| --- | --- |
| [breakout_top](src/breakout_top.v) | Clock division and module integration |
| [btn_ctrl](src/btn_ctrl.v) | Button sampling, edge detection, and paddle control |
| [ball_logic](src/ball_logic.v) | Ball direction and position updates |
| [collision_logic](src/collision_logic.v) | Collision signals, block state, and win/lose outputs |
| [display_logic](src/display_logic.v) | Paddle, ball, blocks, and game-state colors |
| [vga](src/vga.v) | Raster counters and synchronization |
| [start_end](src/start_end.v) | Start/end text rendering |

## Source Layout

- [src/](src): game RTL and shared definitions.
- [sim/](sim): development-board wrapper and C++/OpenGL viewer.
- [scripts/](scripts): simulation launcher.
- [docs/](docs): portfolio and technical notes.

## Build

Requires Bash, Verilator, a C++ compiler, Make, and OpenGL/GLUT development libraries. The viewer requires a graphical desktop.

```bash
git clone https://github.com/chengmiao2005/FPGAfinalproject.git
cd FPGAfinalproject
bash scripts/run_simulation.sh --build-only
bash scripts/run_simulation.sh
```

Build products are stored in `build/`. See [Technical Notes](docs/Technical-Notes.md) for the verification scope and current integration issues.
