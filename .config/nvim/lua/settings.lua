vim.opt.cmdheight = 0  -- set height cmd 0
-- Set options
vim.opt.guifont = "JetBrains Mono Nerd Font:h12"  -- Change size as needed
vim.opt.signcolumn = 'no'
vim.opt.fillchars = { eob = ' ', vert = ' ' }

-- Set the background color
vim.cmd([[highlight Normal guibg=#141b1e]])  -- Change #282c34 to your desired hex color

-- vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.showmode = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50
