# Technical Notes

## Simulation Setup

The launcher selects `DevelopmentBoard`, compiles the RTL in `src/`, and builds the C++/OpenGL viewer in `sim/`. Generated files are stored in `build/`.

The source maps `a` to reset and `s`/`d`/`f`/`g` to B2/B3/B4/B5.

## Verification

On 5 September 2026, the `DevelopmentBoard` source set passed static compilation/elaboration with pyslang 11.0.0 and a default time scale of `1ns/1ps`. The launcher passed `bash -n`.

Behavioral simulation, C++/OpenGL execution, FPGA synthesis, and board testing have not been verified in this review. Pin constraints, bitstreams, and measured hardware results are not included.

## Integration Issues

| Area | Current source behavior |
| --- | --- |
| Start input | `btn_start = B2 \| B5` requires both active-low inputs to be low to generate a falling edge. The intended start-key mapping needs checking. |
| Raster timing | The horizontal counter increments while `hcount <= 799`, including a count of 800. Sync bounds need checking against the viewer. |
| Text memory | `char_1` has indices 0–10, but its reset loop writes indices 0–31. |
| Initialization | Some flash and simulator-status signals have no reset assignment. |
| Wrapper interface | A three-bit mode connects to a two-bit text-screen input; LED outputs are unassigned. |
| Button handling | Inputs are sampled and edge-detected. The `DEBOUNCE` parameter is unused. |

[Project overview](../README.md)
