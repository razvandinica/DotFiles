return {
  'maxmx03/solarized.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    plugins = {
      nvimtree = false,
      bufferline = false,
      lualine = false,
    },
    transparent = {
      enabled = true,
    },
    variant = 'winter',
  },
  config = function(_, opts)
    require('solarized').setup(opts)
    vim.cmd.colorscheme 'solarized' --selenized
    vim.opt.background = 'dark'
  end,
}
