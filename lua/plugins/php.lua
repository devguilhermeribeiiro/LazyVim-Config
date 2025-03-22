return {
    -- Instalar e configurar o LSP para PHP (Intelephense)
    {
        "neovim/nvim-lspconfig", -- Configuração dos LSPs no Neovim
        opts = function()
            require("lspconfig").intelephense.setup({
                settings = {
                    intelephense = {
                        files = {
                            associations = { "*.php" }, -- Associar o PHP aos arquivos .php
                        },
                    },
                },
            })
        end,
    },

    -- Instalar o plugin de autocompletar
    {
        "hrsh7th/nvim-cmp", -- Autocompletar
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", -- Integração do nvim-cmp com LSPs
        },
        opts = function()
            local cmp = require("cmp")
            cmp.setup({
                sources = {
                    { name = "nvim_lsp" }, -- Usar o LSP para autocompletar
                },
            })
        end,
    },

    -- Instalar o LSP para PHP (Intelephense)
    {
        "williamboman/mason.nvim", -- Gerenciador de LSPs
        opts = {
            ensure_installed = { "intelephense" }, -- Garantir que o Intelephense seja instalado
        },
    },
}
