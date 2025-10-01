return {
	"blaze-d83/snipbrowzurr.nvim",
	branch = "stable",
	config = function()
		require("snipbrowzurr").setup({
			load_vscode = true,
			load_lua = true,
			load_snipmate = true,
			keymap = "<leader>sp",
		})
	end,
}
