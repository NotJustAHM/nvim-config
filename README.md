# NEOVIM CONFIGURATION

My personal Neovim configuration, built around **Lua**, **lazy.nvim**, **LSP**, **Mason**, **Treesitter**, and a collection of plugins focused on programming, note-taking, and LaTeX.

This configuration is primarily designed for **Linux**, especially Debian-based systems.

The goal of this repository is not to provide a universal Neovim distribution. It is a personal configuration that reflects the way I currently work, study, and write code.

---

## Table of Contents

* [General Info](#general-info)

  * [Main Uses](#main-uses)
  * [Philosophy](#philosophy)
* [Features](#features)
* [Installation](#installation)

  * [Clone the Repository](#clone-the-repository)
  * [Start Neovim](#start-neovim)
* [Requirements](#requirements)

  * [Core Dependencies](#core-dependencies)
  * [Python](#python)
  * [Rust](#rust)
  * [LaTeX](#latex)
  * [Optional Dependencies](#optional-dependencies)
* [Configuration](#configuration)

  * [Directory Structure](#directory-structure)
  * [Leader Key](#leader-key)
* [Keymaps](#keymaps)

  * [General](#general)
  * [File Navigation](#file-navigation)
  * [Window Management](#window-management)
  * [Buffer Management](#buffer-management)
  * [Telescope](#telescope)
  * [LSP](#lsp)
  * [Code Editing](#code-editing)
  * [LaTeX](#latex-1)
* [Language Support](#language-support)
* [Plugins](#plugins)
* [Plugin Information](#plugin-information)
* [Customization](#customization)
* [Troubleshooting](#troubleshooting)
* [Screenshots](#screenshots)

---

## General Info

This is my personal Neovim configuration.

I use Neovim as my primary editor for programming, studying, writing technical notes, and working with LaTeX.

The configuration is written entirely in Lua and uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.

### Main Uses

The configuration is currently focused on:

* Python development
* C and C++ development
* Rust development
* Lua configuration and development
* Bash scripting
* Markdown
* LaTeX and technical writing
* General software development
* Note-taking and documentation

### Philosophy

I prefer a configuration that is:

* Lightweight
* Modular
* Easy to understand
* Easy to modify
* Based on native Neovim functionality where possible
* Focused on learning rather than hiding everything behind abstractions

This is a personal configuration, so some parts may change as my workflow evolves.

---

## Features

Some of the main features included in this configuration are:

* Lazy-loaded plugins with `lazy.nvim`
* LSP support
* Automatic LSP installation through Mason
* Syntax highlighting with Treesitter
* Autocompletion
* Snippets
* Fuzzy finding with Telescope
* File navigation
* Git integration
* Diagnostics
* Code formatting
* Code folding
* Notifications and command-line UI improvements
* LaTeX editing with VimTeX
* Python development support
* Rust development support
* C/C++ development support
* Markdown support
* Custom statusline
* Custom keymaps
* Automatic pairing of brackets and quotes

---

# Installation

## Clone the Repository

Back up your existing Neovim configuration if you already have one.

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

Clone this repository:

```bash
git clone https://github.com/NotJustAHM/nvim-config.git ~/.config/nvim
```

Alternatively, if you have SSH configured:

```bash
git clone git@github.com:NotJustAHM/nvim-config.git ~/.config/nvim
```

Then start Neovim:

```bash
nvim
```

`lazy.nvim` should automatically bootstrap itself and begin installing the configured plugins.

After the plugins have finished installing, restart Neovim:

```bash
nvim
```

---

# Requirements

The configuration is primarily intended for Linux systems.

## Core Dependencies

The following tools are recommended:

* Neovim
* Git
* ripgrep
* fd
* curl
* unzip
* zip
* xclip
* a Nerd Font

On Debian:

```bash
sudo apt update

sudo apt install -y \
    git \
    curl \
    ripgrep \
    fd-find \
    unzip \
    zip \
    xclip \
    build-essential
```

On Debian, `fd` may be installed under the name `fdfind`.

You can create a symlink if necessary:

```bash
mkdir -p ~/.local/bin
ln -s "$(which fdfind)" ~/.local/bin/fd
```

Make sure `~/.local/bin` is included in your `PATH`.

---

## Python

Python support requires Python 3 and `pynvim`.

```bash
sudo apt install -y python3 python3-pip python3-venv
```

Install the Neovim Python provider:

```bash
python3 -m pip install --user --upgrade pynvim --break-system-packages
```

Verify the installation:

```bash
python3 --version
python3 -c "import pynvim; print(pynvim.__version__)"
```

---

## Rust

Rust is required for Rust development and is also useful for installing some command-line tools used by the configuration.

Install Rust using `rustup`:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
```

Reload the environment:

```bash
. "$HOME/.cargo/env"
```

Verify:

```bash
rustc --version
cargo --version
```

---

## LaTeX

LaTeX support is provided through VimTeX.

For a complete LaTeX installation on Debian:

```bash
sudo apt install texlive-full
```

A PDF viewer is also required for a comfortable VimTeX workflow.

For example:

```bash
sudo apt install zathura
```

The configuration can then use VimTeX to compile `.tex` documents and open the resulting PDF.

---

## Tree-sitter CLI

The Tree-sitter CLI can be installed through Cargo:

```bash
cargo install tree-sitter-cli
```

Verify:

```bash
tree-sitter --version
```

---

## Optional Dependencies

Some plugins or Neovim providers support additional programming languages and runtimes.

Depending on what you use, you may want:

* Node.js
* npm
* Go
* Ruby
* PHP
* Java
* Julia
* Composer

These are not required for the core configuration.

---

# Configuration

The configuration is written in Lua and is organized into separate files instead of placing everything inside `init.lua`.

This makes individual parts of the configuration easier to find and modify.

## Directory Structure

A simplified version of the configuration looks like this:

```text
nvim/
├── init.lua
├── lazy-lock.json
├── lua/
│   ├── config/
│   ├── plugins/
│   └── ...
└── README.md
```

The exact structure may change as the configuration evolves.

Plugin configurations are kept separate whenever possible.

---

## Leader Key

The leader key is:

```text
SPACE
```

For example:

```text
<leader>ff
```

means:

```text
SPACE + f + f
```

The leader key can be changed in the configuration if desired.

---

# Keymaps

The following are some of the main keymaps.

The configuration contains additional plugin-specific mappings.

## General

| Keymap     | Description                                        |
| ---------- | -------------------------------------------------- |
| `<leader>` | `SPACE`                                            |
| `<C-s>`    | Save file                                          |
| `<C-c>`    | Clear search highlight                             |
| `<C-/>`    | Toggle comment                                     |
| `<Esc>`    | Clear search highlighting / return to normal state |

---

## File Navigation

| Keymap       | Description           |
| ------------ | --------------------- |
| `<leader>e`  | Toggle file explorer  |
| `<leader>f`  | File-related commands |
| `<leader>ff` | Find files            |
| `<leader>fg` | Live grep             |
| `<leader>fb` | Find buffers          |
| `<leader>fr` | Find recent files     |

---

## Window Management

| Keymap       | Description               |
| ------------ | ------------------------- |
| `<leader>sv` | Split window vertically   |
| `<leader>sh` | Split window horizontally |
| `<C-h>`      | Move to left window       |
| `<C-j>`      | Move to lower window      |
| `<C-k>`      | Move to upper window      |
| `<C-l>`      | Move to right window      |

---

## Buffer Management

| Keymap       | Description           |
| ------------ | --------------------- |
| `<leader>bn` | Next buffer           |
| `<leader>bp` | Previous buffer       |
| `<leader>bd` | Delete current buffer |
| `<leader>bo` | Open a new buffer     |

---

## Telescope

[Telescope](https://github.com/nvim-telescope/telescope.nvim) is used for fuzzy finding.

| Keymap       | Description  |
| ------------ | ------------ |
| `<leader>ff` | Find files   |
| `<leader>fg` | Live grep    |
| `<leader>fb` | Find buffers |
| `<leader>fr` | Recent files |
| `<leader>fk` | Find keymaps |

Inside Telescope:

| Keymap  | Description |
| ------- | ----------- |
| `<C-j>` | Move down   |
| `<C-k>` | Move up     |
| `<CR>`  | Select      |
| `<Esc>` | Close       |

---

## LSP

The configuration uses Neovim's built-in LSP functionality together with Mason.

Common LSP mappings include:

| Keymap       | Description          |
| ------------ | -------------------- |
| `K`          | Show documentation   |
| `gd`         | Go to definition     |
| `gr`         | Find references      |
| `gi`         | Go to implementation |
| `<leader>ca` | Code action          |
| `<leader>rn` | Rename symbol        |
| `<leader>d`  | Show diagnostics     |

---

## Code Editing

| Keymap    | Description                        |
| --------- | ---------------------------------- |
| `<C-/>`   | Toggle comment                     |
| `<C-d>`   | Duplicate / editor-specific action |
| `<Tab>`   | Next completion/snippet item       |
| `<S-Tab>` | Previous completion/snippet item   |
| `<CR>`    | Confirm completion                 |

Some mappings depend on the active plugin and filetype.

---

# LaTeX

LaTeX support is provided through [VimTeX](https://github.com/lervag/vimtex).

The configuration is designed around a workflow where a `.tex` document can be compiled continuously while the resulting PDF is opened in a PDF viewer.

Common mappings include:

| Keymap       | Description                     |
| ------------ | ------------------------------- |
| `<leader>ll` | Start VimTeX compilation/viewer |
| `<leader>lc` | Clean generated files           |
| `<leader>le` | Show/close LaTeX errors         |
| `<leader>lt` | Show table of contents          |

VimTeX also provides many additional commands and mappings.

You can view them inside Neovim:

```vim
:h vimtex
```

---

# Language Support

Treesitter is used for syntax highlighting, indentation, folding, and other syntax-aware features.

Currently supported languages include:

* Bash
* C
* C++
* CSS
* Dockerfile
* HTML
* JavaScript
* JSON
* Lua
* Markdown
* Python
* Rust
* TypeScript
* TSX
* YAML
* LaTeX
* BibTeX

The exact list may change over time.

To check installed parsers:

```vim
:TSInstallInfo
```

To update parsers:

```vim
:TSUpdate
```

---

# LSP Servers

LSP servers are managed through [Mason](https://github.com/mason-org/mason.nvim).

The configuration currently uses or is prepared for:

* `basedpyright` — Python
* `clangd` — C/C++
* `lua_ls` — Lua
* `marksman` — Markdown
* `rust_analyzer` — Rust
* `texlab` — LaTeX

To open Mason:

```vim
:Mason
```

To inspect LSP status:

```vim
:LspInfo
```

To check Neovim's overall health:

```vim
:checkhealth
```

---

# Plugins

The configuration currently uses a number of plugins to provide its functionality.

## Plugin Manager

* [lazy.nvim](https://github.com/folke/lazy.nvim)

## LSP

* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [mason.nvim](https://github.com/mason-org/mason.nvim)
* [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim)
* [lsp-progress.nvim](https://github.com/linrongbin16/lsp-progress.nvim)
* [lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
* [lspkind.nvim](https://github.com/onsails/lspkind.nvim)

## Completion and Snippets

* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
* [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
* [cmp-path](https://github.com/hrsh7th/cmp-path)
* [LuaSnip](https://github.com/L3MON4D3/LuaSnip)

## Navigation

* [Telescope](https://github.com/nvim-telescope/telescope.nvim)
* [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
* [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)

## Syntax

* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)

## UI

* [Noice](https://github.com/folke/noice.nvim)
* [nvim-notify](https://github.com/rcarriga/nvim-notify)
* [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
* [nui.nvim](https://github.com/MunifTanjim/nui.nvim)
* [catppuccin](https://github.com/catppuccin/nvim)

## Editing

* [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
* [Comment.nvim](https://github.com/numToStr/Comment.nvim)
* [vim-illuminate](https://github.com/RRethy/vim-illuminate)
* [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)

## LaTeX

* [VimTeX](https://github.com/lervag/vimtex)

## Utilities

* [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
* [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)

---

# Plugin Information

Each plugin is configured separately whenever practical.

The purpose of this structure is to make the configuration easier to maintain.

For example, instead of putting every option inside `init.lua`, a plugin can have its own configuration file:

```text
lua/
└── plugins/
    ├── telescope.lua
    ├── treesitter.lua
    ├── lsp.lua
    ├── mason.lua
    └── ...
```

This makes it possible to modify or remove a plugin without having to search through a large configuration file.

---

# Customization

This configuration is intended to be modified.

If you clone this repository, you should treat it as a starting point rather than something that must be used exactly as it is.

Some of the most useful places to customize are:

```text
lua/
├── config/
│   ├── options.lua
│   ├── keymaps.lua
│   └── ...
└── plugins/
    ├── ...
```

You can change:

* Colorscheme
* Fonts
* Keymaps
* LSP servers
* Treesitter parsers
* Completion behavior
* Statusline
* File explorer
* Telescope mappings
* LaTeX settings
* Editor options

---

# Troubleshooting

If something is not working correctly, start with:

```vim
:checkhealth
```

For LSP-related problems:

```vim
:LspInfo
```

For Mason:

```vim
:Mason
```

For Treesitter:

```vim
:TSInstallInfo
```

For Lazy:

```vim
:Lazy
```

If a plugin is behaving unexpectedly, checking its configuration and the Neovim log is usually a good starting point.

The LSP log can be found at:

```text
~/.local/state/nvim/lsp.log
```

---

# Screenshots

Screenshots will be added later.

---

# Notes

This configuration is actively evolving.

Plugins, keymaps, language servers, and other parts of the configuration may change as my workflow and requirements change.

If you find something useful here, feel free to take inspiration from it and adapt it to your own setup.

---

## License

This configuration is provided as-is.

Feel free to use, modify, and adapt it for your own Neovim setup.

