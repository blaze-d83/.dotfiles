return {
	"nvim-treesitter/nvim-treesitter",
	"nvim-lua/plenary.nvim",

	config = function()
		require("nvim-treesitter").setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "markdown" },
			},
			indent = { enable = true },
			auto_install = true,
		})

		require("nvim-treesitter").install({ "rust", "go", "javascript", "zig" })
	end,
}
