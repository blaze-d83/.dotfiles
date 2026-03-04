return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls" },
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
	config = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({
			automatic_enable = false,
		})
	end,
}
