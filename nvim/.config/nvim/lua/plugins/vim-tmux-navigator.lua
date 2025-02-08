return {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    config = function()
        vim.g.tmux_navigator_no_mappings = 1

        -- Custom key mappings
        local opts = { noremap = true, silent = true }

        vim.keymap.set("n", "<C-Left>", ":TmuxNavigateLeft<CR>", opts)
        vim.keymap.set("n", "<C-Right>", ":TmuxNavigateRight<CR>", opts)
        vim.keymap.set("n", "<C-Up>", ":TmuxNavigateUp<CR>", opts)
        vim.keymap.set("n", "<C-Down>", ":TmuxNavigateDown<CR>", opts)
    end,
}
