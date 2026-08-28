-- ========================================
-- Keymaps
-- ========================================

local map = vim.keymap.set

local opts = {
    noremap = true,
    silent = true,
}

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ========================================
-- Better Navigation
-- ========================================

map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- ========================================
-- Window Navigation
-- ========================================

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- ========================================
-- Window Resize
-- ========================================

map("n", "<C-Up>", "<cmd>resize +2<CR>", opts)
map("n", "<C-Down>", "<cmd>resize -2<CR>", opts)
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", opts)
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", opts)

-- ========================================
-- Move Lines
-- ========================================

map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- ========================================
-- Better Indenting
-- ========================================

map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- ========================================
-- Clear Search Highlight
-- ========================================

map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

-- ========================================
-- Save / Quit
-- ========================================

map("n", "<leader>w", "<cmd>write<CR>", opts)
map("n", "<leader>q", "<cmd>quit<CR>", opts)
map("n", "<leader>Q", "<cmd>qa!<CR>", opts)

-- ========================================
-- Better Terminal
-- ========================================

map("t", "<Esc>", "<C-\\><C-n>", opts)



-- ========================================
-- Telescope
-- ========================================

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
map("n", "<leader>fc", "<cmd>Telescope commands<CR>", opts)
map("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", opts)
