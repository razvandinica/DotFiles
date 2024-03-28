-- Just in case
vim.opt.encoding="utf-8"

vim.opt.termguicolors = true

-- A Better View of Messages
vim.opt.cmdheight=2

-- Better Indentation
vim.opt.smartindent=true

-- Better Cursor Line
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
vim.keymap.set('n', 'bn', ':bnext<CR>', {})
vim.keymap.set('n', 'bp', ':bprevious<CR>', {})
vim.keymap.set('n', 'bk', ':bdelete<CR>', {})
vim.keymap.set('n', 'bw', ':bwipeout<CR>', {})
-- vim.keymap.set('n', 'bl', ':bl<CR>', {})

-- Clear Search Highlighting
vim.keymap.set('n', '<Esc>', ":noh<CR>")

-- Set Listchars Chars
-- vim.opt.listchars["tab"] = "→"
-- vim.opt.listchars["precedes"] = "«"
-- vim.opt.listchars["space"] = "·"
-- vim.opt.listchars["trail"] = "•" -- »
-- vim.opt.listchars["eol"] = "¶"

-- Show/Hide Listchars
vim.keymap.set('n', '<Leader>lc', ":set list!<CR>")
vim.opt.listchars:append{tab = "» ", precedes = "<", extends = ">", eol = "¶"}
vim.opt.list = false

vim.opt.signcolumn = 'yes:2'

-- Strip Empty Spaces at the end of each line
vim.keymap.set('n', '<Leader>ss', ':%s/\\s\\+$//e<CR>')
-- Strips Empty Lines at the end of each line
vim.keymap.set('n', '<Leader>sl', ':%g/^$/d<CR>')
