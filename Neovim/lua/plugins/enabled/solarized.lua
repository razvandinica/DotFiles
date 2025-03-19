-- https://github.com/maxmx03/solarized.nvim
return {
  'maxmx03/solarized.nvim',
  dependencies = {
    -- https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#quickstart
    "nvim-treesitter/nvim-treesitter",
  },
  lazy = false,
  priority = 1000,
  ---- @type solarized.config
  opts = {
    -- plugins = {
    --   nvimtree = false,
    --   bufferline = false,
    --   lualine = false,
    -- },
    transparent = {
      enabled = true,
    },
    variant = 'winter',
  },
  config = function (_, opts)
    vim.opt.termguicolors = true
    vim.opt.background = 'dark'
    require('solarized').setup(opts)
    vim.cmd.colorscheme 'solarized' --selenized
  end,
}
