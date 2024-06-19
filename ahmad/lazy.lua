-- Initialize lazy
--[[ local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath) ]]--


-- Setup Plugins
require('lazy').setup({
  -- List of plugins
  {'catppuccin/nvim', as = 'catppuccin'},
--  {'neoclide/coc.nvim', branch = 'release'},
  {'preservim/nerdtree'},
  {'ryanoasis/vim-devicons'},
  {'nvim-lua/plenary.nvim'},
  {'nvim-telescope/telescope.nvim', tag = '0.1.5'},
  {'ThePrimeagen/vim-be-good'},
  {'tpope/vim-fugitive'},
  {'vim-airline/vim-airline'},
  {'vim-airline/vim-airline-themes'},
  {'tpope/vim-surround'}
})
