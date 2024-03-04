vim.keymap.set('n', 'tg', ':Gitsigns toggle_signs <CR>')
vim.keymap.set('n', 'tb', ':Gitsigns toggle_current_line_blame <CR>')

local gitsigns = require('gitsigns')
gitsigns.setup({
  signs = {
    add          = { text = '│' },
    change       = { text = '│' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
    virt_text_priority = 100,
  },
  current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
})
