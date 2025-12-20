return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				-- Languages
				lua = { "stylua" },
				python = { "black" },
				c = { "clang_format" },
				cpp = { "clang_format" },
				rust = { "rustfmt" },
				-- Web
				html = { "prettierd", "prettier" },
				css = { "prettierd", "prettier" },
				javascript = { "prettierd", "prettier" },
				typescript = { "prettierd", "prettier" },
				-- Config / Data
				yaml = { "prettierd", "prettier" },
				json = { "prettierd", "prettier" },
				toml = { "taplo" },
				-- Others
				bash = { "shfmt" },
			},
			format_on_save = {
				timeout_ms = 5000,
				lsp_format = "fallback",
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			require("conform").format({ bufnr = 0 })
		end)
	end,
}
