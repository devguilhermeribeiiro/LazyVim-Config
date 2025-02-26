return {
    -- Adiciona o tema TokyoNight
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "night",
            transparent = false,
        },
    },

    {
        "tiagovla/tokyodark.nvim",
        lazy = true,
        opts = {
            -- custom options here
        },
    },

    -- Configura o LazyVim para carregar o tema
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyodark", -- Aplica o tema TokyoNight
        },
    },
}
