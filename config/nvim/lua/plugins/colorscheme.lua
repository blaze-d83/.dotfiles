local themes = {
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

    ["vscode"] = {
      "Mofiqul/vscode.nvim",
      config = function ()
        require("vscode").setup({})
        vim.cmd.colorscheme("vscode")
      end,
    },
}

local selected_theme = "vscode"
if selected_theme == "" or selected_theme == "default" then
	vim.cmd.colorscheme("default")
	return {}
else
	return themes[selected_theme]
end
