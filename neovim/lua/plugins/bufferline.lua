local bufferline = require("bufferline")
bufferline.setup({
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        -- text = "NvimTree File Explorer",
        -- text = function()
        --   return vim.fn.getcwd()
        -- end,
        text_align = "center", -- | "left" | "right"
        separator = false,
        -- highlight = "Directory",
      }
    },
    indicator = {
      -- icon = '▎', -- this should be omitted if indicator style is not 'icon'
      style = 'none', -- | 'underline' | 'none',
    },
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or ""
        return " " .. icon .. count
    end
  },
})
