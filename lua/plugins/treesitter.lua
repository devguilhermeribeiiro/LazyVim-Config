return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = { "php", "html", "css" },
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            highlight = { enable = true },
        })

        vim.filetype.add({
            pattern = { [".*%.php"] = { "html", "css" } },
        })
    end,
}
