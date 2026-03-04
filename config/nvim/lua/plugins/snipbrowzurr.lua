return {
	"blaze-d83/snipbrowzurr.nvim",
	dependencies = {
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		build = "make install_jsregexp",
	},
	config = function()
		require("snipbrowzurr").setup({
          keymap = "<leader>sp",
        })
	end,
}
