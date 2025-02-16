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

  -- Configura o LazyVim para carregar o tema
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight", -- Aplica o tema TokyoNight
    },
  },
}
