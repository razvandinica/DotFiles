--
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "NvimTree",
--   command = "3j"
-- })
--
-- vim.api.nvim_create_autocmd("ModeChanged", {
--   pattern = "*:i",
--   callback = function()
--     vim.cmd("highlight CursorLine guibg='#274C25'")
--     --vim.cmd("highlight ColorColumn guibg='#073642'")
--   end,
-- })
-- vim.api.nvim_create_autocmd("ModeChanged", {
--   pattern = "*:n",
--   callback = function()
--     vim.cmd("highlight CursorLine guibg='#0b4764'")
--     -- vim.cmd("highlight ColorColumn guibg='#0b4764'")
--   end,
-- })
-- vim.api.nvim_create_autocmd("ModeChanged", {
--   pattern = "*:v",
--   callback = function()
--     print('vvvvvvvvvvvvvvvv')
--     vim.cmd("highlight VisualNOS guibg='#3F2E4C'")
--     -- vim.cmd("highlight ColorColumn guibg='#0b4764'")
--   end,
-- })
--
