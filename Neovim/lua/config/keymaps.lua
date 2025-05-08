-- Easier buffers management
vim.keymap.set("n", "<Leader>n", ":bnext<CR>",     { desc='[B]uffer  [N]ext.' })
vim.keymap.set("n", "<Leader>p", ":bprevious<CR>", { desc='[B]uffer  pre[V]ious.' })
vim.keymap.set("n", "<Leader>bd", ":bdelete<CR>",   { desc='[B]uffer  [D]elete.' })
vim.keymap.set("n", "<Leader>bk", ":bdelete!<CR>",   { desc='[B]uffer  [K]ill.' })
vim.keymap.set("n", "<Leader>bw", ":bwipeout<CR>",  { desc='[B]uffer  [W]ipe.' })
vim.keymap.set("n", "<Leader>bl", ":ls<CR>",        { desc='[B]uffers [L]ist.' })

-- Toggle List Chars
vim.keymap.set("n", "<Leader>lc", ":set list!<CR>", { desc = "[L]ist [C]hars [T]oggle." })

-- Strip empty Spaces at the end of each line
vim.keymap.set('n', '<Leader>ss', ':%s/\\s\\+$//e<CR>', { desc = "[S]trip empty [S]paces at the end of each line." })

-- Strips empty Lines from current file
vim.keymap.set('n', '<Leader>sl', ':%g/^$/d<CR>', { desc = "[S]trips empty [L]ines in current file."})

-- Clear search highlighting
vim.keymap.set('n', '<Esc>', ":noh<CR>", { desc = "Clear serach highlighting." })
