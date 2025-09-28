return {
	"A7Lavinraj/fyler.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	branch = "stable",
	opts = {},
	config = function()
		require("fyler").setup({
			-- Git integration
			git_status = {
				enabled = true,
				symbols = {
					Untracked = "?",
					Added = "+",
					Modified = "*",
					Deleted = "x",
					Renamed = ">",
					Copied = "~",
					Conflict = "!",
					Ignored = "#",
				},
			},
			indentscope = {
				enabled = true,
				group = "FylerIndentMarker",
				marker = "|",
			},
			win = {
				border = "shadow",
			},
		})
		vim.keymap.set("n", "<leader>-", "<cmd>Fyler kind=split_left<CR>")
	end,
}
