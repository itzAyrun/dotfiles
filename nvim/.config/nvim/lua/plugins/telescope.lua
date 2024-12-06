return {
	'nvim-telescope/telescope.nvim', branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim', { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, "nvim-tree/nvim-web-devicons", },
	config = function()
		local telescope = require('telescope')
		local actions = require('telescope.actions')

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<Up>"] = actions.move_selection_previous,
						["<Down>"] = actions.move_selection_next,
						["<TAB>"] = actions.send_selected_to_qflist + actions.open_qflist,
					}
				}
			}
		})

		telescope.load_extension("fzf")

		-- Set Keymaps
		vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<CR>", { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<CR>", { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<CR>", { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<CR>", { desc = 'Telescope help tags' })
    end,
}
