# ⚡ NotJustAHM — Neovim Configuration

<p align="center">
  <img src="https://img.shields.io/badge/Neovim-0.12+-57A143?style=for-the-badge&logo=neovim&logoColor=white" alt="Neovim">
  <img src="https://img.shields.io/badge/Lua-Configuration-2C2D72?style=for-the-badge&logo=lua&logoColor=white" alt="Lua">
  <img src="https://img.shields.io/badge/Linux-Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white" alt="Debian">
  <img src="https://img.shields.io/github/license/NotJustAHM/nvim-config?style=for-the-badge" alt="License">
</p>

<p align="center">
  A modular, modern, and productivity-focused Neovim configuration
  built with Lua and <strong>lazy.nvim</strong>.
</p>

<p align="center">
  <i>Designed for Software Development, Data Science, Machine Learning, Academic Writing, and LaTeX.</i>
</p>

---

## ✨ Overview

This repository contains my personal Neovim configuration, designed to turn Neovim into a complete development environment while keeping the configuration **modular, maintainable, and lightweight**.

The configuration is built around a simple philosophy:

> **Neovim should stay fast, keyboard-driven, modular, and extensible.**

Instead of putting everything inside a single `init.lua`, plugins and configurations are separated into focused modules.

### 🎯 Main Goals

* ⚡ Fast startup and lazy-loaded plugins
* 🧩 Modular Lua-based configuration
* 🧠 Full LSP-powered development environment
* 🌳 Advanced syntax highlighting with Tree-sitter
* 🔍 Powerful project navigation and search
* ✍️ Intelligent autocompletion and snippets
* 🧪 Testing and debugging inside Neovim
* 🌿 Git integration
* 📄 Professional LaTeX workflow
* 🎯 Focused writing with Zen Mode
* 🛠️ Easy to maintain and extend

---

# 🖥️ Environment

| Component      | Version / Tool          |
| -------------- | ----------------------- |
| Editor         | Neovim 0.12+            |
| Configuration  | Lua                     |
| Plugin Manager | lazy.nvim               |
| OS             | Linux / Debian          |
| Terminal       | Any True Color terminal |
| Font           | Nerd Font recommended   |
| Git            | Required                |
| ripgrep        | Recommended             |
| fd             | Recommended             |

---

# 🚀 Features

## 🎨 UI & Appearance

The interface is built around a clean, minimal, and modern workflow.

* 🌸 Catppuccin
* 🏠 Alpha-nvim dashboard
* 📊 Lualine statusline
* 📑 Bufferline
* 🔔 Noice
* ⏳ Fidget LSP progress
* 🎨 Colorizer
* 📐 Indent guides with hlchunk

---

## 🔎 Navigation & Search

Fast project navigation is one of the main priorities of this configuration.

### Telescope

Powerful fuzzy finding for:

* Files
* Buffers
* Live Grep
* Commands
* Help
* Git files
* Diagnostics

with native FZF acceleration.

### Harpoon

Quickly jump between frequently used files without repeatedly searching for them.

### Nvim-tree

A traditional file-system explorer integrated directly into Neovim.

---

# 🧠 Language Intelligence

The configuration provides a complete LSP workflow.

### Language Servers

Currently configured for:

* 🐍 Python — BasedPyright
* ⚙️ C/C++ — clangd
* 🌙 Lua — lua-language-server
* 🦀 Rust — rust-analyzer
* 📄 LaTeX — texlab
* 📝 Markdown — marksman

Managed through:

* Mason
* mason-lspconfig
* Neovim LSP

---

# 🌳 Tree-sitter

Tree-sitter provides accurate syntax understanding and highlighting.

Additional Tree-sitter textobjects are included for structural code navigation and editing.

Supported languages include:

```text
Python
C
C++
Rust
Lua
JavaScript
TypeScript
HTML
CSS
JSON
Markdown
LaTeX
Bash
YAML
and more...
```

---

# ✍️ Completion & Snippets

The completion system is powered by:

* nvim-cmp
* cmp-nvim-lsp
* cmp-buffer
* cmp-path
* cmp-cmdline

Snippets are provided by:

* LuaSnip
* friendly-snippets

This provides:

```text
LSP Completion
       +
Buffer Completion
       +
Path Completion
       +
Command Completion
       +
Snippets
```

---

# 🧹 Formatting & Linting

Code quality tools are integrated directly into the editor.

### Formatting

Powered by:

```text
conform.nvim
```

### Linting

Powered by:

```text
nvim-lint
```

The goal is to keep formatting and static analysis inside the development workflow rather than relying on external editors.

---

# 🐛 Debugging & Testing

Neovim also acts as a development environment for debugging and testing.

### Debugging

Powered by:

* nvim-dap
* nvim-dap-ui
* mason-nvim-dap

### Testing

Powered by:

* Neotest

The intended workflow is:

```text
Write Code
    ↓
LSP
    ↓
Completion
    ↓
Formatter
    ↓
Linter
    ↓
Tests
    ↓
Debugger
```

---

# 🌿 Git Integration

Git is deeply integrated into the editor.

### Fugitive

Provides a complete Git interface inside Neovim.

### Gitsigns

Displays Git changes directly in the sign column.

For example:

```text
│ + Added
│ ~ Modified
│ - Deleted
```

This makes reviewing changes possible without leaving the editor.

---

# 📝 Editing Experience

Several plugins improve the default Vim editing experience.

### Comment.nvim

Fast commenting and uncommenting.

### mini.surround

Add, delete, or replace surrounding characters such as:

```text
()
[]
{}
""
''
```

### nvim-autopairs

Automatically handles matching:

```text
()
[]
{}
""
''
```

### UndoTree

Visualize and navigate through the history of changes.

### Which-Key

Discover available keybindings without memorizing everything.

---

# 🧘 Focus Mode

### Zen Mode

For writing, studying, or working on complex code without unnecessary UI distractions.

The idea is simple:

```text
Less UI
  ↓
Less Distraction
  ↓
More Focus
```

---

# 📚 LaTeX Workflow

One of the main purposes of this configuration is academic writing.

VimTeX provides a complete LaTeX workflow inside Neovim.

The intended setup is:

```text
Neovim
   │
   ▼
VimTeX
   │
   ▼
latexmk
   │
   ▼
XeLaTeX
   │
   ├── xepersian
   │
   └── Mathematics
   │
   ▼
PDF
```

This makes the configuration suitable for:

* 📚 Academic notes
* 🧮 Mathematical notes
* 🤖 Machine Learning notes
* 🧬 Bioinformatics notes
* 📄 Research papers
* 🎓 University assignments
* 🇮🇷 Persian documents

---

# 📂 Configuration Structure

The configuration follows a modular structure:

```text
~/.config/nvim/
│
├── init.lua
├── lazy-lock.json
├── .gitignore
│
└── lua/
    │
    ├── config/
    │   ├── options.lua
    │   ├── keymaps.lua
    │   ├── autocmds.lua
    │   └── lazy.lua
    │
    └── plugins/
        ├── alpha.lua
        ├── bufferline.lua
        ├── cmp.lua
        ├── conform.lua
        ├── dap.lua
        ├── fidget.lua
        ├── gitsigns.lua
        ├── harpoon.lua
        ├── lsp.lua
        ├── mason.lua
        ├── noice.lua
        ├── nvim-tree.lua
        ├── telescope.lua
        ├── treesitter.lua
        ├── trouble.lua
        ├── vimtex.lua
        └── ...
```

The configuration intentionally separates:

```text
Core Configuration
        +
Plugin Specifications
        +
Keymaps
        +
Options
        +
Autocommands
```

This makes it easier to debug, modify, and extend.

---

# 📦 Installation

> ⚠️ This is a personal configuration and is continuously evolving.
> Make sure you understand the configuration before replacing your existing Neovim setup.

## Requirements

Install the basic dependencies.

### Debian / Ubuntu

```bash
sudo apt update

sudo apt install \
    git \
    curl \
    ripgrep \
    fd-find \
    xclip \
    zathura \
    zathura-pdf-poppler
```

Make sure Neovim is installed:

```bash
nvim --version
```

Recommended:

```text
Neovim >= 0.12
```

---

## Clone the Configuration

Backup your existing configuration first:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

Then clone:

```bash
git clone https://github.com/NotJustAHM/nvim-config.git ~/.config/nvim
```

Start Neovim:

```bash
nvim
```

`lazy.nvim` will automatically install the configured plugins.

---

# 🔑 Essential Keybindings

The configuration uses:

```text
Leader = Space
```

Some important mappings:

| Key         | Action               |
| ----------- | -------------------- |
| `<Space>ff` | Find Files           |
| `<Space>fg` | Live Grep            |
| `<Space>fb` | Buffers              |
| `<Space>e`  | File Explorer        |
| `<Space>qq` | Quit Neovim          |
| `<Ctrl-h>`  | Move to left window  |
| `<Ctrl-j>`  | Move to lower window |
| `<Ctrl-k>`  | Move to upper window |
| `<Ctrl-l>`  | Move to right window |
| `<Ctrl-s>`  | Save                 |
| `<Alt-j>`   | Move line down       |
| `<Alt-k>`   | Move line up         |

> Keybindings may change as the configuration evolves.
> Use `which-key.nvim` to discover the current mappings.

---

# 🧰 Useful Commands

### Lazy

```vim
:Lazy
```

Update plugins:

```vim
:Lazy update
```

Synchronize:

```vim
:Lazy sync
```

---

### Mason

```vim
:Mason
```

---

### LSP

```vim
:LspInfo
```

---

### Health Check

```vim
:checkhealth
```

---

### Treesitter

```vim
:TSUpdate
```

---

### VimTeX

```vim
:VimtexInfo
```

Compile:

```text
<leader>ll
```

View PDF:

```text
<leader>lv
```

---

# 🔧 Customization

The configuration is intentionally modular.

To add a plugin:

```text
lua/plugins/my-plugin.lua
```

Example:

```lua
return {
    {
        "author/plugin-name",
        config = function()
            require("plugin-name").setup()
        end,
    },
}
```

Then:

```vim
:Lazy sync
```

No need to modify a giant `init.lua`.

---

# 🧭 Philosophy

This configuration is not intended to turn Neovim into an IDE clone.

Instead, it tries to preserve what makes Vim powerful:

```text
Keyboard-first
     +
Composable
     +
Minimal
     +
Fast
     +
Extensible
```

The goal is to build an environment where the editor gets out of the way and the workflow becomes the focus.

---

# 🗺️ Roadmap

This configuration is still evolving.

Planned improvements include:

* [ ] Improve LSP configuration
* [ ] Expand debugging support
* [ ] Expand Neotest integrations
* [ ] Improve Python/Data Science workflow
* [ ] Add better project management
* [ ] Improve LaTeX workflow
* [ ] Add more language-specific configurations
* [ ] Improve startup performance
* [ ] Add screenshots and workflow examples
* [ ] Document all keybindings
* [ ] Add reproducible installation scripts

---

# 📸 Screenshots

Screenshots will be added as the configuration stabilizes.

Planned screenshots:

* Dashboard
* Python development
* LSP + Completion
* Telescope
* Git workflow
* LaTeX / VimTeX
* Zen Mode

---

# 📜 License

This configuration is primarily intended for personal use and learning.

Feel free to use, modify, fork, and adapt it for your own workflow.

---

<p align="center">

**Built with ❤️, Lua, Neovim, and a lot of keyboard shortcuts.**

</p>

<p align="center">

⭐ If this configuration is useful to you, consider starring the repository.

</p>

