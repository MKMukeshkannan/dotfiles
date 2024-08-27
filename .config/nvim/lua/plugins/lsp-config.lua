return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver", "tailwindcss", "clangd", "rust_analyzer", "hls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",

		config = function()
			local lspconfig = require("lspconfig")
			require("cmp").setup({
				sources = {
					{ name = "nvim_lsp" },
				},
			})

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.hls.setup({
				capabilities = capabilities,
				filetypes = { "haskell", "lhaskell", "cabal" },
			})
			lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.tailwindcss.setup({ capabilities = capabilities })
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
				filetypes = { "rust" },
				settings = {
					["rust_analyzer"] = {
						cargo = {
							allFeatures = true,
						},
					},
				},
			})
			lspconfig.clangd.setup({ capabilities = capabilities })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>x", vim.diagnostic.open_float)

			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

			vim.keymap.set({ "n", "v" }, "<C-c>", vim.lsp.buf.code_action, {})
		end,
	},
}
