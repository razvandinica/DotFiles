require('solarized').setup({
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
  enables = {
    editor = true,
    syntax = true,
    telescope = true,
    treesitter = true,
  },
--  highlights = {
--  },
--  colors = {
--  },
  theme = 'default', -- or neo
  autocmd = true
})
vim.o.background = 'dark'
vim.cmd.colorscheme 'solarized' --selenized
