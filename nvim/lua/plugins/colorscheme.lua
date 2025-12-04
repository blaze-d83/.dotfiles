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

	["vesper"] = {
		"datsfilipe/vesper.nvim",
		config = function()
			require("vesper").setup({
				transparency = true,
				italics = {
					keywords = false,
					functions = false,
					comments = true,
					strings = false,
					variables = false,
				},
			})
			vim.cmd.colorscheme("vesper")
		end,
	},

	["adwaita"] = {
		-- Lua with Lazy.nvim:
		"Mofiqul/adwaita.nvim",
		lazy = false,
		priority = 1000,

		-- configure and set on startup
		config = function()
			vim.g.adwaita_darker = true -- for darker version
			vim.g.adwaita_disable_cursorline = true -- to disable cursorline
			vim.g.adwaita_transparent = true -- makes the background transparent
			vim.cmd("colorscheme adwaita")
		end,
	},

  ["kanagawa"] = {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      vim.cmd.colorscheme("kanagawa-wave")
    end
  },

	["paper"] = {
		"thesimonho/kanagawa-paper.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		init = function()
			vim.cmd.colorscheme("kanagawa-paper-ink")
		end,
	},
}

local selected_theme = "kanagawa"

if selected_theme == "" or selected_theme == "default" then
	vim.cmd.colorscheme("default")
	return {}
else
	return themes[selected_theme]
end
