return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufRead", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "go", "html" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
