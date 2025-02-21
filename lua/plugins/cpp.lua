return {
    -- Configuração do LSP para C++ (clangd)
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                clangd = {
                    cmd = { "clangd", "--background-index" },
                    filetypes = { "c", "cpp", "objc", "objcpp" },
                    root_dir = require("lspconfig.util").root_pattern(
                        "compile_commands.json",
                        "compile_flags.txt",
                        ".git"
                    ),
                    settings = {
                        clangd = {
                            fallbackFlags = { "-std=c++20" }, -- Padrão C++20
                        },
                    },
                },
            },
        },
    },

    -- Configuração do Treesitter para C++
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "c", "cpp" }, -- Garante que os parsers de C e C++ estão instalados
        },
    },

    -- Configuração do DAP (Depuração) para C++ (opcional)
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
        },
        config = function()
            local dap = require("dap")
            dap.adapters.cppdbg = {
                id = "cppdbg",
                type = "executable",
                command = "OpenDebugAD7", -- Caminho para o OpenDebugAD7 (parte do C/C++ Extension do VSCode)
            }
            dap.configurations.cpp = {
                {
                    name = "Launch",
                    type = "cppdbg",
                    request = "launch",
                    program = function()
                        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                    end,
                    cwd = "${workspaceFolder}",
                    stopOnEntry = false,
                    args = {},
                },
            }
        end,
    },
}
