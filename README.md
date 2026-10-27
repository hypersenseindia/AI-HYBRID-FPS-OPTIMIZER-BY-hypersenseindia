# AI Hybrid FPS Optimizer

A two-part Termux installer and booster for mobile FPS titles: `requirements.sh` prepares the environment, `main.sh` runs the optimiser.

Non-root. Android only.

## Files

| File | Purpose |
| --- | --- |
| `requirements.sh` | Installs and verifies the Termux packages the optimiser needs |
| `main.sh` | The optimiser itself &mdash; device scan, tuning passes, FPS output |

## Run

```bash
pkg install -y git
git clone https://github.com/hypersenseindia/AI-HYBRID-FPS-OPTIMIZER-BY-hypersenseindia
cd AI-HYBRID-FPS-OPTIMIZER-BY-hypersenseindia
chmod +x requirements.sh main.sh
./requirements.sh
./main.sh
```

Run `requirements.sh` once. After that, `main.sh` is the only command you need.

## What it does

- Reads the device profile (cores, RAM, display refresh rate, thermal state)
- Applies a tuning pass sized to that profile rather than a fixed preset
- Prints a live status line so you can see the effect while the game runs
- Colour-coded terminal output: green for applied, yellow for skipped, red for unsupported

## Notes

- Termux only &mdash; it will not run under a stock Android shell.
- No system partition changes. Everything lives under `$HOME`.
- Gains depend on the device. On a phone already running at its cap, expect no change.
---

<p align="center">
  <sub>Built by <b>AG HYDRAXFF</b> &mdash; HYPERSENSEGLOBAL &middot;
  <a href="https://www.instagram.com/hydraxff_yt/">@hydraxff_yt</a></sub>
</p>