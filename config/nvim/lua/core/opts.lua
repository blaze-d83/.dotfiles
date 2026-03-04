local g = vim.g
local o = vim.opt

g.mapleader = " "
g.have_nerd_font = true
g.clipboard = "osc52"

o.number = true
o.relativenumber = true
o.wrap = false
o.tabstop = 4
o.softtabstop = 2
o.shiftwidth = 2
o.swapfile = false
o.signcolumn = "yes"
o.expandtab = true
o.inccommand = "split"
o.hlsearch = false
o.incsearch = true
o.scrolloff = 5
o.sidescrolloff = 5
o.termguicolors = true
o.guicursor = "n-v-c-i-ci-ve-r-cr-o:block"
o.conceallevel = 1
o.winborder = "rounded"
o.updatetime = 300
o.laststatus = 3
o.fillchars = { eob = " " }

local shell = vim.fn.executable("bash") == 1 and "bash" or vim.o.shell
o.shell = shell
o.shellcmdflag = "-c"
o.shellquote = ""
o.shellredir = ">%s 2>&1"
o.shellpipe = "2>&1 | tee"
o.shellxquote = ""

o.autoindent = true
o.smartindent = true
o.swapfile = false
vim.wo.cursorline = false
o.numberwidth = 4

-- o.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
