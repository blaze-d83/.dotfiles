return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.align").setup()
		require("mini.pairs").setup()
		require("mini.surround").setup()
	end,
}
