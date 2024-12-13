return {
  'anuvyklack/pretty-fold.nvim',
  config = function()
    vim.opt.foldenable = true
    vim.opt.foldmethod = 'indent'
    -- vim.opt.foldlevel = 99
    -- vim.opt.foldlevelstart = 99
    vim.opt.fillchars:append('fold:-')
  end,
  init = function()
    local pf = require("pretty-fold")
    pf.setup({
      sections = {
        left = {
          'content',' ∠ ', 'number_of_folded_lines', ' - ', 'percentage', ''
        },
      },
      fill_char = " ",
    })
  end,
}
