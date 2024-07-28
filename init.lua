vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nu")
vim.g.mapleader = " "

vim.wo.fillchars='eob: '

-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup( "plugins" )
require("transparent")
-- Keymaps
vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>rnu', ':set relativenumber!<CR>', { noremap = true, silent = true })

