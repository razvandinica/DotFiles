-- Just in case
vim.opt.encoding="utf-8"

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
