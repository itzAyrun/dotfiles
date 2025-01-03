-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
        { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
        { out, "WarningMsg" },
        { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Neovim opts
vim.g.mapleader = " "
vim.o.background = "dark"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.mouse = "a"
vim.cmd([[set guicursor=n-v-c-i:block]])  -- Set the cursor to block for all modes
vim.opt.clipboard:append('unnamedplus')
vim.opt.swapfile = false

-- Toggle search highlighting
local function toggle_highlight()
    if vim.o.hlsearch then
        vim.o.hlsearch = false
        -- print("Search highlighting disabled")
    else
        vim.o.hlsearch = true
        -- print("Search highlighting enabled")
    end
end

-- Map the toggle highlight fn to a keybinding and make it global
vim.api.nvim_set_keymap("n", "<leader>h", ":lua toggle_highlight()<CR>", { noremap = true, silent = true })
_G.toggle_highlight = toggle_highlight

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},
})
