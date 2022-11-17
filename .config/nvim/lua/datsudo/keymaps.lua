local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap('', '<Space>', '<Nop>', opts)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--      normal       'n'
--      insert       'i'
--      visual       'v'
--      visual block 'x'
--      term         't'
--      command      'c'

-- NORMAL --
-- Better panel navigation
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-l>', '<C-w>l', opts)
-- Navigate Buffers
keymap('n', '<S-h>', ':bprevious<CR>', opts)
keymap('n', '<S-l>', ':bnext<CR>', opts)
-- Remap j,k, arrow keys
keymap('n', 'j', 'gj', opts)
keymap('n', 'k', 'gk', opts)
keymap('n', '<Down>', 'gj', opts)
keymap('n', '<Up>', 'gk', opts)
-- Quick quit, save file
keymap('n', '<leader>q', ':q<CR>', opts)
keymap('n', '<leader>w', ':w<CR>', opts)
keymap('n', '<leader>x', ':wq<CR>', opts)
keymap('n', '<leader>z', ':q!<CR>', opts)
-- Remove highlight after search
keymap('n', '<CR>', ':noh<CR>', opts)

-- VISUAL --
-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)
keymap('v', 'p', '"_dP', opts)

-- VISUAL BLOCK --
keymap('x', 'J', ":move '>+1<CR>gv=gv", opts)
keymap('x', 'K', ":move '<-2<CR>gv=gv", opts)
keymap('x', '<A-j>', ":move '>+1<CR>gv=gv", opts)
keymap('x', '<A-k>', ":move '<-2<CR>gv=gv", opts)

-- TERMINAL --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- TELESCOPE --
keymap('n', '<leader>f', ":Telescope file_browser<CR>", opts)
keymap('n', '<leader>u', ":Telescope workspaces<CR>", opts)

-- NVIMTREE --
keymap('n', '<leader>n', ':NvimTreeToggle<CR>', opts)

-- BUFFER --
keymap('n', '<C-w>', ':Bdelete<CR>', opts)

-- Launch Alpha
keymap('n', '<F12>', ':Alpha<CR>', opts)

-- Markdown preview
keymap('n', '<F7>', ':MarkdownPreviewToggle<CR>', opts)

-- Split vertical
keymap('n', '<leader>vv', ':vertical split<CR>', opts)
-- Split horizontal
keymap('n', '<leader>hh', ':horizontal split<CR>', opts)

-- Run file
keymap('n', '<F5>', ':RunFile<CR>', opts)

