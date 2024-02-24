vim.g.mapleader = "\\" -- Make sure to set `mapleader` before lazy so your mappings are correct

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'nvim-lua/plenary.nvim', -- Dependency for telescope
  'nvim-treesitter/nvim-treesitter', -- Dependency for telescope
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  'maxmx03/solarized.nvim',
  'nvim-tree/nvim-web-devicons', -- Dependency for nvim-tree and lualine
  'nvim-lualine/lualine.nvim',
  'nvim-tree/nvim-tree.lua',
}
local opts = {
}

require("lazy").setup(plugins, opts)

vim.keymap.set('n', '<leader>ll', ":Lazy<CR>", {})