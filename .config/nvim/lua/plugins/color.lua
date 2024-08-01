return {
	{
		"sainnhe/sonokai",
		priority = 1000,
		config = function()
			vim.g.sonokai_theme = "andromeda"
			vim.g.sonokai_transparent_background = "1"
			vim.g.sonokai_cursor = "red"
			vim.cmd.colorscheme("sonokai")
		end,
	},
}
