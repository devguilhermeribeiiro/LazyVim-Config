return {
    -- PHP LSP
    {
        "neoclide/coc.nvim", -- Usando o coc.nvim, que é altamente configurável e suporta vários LSPs, incluindo PHP
        opts = {
            -- Outras opções do coc podem ser configuradas aqui se necessário
        },
    },

    -- HTML LSP
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "html" },
        },
    },

    -- Configuração do servidor LSP PHP (Intelephense)
    {
        "hrsh7th/nvim-cmp", -- Autocompletar para nvim
        dependencies = {
            "neoclide/coc.nvim", -- Usando o coc.nvim para o LSP do PHP
        },
        opts = function()
            require("lspconfig").intelephense.setup({
                settings = {
                    intelephense = {
                        files = {
                            associations = { "*.php" },
                        },
                    },
                },
            })
        end,
    },

    -- LSP do HTML
    {
        "williamboman/mason.nvim", -- Gerenciador de LSPs
        opts = {
            ensure_installed = { "html-lsp" },
        },
    },

    -- Integrar LSP de HTML no PHP
    {
        "williamboman/mason-lspconfig.nvim", -- Conectar com o LSP do mason
        opts = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "html-lsp", "intelephense" }, -- Instalar tanto o LSP do PHP quanto o do HTML
            })
        end,
    },

    -- Configuração do LSP para HTML
    {
        "neovim/nvim-lspconfig", -- Configurações para os servidores LSP
        opts = function()
            require("lspconfig").html.setup({
                filetypes = { "php", "html" }, -- Configurar para funcionar em PHP e HTML
            })
        end,
    },
}
