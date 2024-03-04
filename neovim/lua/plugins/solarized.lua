require('solarized').setup({
  enables = {
    bufferline = true,
    editor = true,
    syntax = true,
    telescope = true,
    treesitter = true,
    indentblankline = true,
  },
  transparent = true,
  palette = 'solarized', --selenized
--  styles = {
--    comments = {},
--    functions = {},
--    variables = {},
--    numbers = {},
--    constants = {},
--    parameters = {},
--    keywords = {},
--    types = {},
--  },
--  highlights = {
--  },
--  colors = {
--  },
  autocmd = true
})
vim.o.background = 'dark'
vim.cmd.colorscheme 'solarized' --selenized
