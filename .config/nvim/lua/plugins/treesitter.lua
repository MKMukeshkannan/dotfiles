return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "javascript", "typescript", "cpp", "c", "lua", "vim", "vimdoc", "query" },
			highlight = { enable = true },
			intend = { enable = true },
		})
	end,
}
