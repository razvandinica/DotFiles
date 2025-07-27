return {
  "kiddos/gemini.nvim",
  opts = {
    ui = {
      floating_window_width = 80,
      border = "rounded",
    },
    hints = {
      enabled = true,
      hints_delay = 3000,
      insert_result_key = '<S-Tab>',
    },
  },
  config = function(_, opts)
    require("gemini").setup(opts)
  end,
}
