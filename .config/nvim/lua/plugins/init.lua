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
vim.g.mapleader = "" -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "" -- Same for `maplocalleader`

local plugins = {
  require('plugins.conform'),
  require('plugins.volt'),
  require('plugins.minty'),
  require('plugins.hlchunk'),
  require('plugins.diagnostic'),

  require('plugins.blankline'),
  require('plugins.lsp'),
  require('plugins.cmp'),
  require('plugins.treesitter'),
  require('plugins.lualine'),
  require('plugins.autopairs'),
  require('plugins.comment'),
  require('plugins.dressing'),
  require('plugins.mason'),
  require('plugins.telescope'),
  require('plugins.tree'),
  require('plugins.colorizer'),
  require('plugins.whichkey'),
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
}

require("lazy").setup(plugins)
