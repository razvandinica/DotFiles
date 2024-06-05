return {
  'akinsho/bufferline.nvim',
  version="*",
  init = function()
    local bufferline = require("bufferline")
    bufferline.setup({
      options = {
        offsets = {
          {
            filetype = "NvimTree",
            text = "Explorer \u{e7c5}",
            -- text = function()
            --   return vim.fn.getcwd()
            -- end,
            text_align = "center", -- | "left" | "right"
            separator = "",
            highlight = "Directory",
          }
        },
        indicator = {
          -- icon = '▎', -- this should be omitted if indicator style is not 'icon'
          style = 'none', -- | 'underline' | 'none',
        },
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end
      }
    })
  end,
}
