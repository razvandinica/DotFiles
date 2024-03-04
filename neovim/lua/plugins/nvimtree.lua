vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local api = require("nvim-tree.api")
require('nvim-tree').setup({
  disable_netrw = true,
  hijack_netrw = true,
  auto_reload_on_write = true,
  sort = {
    sorter = 'case_sensitive'
  },
  view = {
    number = false,
    width = 40,
    signcolumn = 'yes'
  },
  renderer = {
    group_empty = false,
    add_trailing = true,
    full_name = false,
    indent_markers = {
      enable = false,
    },
    symlink_destination = true,
  },
  -- filters = {
  --   dotfiles = true
  -- },
})

vim.keymap.set('n', '<F9>', api.tree.toggle, {})
