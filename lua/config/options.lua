-- Configuração de indentação no Neovim
vim.o.smartindent = true -- Indentação inteligente
vim.o.autoindent = true -- Mantém a indentação da linha anterior
vim.o.tabstop = 4 -- Largura do TAB (4 espaços)
vim.o.shiftwidth = 4 -- Largura do recuo ao usar '>>' ou '<<'
vim.o.softtabstop = 4 -- Quantos espaços um TAB ocupa
vim.o.expandtab = true -- Converte TABs em espaços
vim.cmd("filetype indent on") -- Ativa indentação automática com base no tipo de arquivo
