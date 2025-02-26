return {

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "rust" },
        },
    },

    "mfussenegger/nvim-dap",

    dependencies = {
        "simrat39/rust-tools.nvim",
    },

    opts = function()
        local rt = require("rust-tools")
        rt.setup({
            server = {
                settings = {
                    ["rust-analyzer"] = {
                        cargo = { allFeatures = true },
                        checkOnSave = { command = "clippy" },
                    },
                },
            },
        })
    end,
}
