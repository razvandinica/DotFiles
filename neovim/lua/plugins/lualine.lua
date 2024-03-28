local colors = {
  blue = '#80a0ff',
  cyan = '#79dac8',
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = require('lualine.themes.solarized'),
    always_divide_middle = true,
    global_status = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000
    },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      {
        'filename',
        file_status = true,
        path = 2, -- 0 just file name, 1 relative path, 2 absolute path
      },
    },
    lualine_c = {
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
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
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
  extentions = {
    'nvim-tree',
    'symbols-outline',
  }
}
