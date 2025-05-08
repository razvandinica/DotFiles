-- Just in case
vim.opt.encoding = "utf-8"

-- A better view of messages
vim.opt.cmdheight = 2

-- Better status line
vim.opt.laststatus = 5

-- Transform tabs into spaces
vim.opt.expandtab = true

-- Amount to indent with
vim.opt.shiftwidth = 2

-- Spaces shown per TAB
vim.opt.tabstop = 2

-- Spaces applied when pressing TAB
vim.opt.softtabstop = 2

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.breakindent = true

-- Keep indentation from previous line
vim.opt.autoindent = true

-- Show/Hide Listchars
vim.opt.listchars:append{
  -- tab = "» ",
  tab = "▏ ",
  precedes = "<",
  extends = ">",
  eol = "¶"
}
vim.opt.list = true

-- Show numbers however you want
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes:2'

-- Show cursor line and/or column
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'screenline'
-- vim.opt.cursorcolumn = true

-- Store undos between sessions
vim.opt.undofile = true

-- Enable mouse mode usefull for resizing splits
-- vim.opt.mouse = "a"

-- Turn show mode off, because it is laready showed by lualine
vim.opt.showmode = false

-- Case insensitive searching, UNLESS a capital letter in search text
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Configure how splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Always keep lines above and below the cursor
vim.opt.scrolloff = 15

-- Preview substitutions live
vim.opt.inccommand = "split"

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldmethod = "indent"
vim.opt.foldminlines = 2

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "NvimTree",
  command = "3j"
})
