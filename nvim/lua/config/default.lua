local shell = vim.fn.executable("bash") == 1 and "bash" or vim.o.shell
local o = vim.opt

-- Global
vim.g.mapleader = " "
vim.g.have_nerd_font = false
vim.g.clipboard = "osc52"

-- Options
o.number = true
o.relativenumber = true
o.wrap = false
o.tabstop = 4
o.swapfile = false
o.signcolumn = "yes"
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.inccommand = "split"
o.hlsearch = false
o.incsearch = true
o.scrolloff = 8
o.sidescrolloff = 8
o.termguicolors = true
o.guicursor = "n-v-c-i-ci-ve-r-cr-o:block"
o.conceallevel = 1
o.winborder = "rounded"
o.updatetime = 300
o.laststatus = 3

-- Remove '~' on empty lines
o.fillchars = { eob = " " }

o.list = false
o.listchars = {
	tab = "›·", -- replace the arrow: pick one you like (›, ▸, », >, etc.)
	trail = "·",
	extends = "…",
	precedes = "…",
	-- remove or change nbsp visualization:
	-- nbsp = "␣",   -- optional: what you want nbsp to look like; omit to hide
}
-- Filetype-specific overrides (autocmds)
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.bo.shiftwidth = 4
		vim.bo.softtabstop = 4
	end,
})

-- Shell options
o.shell = shell
o.shellcmdflag = "-c"
o.shellquote = ""
o.shellredir = ">%s 2>&1"
o.shellpipe = "2>&1 | tee"
o.shellxquote = ""

-- Other
o.autoindent = true
o.smartindent = true
o.swapfile = false
vim.wo.cursorline = true
o.numberwidth = 4
