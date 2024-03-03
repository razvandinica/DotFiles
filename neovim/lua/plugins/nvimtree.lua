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
    group_empty = false,
    indent_markers = {
      enable = false,
    },
    icons = {
      show = {
        folder_arrow = false,
      }
    }
  },
  filters = {
    dotfiles = true
  },
})

--NvimTreeWinSeparator = { fg = c.fg_rootfolder }
--NvimTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },

vim.keymap.set('n', '<F9>', api.tree.toggle, {})
