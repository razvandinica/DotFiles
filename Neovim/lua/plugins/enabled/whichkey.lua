return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<Leader>?",
      function()
        require("which-key").show({
          global = false
        })
      end,
      desc = "Buffer local keymaps (which-key)",
    },
  },
  init = function()
    vim.opt.timeout = true
    vim.opt.timeoutlen = 3
  end,
}
