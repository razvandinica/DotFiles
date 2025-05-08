return {
  -- https://github.com/lewis6991/gitsigns.nvim
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
      delay = 1000,
      ignore_whitespace = false,
      virt_text_priority = 100,
      use_focus = true,
    },
    current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
  },
  config = function (_, opts)
    require'gitsigns'.setup(opts)
    vim.keymap.set("n", "gnh", ":Gitsigns next_hunk<CR>", { desc = "[G]it [N]ext [H]unk" })
  end
}
