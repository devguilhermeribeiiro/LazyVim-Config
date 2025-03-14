return {
    -- Adiciona o tema TokyoNight
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "night",
            transparent = true,
        },
    },

    {
        "tiagovla/tokyodark.nvim",
        lazy = true,
        opts = {
            transparent_background = true,
            -- custom options here
        },
    },

    {
        "zootedb0t/citruszest.nvim",
        lazy = false, -- Load the plugin immediately
        priority = 1000, -- High priority to ensure it loads early
        config = function()
            -- Configuration for citruszest.nvim
            require("citruszest").setup({
                option = {
                    transparent = true, -- Enable/Disable transparency
                    bold = false,
                    italic = true,
                },
                -- Override default highlight styles here
                style = {
                    -- Example: Change Constant foreground color and make it bold
                    Constant = { fg = "#FFFFFF", bold = true },
                },
            })
        end,
    },

    -- Configura o LazyVim para carregar o tema
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "citruszest",
        },
    },
}
