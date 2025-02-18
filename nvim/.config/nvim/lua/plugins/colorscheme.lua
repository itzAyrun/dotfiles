-- return {
--     {
--         "LazyVim/LazyVim",
--         opts = {
--             colorscheme = function()
--                 require("catppuccin").load()
--             end,
--         },
--     },
--     {
--         "catppuccin/nvim",
--         name = "catppuccin",
--         priority = 1000,
--         opts = {
--             no_italic = true,
--             term_colors = true,
--             transparent_background = false,
--             styles = {
--                 comments = {},
--                 conditionals = {},
--                 loops = {},
--                 functions = {},
--                 keywords = {},
--                 strings = {},
--                 variables = {},
--                 numbers = {},
--                 booleans = {},
--                 properties = {},
--                 types = {},
--             },
--             color_overrides = {
--                 mocha = {
--                     base = "#000000",
--                     mantle = "#000000",
--                     crust = "#000000",
--                 },
--             },
--             integrations = {
--                 telescope = {
--                     enabled = true,
--                     style = "nvchad",
--                 },
--                 dropbar = {
--                     enabled = true,
--                     color_mode = true,
--                 },
--             },
--         },
--     },
-- }

-- return {
--     "cdmill/neomodern.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("neomodern").setup({
--             theme = "roseprime",
--         })
--         require("neomodern").load()
--     end,
-- }

-- return {
--     "rebelot/kanagawa.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("kanagawa").setup({
--             transparent = true,
--         })
--         vim.cmd("colorscheme kanagawa")
--     end,
-- }

-- return {
--     "EdenEast/nightfox.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         vim.cmd("colorscheme carbonfox")
--     end,
-- }

return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            term_colors = true,
            transparent_background = false,
            styles = {
                comments = {},
                conditionals = {},
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
            },
            color_overrides = {
                mocha = {
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                },
            },
            integrations = {
                telescope = {
                    enabled = true,
                    style = "nvchad",
                },
                dropbar = {
                    enabled = true,
                    color_mode = true,
                },
            },
        },
    },
}
