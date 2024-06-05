return {
  'nvim-treesitter/nvim-treesitter',
  init = function()
    local ts_update = require("nvim-treesitter.install").update({
      with_sync = true
    })
    ts_update()

    -- Import nvim-treesitter Plugin Safely
    local status, treesitter = pcall(require, "nvim-treesitter.configs")
    if not status then
      return
    end

    -- Configure Treesitter
    treesitter.setup({
      -- Enable Syntax Highlighting
      highlight = {
        enable = true,
      },
      -- Enable Indentation
      indent = {
        enable = false
      },
      -- Ensure These Language Parsers are Installed
      ensure_installed = {
        "lua",
        "json",
        "javascript",
        "typescript",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "bash",
        "vim",
        "php"
      },
      -- Auto Install Above Language Parsers
      auto_install = true,
    })
    
    -- vim.opt.foldmethod = "expr"
    -- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
  end
}
