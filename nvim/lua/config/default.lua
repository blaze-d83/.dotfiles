local shell = vim.fn.executable("bash") == 1 and "bash" or vim.o.shell

-- Global
vim.g.mapleader = " "
vim.g.have_nerd_font = false

-- Options
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.tabstop = 8
vim.o.swapfile = false
vim.o.signcolumn = "yes"
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.inccommand = "split"
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.scrolloff = 8
vim.o.termguicolors = true
vim.o.guicursor = "n-v-c-i-ci-ve-r-cr-o:block"
vim.o.conceallevel = 1
vim.opt.winborder = "rounded"

-- Shell options
vim.o.shell = shell
vim.o.shellcmdflag = "-c"
vim.o.shellquote = ""
vim.o.shellredir = ">%s 2>&1"
vim.o.shellpipe = "2>&1 | tee"
vim.o.shellxquote = ""

-- Other
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.swapfile = false
vim.wo.cursorline = true
vim.opt.numberwidth = 4
