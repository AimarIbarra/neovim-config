local set = vim.opt
local cmd = vim.cmd

-- set leader to comma instead of backslash
vim.g.mapleader = ','

-- vi compatibility
set.compatible = false

-- numbers
set.nu = true
set.rnu = true

-- tabs
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smarttab = true

-- appareance
set.title = true
set.ruler = true
set.encoding = 'utf-8'
set.wrap = false
set.laststatus = 2 -- status bar
set.hidden = true -- hidden buffers
set.showmode = true
set.showcmd = true

-- searching
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.showmatch = true


-- colors
set.termguicolors = true
cmd [[
  colorscheme codedark
]]
-- status bar
require 'spaceline'
