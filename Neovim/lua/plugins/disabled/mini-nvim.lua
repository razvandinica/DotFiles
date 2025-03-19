return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    local MF = require("mini.files")
    MF.setup()
    vim.keymap.set('n', 'F9', 'MF.open()<CR>')
    require("mini.tabline").setup()
    require("mini.statusline").setup()

  end,
}
