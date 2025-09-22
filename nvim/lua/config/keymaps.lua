-- Save and source
vim.keymap.set("n", "<leader>ws", ":write<CR>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>wo", ":update<CR> :source<CR>")

-- Quit shortcut
vim.keymap.set("n", "<leader>Q", ":q!<CR>")

-- Highlight text on yank
vim.api.nvim_create_autocmd("textyankpost", {
	desc = "highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highligh-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Navigation
vim.keymap.set("n", "<C-n>", "<C-d>zz")
vim.keymap.set("n", "<C-p>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to right window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to top window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to down window" })

-- Copy / Cut to Clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank current line to clipboard" })

-- Replace
vim.keymap.set("n", "<leader>R", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Move text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move UP" })

-- Toggle terminal
local term_buf, term_win

local function toggle_term()
	if term_win and vim.api.nvim_win_is_valid(term_win) then
		vim.api.nvim_win_close(term_win, true)
		term_win = nil
	else
		if term_buf and vim.api.nvim_buf_is_valid(term_buf) then
			vim.cmd.vnew()
			vim.api.nvim_set_current_buf(term_buf)
		else
			vim.cmd.vnew()
			vim.cmd.term()
			term_buf = vim.api.nvim_get_current_buf()
		end
		vim.cmd.wincmd("J")
		vim.api.nvim_win_set_height(0, 20)
		term_win = vim.api.nvim_get_current_win()
	end
end

-- Works in Normal *and* Terminal mode
vim.keymap.set({ "n" }, "<leader>st", toggle_term, { noremap = true })
-- Map Esc to exit terminal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })

-- Other utilities
-- Helper to clear LSP Log file
local function clear_lsp_log()
	local log_file = vim.fn.expand("~/.local/state/nvim/lsp.log")
	if vim.uv.fs_stat(log_file) then
		local ok, err = os.remove(log_file)
		if ok then
			vim.api.nvim_echo({ { "LSP log file removed successfully!", "Normal" } }, false, {})
		else
			vim.api.nvim_echo(
				{ { "Failed to remove LSP log file: " .. (err or "unknown error"), "ErrorMsg" } },
				false,
				{}
			)
		end
	else
		vim.api.nvim_echo({ { "LSP log file does not exist.", "ErrorMsg" } }, false, {})
	end
end

vim.keymap.set("n", "<leader>Cl", clear_lsp_log, { noremap = true, silent = true, desc = "Clear LSP Logs" })
