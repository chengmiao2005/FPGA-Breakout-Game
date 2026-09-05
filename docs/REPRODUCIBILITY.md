# Reproducibility and integration notes

## September 2026 maintenance

The original flat upload used names such as `src_defines.v`, while Verilog included `defines.v` and the launcher expected other filenames. Files now use `src/`, `sim/`, and `scripts/`; the launcher lists all RTL sources, selects `DevelopmentBoard` explicitly, and keeps generated output in `build/`. The button module parameters are declared before the ANSI port list to satisfy static elaboration; their values and the RTL logic are unchanged.

## Current verification scope

See [VALIDATION.md](VALIDATION.md) for the checks performed in the maintenance environment. Static checks do not establish gameplay, synthesis timing, or hardware operation. No board pin constraints, bitstream, or measured performance report is included.

## Source-level issues to resolve before a live demo

| Area | Observation from the current source |
| --- | --- |
| Start input | The wrapper computes `btn_start` as `B2 | B5`. Since the button logic detects falling edges on active-low inputs, a single low input does not produce a start pulse while the other remains high. Confirm the intended start-key mapping. |
| Raster timing | The horizontal counter uses `hcount <= 799` before incrementing, which includes a count of 800. Sync pulse bounds also need checking against the viewer. |
| Text memory | `char_1` is declared for indices 0–10, but its reset loop writes indices 0–31. |
| Initialization | Some flash and simulator-status signals have no reset assignment. |
| Wrapper interface | The wrapper's three-bit mode connects to a two-bit text-screen input, and the LED outputs are unassigned. |
| Debouncing | The button module samples and edge-detects inputs; its `DEBOUNCE` parameter is unused. A hardware debounce implementation should not be inferred from the parameter name. |

The source key map is `a` for reset, `s`/`d`/`f`/`g` for B2/B3/B4/B5. It is a wiring reference, not a claim that all game modes have passed interactive testing.

## Suggested next evidence

After correcting and simulating the integration, record a short actual demo showing reset, start, paddle movement, block removal, and game end. Add the simulator/tool versions and the exact commit used. If a board is used, include its model, clock, pin constraints, and measured results. These items should come from an actual run.
