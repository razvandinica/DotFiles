return {
  -- https://github.com/nvim-lualine/lualine.nvim
  'nvim-lualine/lualine.nvim',
  dependencies = {
    -- https://github.com/nvim-tree/nvim-web-devicons
    'nvim-tree/nvim-web-devicons'
  },
  init = function()
    local colors = {
      blue = '#80a0ff',
      cyan = '#79dac8',
    }
    local lualine = require('lualine')
    lualine.setup({
      options = {
        globalstatus = true,
        icons_enabled = true,
        theme = require('lualine.themes.solarized'),
        section_separators = {
          -- left = "\u{e0cd}";
          left = "◣";
          right = "◢";
          -- right = "\u{e0b2}",
        },
        component_separators = {
          left = "╲",
          right = "╱",
          -- left = "\u{e0b9}",
          -- right = "\u{e0bb}",
          --right = "\u{f0fdf}"
        },
        always_divide_middle = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000
        },
      },
      sections = {
        lualine_a = {
          {
            function()
              return '\u{e6ae}'
            end,
          },
          {
            'mode'
          },
        },
        lualine_b = {
          {
            'filename',
            file_status = true,
            path = 2, -- 0 just file name, 1 relative path, 2 absolute path
          },
        },
        lualine_c = {
          {
            "require'lsp-status'.status()"
          },
          {
            'branch',
          },
          {
            'diff',
            colored = true,
            added = {
              fg = colors.blue,
              bg = colors.cyan,
            },
            modified = 'DiffChange',
            removed = 'DiffDelete',
          },
          {
            'diagnostics',
            sources = {
              'nvim_diagnostic',
              'coc'
            },
            sections = {
              'error', 'warn', 'info', 'hint'
            },
          },
        },
        lualine_x = { 'searchcount', 'encoding', 'fileformat', 'filetype', 'filesize' },
        lualine_y = { 'progress' }, -- xx%
        lualine_z = { 'location' }, -- linenr:total
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename', "require'lsp-status'.status()" },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {
      },
      winbar = {
      },
      inactive_winbar = {
      },
      extensions = {
        --'nvim-tree',
        'symbols-outline',
      }
    })
  end
}
