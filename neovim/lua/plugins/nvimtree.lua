vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--vim.opt.termguicolors = true

local api = require("nvim-tree.api")
require('nvim-tree').setup({
  disable_netrw = true,
  hijack_netrw = true,
  sort = {
    sorter = 'case_sensitive'
  },
  view = {
    width = 40
  },
  renderer = {
    group_empty = false
  },
  filters = {
    dotfiles = true
  },
})

vim.keymap.set('n', '<F9>', api.tree.toggle, {})
