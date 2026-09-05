# Technical Notes

## Simulation Setup

The launcher selects `DevelopmentBoard`, compiles the RTL in `src/`, and builds the C++/OpenGL viewer in `sim/`. Generated files are stored in `build/`.

The simulator maps `a` to reset and `s`/`d`/`f`/`g` to B2/B3/B4/B5.

## Verification Record

On 5 September 2026, the original `DevelopmentBoard` source set passed static compilation/elaboration with pyslang 11.0.0 and the launcher passed `bash -n`.

The application-cleanup branch subsequently corrected several source-level issues identified during review:

- VGA horizontal/vertical counter wrap conditions and sync-pulse widths.
- Out-of-range reset indexing in the end-screen text memory.
- Text bitmap column indexing at the 128-pixel boundary.
- Active-low composite start-button wiring in the simulation wrapper.
- Mode-width matching between the wrapper and the start/end display module.
- Unused simulator LED outputs are now explicitly held inactive.

These maintenance changes have not been re-validated with a full behavioral simulation or physical FPGA board in this review environment.

## Current Scope and Limitations

- The public repository is intended for source review and simulation-oriented demonstration.
- The C++/OpenGL viewer expects active-high sync edges, so the RTL sync polarity is retained for compatibility with that wrapper.
- The `DEBOUNCE` parameter in `btn_ctrl.v` is currently unused; inputs are synchronized and edge-detected but no counter-based debounce filter is implemented.
- Pin constraints, generated bitstreams, measured timing reports, and physical-board measurements are not included in the public repository.
- Hardware synthesis, bitstream generation, and board-level testing should be repeated before making claims about physical deployment.

[Project overview](../README.md)
