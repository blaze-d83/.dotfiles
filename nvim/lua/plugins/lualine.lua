return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				-- theme = function()
				-- 	local ok, t = pcall(
				-- 		require,
				-- 		"lualine.themes."
				-- 			.. (vim.o.background == "light" and "kanagawa-paper-canvas" or "kanagawa-paper-ink")
				-- 	)
				-- 	if ok then
				-- 		theme = t
				-- 	else
				-- 		theme = require("some other fallback theme")
				-- 	end
				-- 	return theme
				-- end,
			},
		})
	end,
}
