return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require("mini.tabline").setup({
      show_icons = true,
      set_vim_settings = true,
      tabpage_section = 'right',
    })
    -- vim.cmd("highlight default link IncSearch MiniTablineCurrent")
    vim.api.nvim_set_hl(0, "MiniTablineCurrent", {
      --fg = "#E06C75",
      fg="#d33682",
      bg="#3f2e4c",
    })
  end,
}
