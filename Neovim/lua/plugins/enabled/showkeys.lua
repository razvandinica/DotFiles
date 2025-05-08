return {
  -- https://github.com/nvzone/showkeys
  "nvzone/showkeys",
  cmd = "ShowkeysToggle",
  opts = {
    timeout = 3,
    maxkeys = 10,
    position = "top-right",
    show_count = true,
  },
  config = function (_, opts)
    require'showkeys'.setup(opts)
    vim.keymap.set('n', '<Leader>sk', "<Cmd>ShowkeysToggle<CR>", { desc = "Toggle `show pressed keys` onto upper right corner, plugin." })
  end,
}
