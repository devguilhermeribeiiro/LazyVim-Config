return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = { "php", "html", "css", "java" },
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            highlight = { enable = true },
        })
    end,
}
