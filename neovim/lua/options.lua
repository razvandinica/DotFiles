-- Just in case
vim.opt.encoding="utf-8"

vim.opt.termguicolors = true

-- A Better View of Messages
vim.opt.cmdheight=2

-- Folding and Indentation
vim.opt.foldmethod='indent'
vim.opt.smartindent=true
vim.opt.wrap=false
vim.opt.cursorline=true

-- Show Numbers However You Want
vim.opt.number=true
vim.opt.relativenumber=false

-- Transform Tabs into Spaces
vim.opt.expandtab=true

-- Better Status Line
vim.opt.laststatus=3

-- Easier Buffers Management
vim.keymap.set('n', 'bn', ':bn<CR>', {})
vim.keymap.set('n', 'bp', ':bp<CR>', {})
vim.keymap.set('n', 'bk', ':bd<CR>', {})
vim.keymap.set('n', 'bw', ':bw<CR>', {})
vim.keymap.set('n', 'bl', ':bl<CR>', {})

vim.opt.signcolumn="yes:2"

-- Clear Search Highlighting
vim.keymap.set('n', '<Esc>', ":noh<CR>")

-- Set Listchars Chars
vim.opt.listchars["tab"] = "→"
vim.opt.listchars["precedes"] = "«"
vim.opt.listchars["space"] = "·"
vim.opt.listchars["trail"] = "•" -- »
vim.opt.listchars["eol"] = "¶"

-- Show/Hide Listchars
vim.keymap.set('n', '<Leader>l', ":set list!<cr>")
