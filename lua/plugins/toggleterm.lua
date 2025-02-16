return {
  "akinsho/toggleterm.nvim",
  opts = {
    open_mapping = [[<C-\>]], -- Mapeia a tecla para abrir o terminal
    direction = "float", -- Define como terminal flutuante
    float_opts = {
      border = "curved", -- Estilo da borda ('single', 'double', 'curved', etc.)
      winblend = 10, -- Define a transparência do terminal
    },
  },
}
