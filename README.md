# FPV Enforcer

A simple FiveM script mod that enforces first-person view (FPV) when aiming down sights (ADS), allows custom field of view (FOV) adjustments, and provides an option to hide the reticle.

## Features

- **Enforced First Person View**: Forces the player into first-person view when aiming.
- **Custom FOV**: Set a desired FOV degree for the first-person view.
- **Hide Reticle**: Provides an option to hide the crosshair for a more immersive experience.
- **Configurable Options**: Tweak the settings as per your preference using the `config.lua` file.

## Installation

1. Download and extract the `fpv-enforcer` directory.
2. Place the extracted folder into your `resources` directory.
3. Add `ensure fpv-enforcer` to your server.cfg.
4. Adjust settings as necessary in `config.lua`.

## Configuration

| Option | Description | Default |
|--------|-------------|---------|
| `ForceFPV` | Enforces First Person View when aiming down sights (ADS). | `true` |
| `ForceFOV` | Enforces a custom FOV degree on the FPV. | `false` |
| `FOV` | FOV degree. | `90.0` |
| `HideReticle` | Hides the crosshair. | `true` |
| `HoldBreath` | Holds breath at the beginning of ADS (Currently not implemented in the script). | `false` |

## Credits

- **Author**: MannaMuncher <admin@bloodshotstudios.com>

## License

MIT

## Version

1.0.0

---

For any further assistance or issues, please reach out to the author at <admin@bloodshotstudios.com>.
