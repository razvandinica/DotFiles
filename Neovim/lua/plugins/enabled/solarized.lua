return {
  -- https://github.com/maxmx03/solarized.nvim
  'maxmx03/solarized.nvim',
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  lazy = false,
  priority = 1000,
  ---@type solarized.config
  opts = {
    transparent = {
      enabled = true,
      pmenu = true,
    },
    variant = 'summer',
    -- variant = 'summer',
    -- variant = 'autumn',
    -- variant = 'winter',
    plugins = {
      treesitter = true,
      bufferline = true,
      lspconfig = true,
      telescope = true,
      nvimtree = true,
      whichkey = true,
      lualine = true,
      mason = true,
      lazy = true,
    },
  },
  config = function (_, opts)
    vim.opt.termguicolors = true
    vim.opt.background = 'dark'
    require'solarized'.setup(opts)
    vim.cmd.colorscheme 'solarized'
    -- vim.cmd.colorscheme 'selenized'
  end,
}
