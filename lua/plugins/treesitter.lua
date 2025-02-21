return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = { "php", "html", "css" },
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            highlight = { enable = true },
        })

        -- Associa arquivos .blade.php ao parser HTML/PHP
        vim.filetype.add({
            pattern = { [".*%.blade%.php"] = { "html", "css" } },
        })
    end,
}
