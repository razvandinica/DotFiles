-- Easier buffers management
-- vim.keymap.set("n", "bn", "<Cmd>bnext<CR>",     { desc = 'Go to next Buffer.' })
-- vim.keymap.set("n", "bp", "<Cmd>bprevious<CR>", { desc = 'Go to previous buffer.' })
-- vim.keymap.set("n", "bk", "<Cmd>bdelete<CR>",   { desc = 'Delete current buffer.' })
-- vim.keymap.set("n", "bw", "<Cmd>bwipeout<CR>",  { desc = 'Wipe current buffer.' })
-- vim.keymap.set("n", "bl", "<Cmd>ls<CR>",        { desc = 'List all current buffers.' })
-- All this is replaced by fuzzy find buffers now.

-- Load Lazy
vim.keymap.set('n', '<Leader>ll', ":Lazy<Cr>", {})

-- Oper parent directory in Oil
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory in Oil." })

-- Toggle List Chars
vim.keymap.set("n", "<Leader>lc", "<CMD>set list!<CR>", { desc = "Toggle List Characters." })

-- Strip empty Spaces at the end of each line
vim.keymap.set('n', '<Leader>ss', ':%s/\\s\\+$//e<CR>', { desc = "Strip empty Spaces at the end of each line." })

-- Strips empty Lines from current file
vim.keymap.set('n', '<Leader>sl', ':%g/^$/d<CR>', { desc = "Strips empty Lines from current file."})

-- Clear search highlighting
vim.keymap.set('n', '<Esc>', ":noh<CR>", { desc = "Clear serach highlighting." })

-- Toggle showkeys plugin
vim.keymap.set('n', '<Leader>sk', "<Cmd>ShowkeysToggle<CR>", { desc = "Toggle `show pressed keys` onto upper right corner, plugin." })
