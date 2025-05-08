return {
  -- https://github.com/nvim-tree/nvim-tree.lua
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    local api = require("nvim-tree.api")
    vim.keymap.set('n', '<F9>', api.tree.toggle, {})
    vim.keymap.set('n', '<leader>tc', "<cmd>NvimTreeCollapse<CR>")
    vim.keymap.set('n', '<leader>tr', "<cmd>NvimTreeRefresh<CR>")


    local nvt = require("nvim-tree")
    nvt.setup({
      disable_netrw = true,
      hijack_netrw = true,
      auto_reload_on_write = true,
      sort = {
        sorter = 'case_sensitive'
      },
      view = {
        number = false,
        width = 50,
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
      filters = {
        dotfiles = false,
      },
      git = {
        ignore = false,
      }
    })
    -- vim.cmd("NvimTreeOpen")
    -- vim.keymap.set('n', '<leader>ig', ':lua nvt.setup({filters})<CR>', { noremap = true, silent = true })
  end,
}
