require('config.plugins')
require('config.keybinds')

vim.opt.undofile = true

-- zakladne nastavenia
vim.cmd [[ colorscheme nightfox ]]

vim.cmd [[set number]]
vim.cmd [[set relativenumber]]

vim.cmd [[set tabstop=2]]
vim.cmd [[set shiftwidth=2]]
vim.cmd [[set expandtab]]

vim.cmd [[set autoindent]]
vim.cmd [[set mouse=a]]
vim.cmd [[set encoding=utf8]]
vim.cmd [[set autoread]]
vim.cmd [[set ts=4]]
vim.cmd [[set autoindent]]
vim.cmd [[set incsearch]]
vim.cmd [[set hlsearch]]
