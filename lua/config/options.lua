vim.g.mapleader = " "

vim.opt.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.wrap = false --vers si es en valse o true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.clipboard = "unnamedplus"
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.opt.spelllang = { "es,en" }
vim.opt.wrap = true

vim.opt.guicursor = "i:hor20"

vim.opt.foldcolumn = "0"
vim.opt.signcolumn = "yes:1"
vim.opt.numberwidth = 1
vim.opt.statuscolumn = "%s%=%{v:relnum?v:relnum:v:lnum} "
