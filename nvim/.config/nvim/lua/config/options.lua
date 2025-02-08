-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.o

-- Set indent spaces to 4
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true
opt.softtabstop = 4

-- Change cursor to block
opt.guicursor = "n-v-c-i:block"

-- Enable wrap
opt.wrap = true

-- Disable swapfile
opt.swapfile = false
