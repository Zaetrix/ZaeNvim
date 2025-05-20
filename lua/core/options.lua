vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.cursorline = true
vim.o.termguicolors = true
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')
vim.g.mapleader = ' '

local opt = vim.opt

opt.expandtab = true      -- Use spaces instead of tabs
opt.shiftwidth = 2        -- Indent by 2 spaces
opt.tabstop = 2           -- Show tabs as 2 spaces
opt.softtabstop = 2       -- <Tab> inserts 2 spaces
opt.smartindent = true    -- Smart indenting on new lines
opt.clipboard = "unnamedplus"
