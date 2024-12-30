return {
    "wintermute-cell/gitignore.nvim",
    keys = {
        { "<leader>gi", ":Gitignore<CR>", desc = "Generate .gitignore" },
    },
    config = function()
        require("gitignore")
    end,
}
