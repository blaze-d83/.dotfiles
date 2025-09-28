-- Default configuration for themes
local themes = {

	-- Rose Pine theme
	["rose-pine"] = {
		"rose-pine/neovim",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				styles = {
					bold = true,
					italic = false,
					transparency = false,
				},
			})
			vim.cmd.colorscheme("rose-pine-main")
		end,
	},
}

local selected_theme = "rose-pine"

if selected_theme == "" or selected_theme == "default" then
	vim.cmd.colorscheme("habamax")
	return {}
else
	return themes[selected_theme]
end
