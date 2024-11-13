return {
  'maxmx03/solarized.nvim',
  --priority = 1000,
  config = function()
    require('solarized').setup({
      enables = {
        bufferline = true,
        editor = true,
        syntax = true,
        telescope = true,
        treesitter = true,
        indentblankline = true,
      },
      --transparent = true,
      palette = 'selenized', --selenized
      styles = {
        comments = {},
        functions = {},
        variables = {},
        numbers = {},
        constants = {},
        parameters = {},
        keywords = {},
        types = {},
      },
      highlights = {
      },
      colors = {
      },
      autocmd = true
    })
    vim.cmd.colorscheme 'solarized' --selenized
    vim.opt.background = 'dark'
  end,
}
