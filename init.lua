local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require('ahmad.lazy')
require('lspconfig').ruff.setup{}
require('ahmad.remap')

-- General settings
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Colorscheme
vim.cmd 'colorscheme catppuccin'
