-- ========================================
-- General Options
-- ========================================

local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Cursor
opt.cursorline = true
opt.cursorcolumn = false

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- UI
opt.termguicolors = true
opt.signcolumn = "yes"
opt.showmode = false
opt.laststatus = 3
opt.cmdheight = 1

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Files
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undofile = true

-- Performance
opt.updatetime = 250
opt.timeoutlen = 300

-- Clipboard
opt.clipboard = "unnamedplus"

-- Completion
opt.completeopt = {
    "menu",
    "menuone",
    "noselect",
}

-- Folding
opt.foldmethod = "manual"
opt.foldlevel = 99

-- Mouse
opt.mouse = "a"

-- Encoding
opt.encoding = "utf-8"

-- Appearance
opt.pumheight = 10
opt.conceallevel = 0

-- Keep signcolumn stable
opt.signcolumn = "yes:1"

vim.o.sessionoptions =
"blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
