return {
	"vyfor/cord.nvim",
	build = "./build || .\\build",
	event = "VeryLazy",
	config = function ()
        require("cord").setup()
        vim.api.nvim_set_keymap(
            "n",
            "<leader>l",
            ":CordTogglePresence<CR>",
            { noremap = true, silent = true }
        )
	end
}
