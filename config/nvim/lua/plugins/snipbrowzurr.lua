return {
	"blaze-d83/snipbrowzurr.nvim",
	dependencies = { "L3MON4D3/LuaSnip", "ibhagwan/fzf-lua" },
	config = function()
		require("snipbrowzurr").setup()
	end,
}
