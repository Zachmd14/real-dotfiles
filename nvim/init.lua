-- set show line number
vim.wo.number = true

-- set keymaps for navigating
vim.api.nvim_set_keymap('n', 'j', 'h', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'j', { noremap = true })
vim.api.nvim_set_keymap('n', 'l', 'k', { noremap = true })
vim.api.nvim_set_keymap('n', 'm', 'l', { noremap = true })

vim.api.nvim_set_keymap('v', 'j', 'h', { noremap = true })
vim.api.nvim_set_keymap('v', 'k', 'j', { noremap = true })
vim.api.nvim_set_keymap('v', 'l', 'k', { noremap = true })
vim.api.nvim_set_keymap('v', 'm', 'l', { noremap = true })

local opts = { noremap = true, silent = true }
-- Press Shift + Ctrl + i to move to the window above
vim.api.nvim_set_keymap('n', '<S-C-l>', ':wincmd k<CR>', opts)
-- Press Shift + Ctrl + j to move to the window to the left
vim.api.nvim_set_keymap('n', '<S-C-j>', ':wincmd h<CR>', opts)
-- Press Shift + Ctrl + k to move to the window below
vim.api.nvim_set_keymap('n', '<S-C-k>', ':wincmd j<CR>', opts)
-- Press Shift + Ctrl + l to move to the window to the right
vim.api.nvim_set_keymap('n', '<S-C-m>', ':wincmd l<CR>', opts)
-- Prevent 's' from entering insert mode
vim.api.nvim_set_keymap('n', 's', '<NOP>', opts)
-- Create a new vertical split with 'sn' in normal mode
vim.api.nvim_set_keymap('n', 'sn', ':vsplit<CR>', opts)
-- Create a new horizontal split with 'sN' in normal mode
vim.api.nvim_set_keymap('n', 'sN', ':split<CR>', opts)

-- Press Ctrl + Suppr and Ctrl + Backspace for deleting entire word in insert mode
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-W>', opts)
vim.api.nvim_set_keymap('i', '<C-Del>', '<C-O>dw', opts)

vim.api.nvim_set_keymap('n', '<Space>b', ':Dashboard<CR>', opts)

-- set tab indent
vim.o.expandtab = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- Map `d` to delete without copying to any register
vim.api.nvim_set_keymap('n', 'd', '"_d', opts)
vim.api.nvim_set_keymap('n', 'dd', '"_dd', opts)
vim.api.nvim_set_keymap('v', 'd', '"_d', opts)

-- Map `c` to change without copying to any register
vim.api.nvim_set_keymap('n', 'c', '"_c', opts)
vim.api.nvim_set_keymap('n', 'cc', '"_cc', opts)
vim.api.nvim_set_keymap('v', 'c', '"_c', opts)

-- Map '<leader>t to the todo plugin'
vim.api.nvim_set_keymap('n', '<Space>t', ':Todo<CR>', opts)

-- set clipboard
vim.o.clipboard = 'unnamedplus'

-- set leader key
vim.api.nvim_set_var('mapleader', ' ')

-- enable vimtex default keymapping
vim.g.vimtex_mappings_enabled = 1

require("zach.lazy")
