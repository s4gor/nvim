# 💤 My Neovim Configuration

A modern **Neovim** setup using **lazy.nvim** as the plugin manager.  
Includes essential plugins, optimized keymaps, and ready-to-use configurations for JavaScript, TypeScript, C++, and general development.

---

## Features

- Plugin management via **lazy.nvim**
- **Neo-tree** file explorer
- **Bufferline** for buffer/tab navigation
- **Color themes** with easy switching
- Language-specific plugins for JS/TS and C++
- Built-in terminal support
- Clipboard integration (copy, paste, delete)
- Custom keymaps for productivity

---

## Prerequisites

- **Neovim ≥ 0.9**
- **Git**
- **Node.js** (optional, for JS/TS LSP)
- **Nerd Fonts** (for icons in Neo-tree and Bufferline)

---

## Installation

1. Backup your existing Neovim configuration (optional):

        mv ~/.config/nvim ~/.config/nvim_backup

2. Clone this repository:

        git clone https://github.com/your-username/nvim-config.git ~/.config/nvim

3. Launch Neovim:

        nvim

On first launch, **lazy.nvim** will automatically install all plugins.

---

## Directory Structure

    ~/.config/nvim
    ├── init.lua                # Entry point
    ├── lua
    │   ├── core
    │   │   ├── keymaps.lua     # Keybinding configuration
    │   │   └── options.lua     # Neovim options
    │   └── plugins
    │       ├── common.lua      # Common plugins
    │       ├── neotree.lua     # Neo-tree configuration
    │       ├── colortheme.lua  # Theme configuration
    │       ├── javascript.lua  # JS/TS plugins
    │       ├── bufferline.lua  # Bufferline configuration
    │       └── cpp.lua         # C++ plugins

---

## Keymaps

**Leader key:** Space (`<Space>`)

### General Keymaps

| Mode | Keys        | Action                          |
|------|------------|--------------------------------|
| n/v  | `<leader>c` | Copy selection or line to clipboard |
| n    | `<leader>p` | Paste from system clipboard     |
| n/v  | `<leader>x` | Cut/delete to clipboard  |
| n    | `<leader>e` | Toggle Neo-tree file explorer   |
| n    | `<leader>z` | Close current buffer           |
| n    | `<leader>t` | Open terminal split             |
| t    | `<Esc>`     | Exit terminal mode             |

### Buffer Navigation

| Mode | Keys        | Action                  |
|------|------------|------------------------|
| n    | `<Tab>`     | Next buffer             |
| n    | `<S-Tab>`   | Previous buffer         |

### Window Navigation

| Mode | Keys        | Action                        |
|------|------------|--------------------------------|
| n    | `<C-h>`     | Move to left split            |
| n    | `<C-j>`     | Move to split below           |
| n    | `<C-k>`     | Move to split above           |
| n    | `<C-l>`     | Move to right split           |
| t    | `<C-h>`     | Move to left split (terminal) |
| t    | `<C-j>`     | Move down (terminal)          |
| t    | `<C-k>`     | Move up (terminal)            |
| t    | `<C-l>`     | Move right (terminal)         |

---

## Plugins

| Plugin                            | Description                          |
|----------------------------------|--------------------------------------|
| lazy.nvim                          | Plugin manager                       |
| neo-tree.nvim                      | File explorer                        |
| bufferline.nvim                    | Tab and buffer management             |
| nvim-treesitter                    | Syntax highlighting                  |
| LSP Config                         | Language Server Protocol support      |
| Color Themes                        | Beautiful themes for Neovim           |
| JavaScript/TypeScript Plugins       | Configured in `javascript.lua`       |
| C++ Plugins                         | Configured in `cpp.lua`              |

---

## Customization

- Change leader or keymaps in `lua/core/keymaps.lua`
- Modify editor options in `lua/core/options.lua`
- Add/remove plugins in `lua/plugins/` and sync using `:Lazy sync`

---

## Launch Neovim

Start Neovim:

    nvim

To manually update or install plugins:

    :Lazy sync

---

## Support

- Open issues or PRs on GitHub
- For questions or feedback, use GitHub Discussions
