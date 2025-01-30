local base03  = '#002b36'
local base02  = '#073642'
local base01  = '#586e75'
local base00  = '#657b83'
local base0   = '#839496'
local base1   = '#93a1a1'
local base2   = '#eee8d5'
local base3   = '#fdf6e3'
local yellow  = '#b58900'
local orange  = '#cb4b16'
local red     = '#dc322f'
local magenta = '#d33682'
local violet  = '#6c71c4'
local blue    = '#268bd2'
local cyan    = '#2aa198'
local green   = '#859900'

local buffeline

return {
  'akinsho/bufferline.nvim',
  lazy = false,
  version="*",
  -- dependencies = 'ryanoasis/vim-devicons',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    highlights = {
      fill = {
        bg = base03,
      },
      background = {
        bg = base03,
      },
      numbers = {
        bg = base03,
      },
      numbers_visible = {
        fg = yellow,
      },
      numbers_selected = {
        fg = red,
      },

      separator = {
        bg = base03,
        fg = base03
      },
      separator_selected = {
        fg = base03,
      },
      separator_visible = {
        fg = base03,
      },

      close_button = {
          bg = base03,
      },
      close_button_visible = {
          fg = yellow,
      },
      close_button_selected = {
          fg = red,
      },

      buffer = {
        fg = red,
      },
      buffer_visible = {
        fg = yellow,
      },
      buffer_selected = {
        fg = red,
      },
    },
    options = {
      mode = 'buffers',
      themable = true,
      separator_style = {'',''},
      -- separator_style = {'','◢'},
      -- separator_style = {'◣','◢'},
      -- separator_style = 'thin', -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
      show_buffer_icons = true, --true | false, -- disable filetype icons for buffers
      show_buffer_close_icons = false, -- true | false,
      show_close_icon = false, --true | false,
      show_tab_indicators = true, --true | false,
      color_icons = true,
      numbers = 'ordinal',
      -- indicator = {
      --   style = 'none', -- | 'underline' | 'none',
      --   -- icon = '▎', -- this should be omitted if indicator style is not 'icon'
      -- },
      offsets = {
        {
          filetype = "NvimTree",
          text = "Neovim File Explorer ... \u{e7c5} ",
          -- text = function()
          --   return vim.fn.getcwd()
          -- end,
          text_align = "right", -- | "center" | "right"
          separator = true, -- "|",
          -- highlight = {
          -- },
        },
      },
      custom_areas = {
        left = function()
          local result = {}
          table.insert(result, {text = '                 '})
          return result
        end,
        right = function()
          local result = {}
          table.insert(result, {text = "Neovim Buffers Line ... \u{e7c5} "})
          return result
        end,
      },
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end
    },
  },
  config = function(_, opts)
    vim.opt.termguicolors = true
    require('bufferline').setup(opts)
  end,
}
