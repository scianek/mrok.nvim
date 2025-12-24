# mrok

A clean, dark colorscheme with vibrant syntax highlighting

<img width="2560" height="1600" alt="mrok demo" src="https://github.com/user-attachments/assets/36baab43-fcd5-47a5-a169-a14670af558b" />

## Features

- Full Tree-sitter support
- LSP diagnostics
- Plugin integrations:
  - Telescope
  - GitSigns
  - Mason
  - nvim-treesitter-context
- Auto-detects lazy.nvim to load integrations only when needed

## Installation

Using `lazy.nvim`:

```lua
{
    "scianek/mrok.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("mrok")
    end,
}
```

## Palette

<details>
<summary>Click to expand</summary>

### Main Colors

| Name    | OKLCH                  | Hex     |
|---------|------------------------|---------|
| orange  | oklch(86% 0.08 48)     | #fec2a4 |
| green   | oklch(87% 0.13 170)    | #6ef0c7 |
| cyan    | oklch(84% 0.11 213)    | #69ddf5 |
| blue    | oklch(77% 0.115 266)   | #92b2fe |
| magenta | oklch(76% 0.158 307)   | #cb94ff |
| red     | oklch(75% 0.16 358)    | #fc7ead |

### Neutral Colors

| Name  | OKLCH                    | Hex     |
|-------|--------------------------|---------|
| bg    | oklch(12% 0.04 260)      | #010515 |
| bg2   | oklch(16% 0.04 261)      | #040d1e |
| bg3   | oklch(21% 0.04 263)      | #0e182b |
| gray1 | oklch(33% 0.07 265)      | #233459 |
| gray2 | oklch(50% 0.11 270)      | #4b5ea2 |
| fg    | oklch(83% 0.05 271)      | #bbc6e9 |

### Accent Backgrounds


| Name         | OKLCH             | Hex     |
|------------|---------------------|---------|
| bg_orange  | oklch(30% 0.05 48)  | #422617 |
| bg_green   | oklch(30% 0.05 170) | #0d362a |
| bg_cyan    | oklch(30% 0.05 213) | #04343d |
| bg_blue    | oklch(28% 0.06 266) | #1b2746 |
| bg_magenta | oklch(28% 0.06 307) | #312040 |
| bg_red     | oklch(27% 0.06 358) | #3d1826 |

</details>
