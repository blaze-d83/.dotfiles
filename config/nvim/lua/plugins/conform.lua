return {
	"stevearc/conform.nvim",

	config = function()
		require("conform").setup({
			notify_on_error = false,

			format_on_save = function(bufnr)
				local disable_filetypes = {
					c = true,
					cpp = true,
					lua = true,
				}

				if disable_filetypes[vim.bo[bufnr].filetype] then
					return
				end

				return {
					timeout_ms = 500,
					lsp_format = "fallback",
				}
			end,

			formatters_by_ft = {
				lua = { "stylua" },
				-- python = { "ruff" },
			},
		})

		vim.keymap.set("n", "<leader>fm", function()
			require("conform").format({
				async = true,
				lsp_format = "fallback",
			})
		end, { desc = "[F]ormat buffer" })
	end,
}
