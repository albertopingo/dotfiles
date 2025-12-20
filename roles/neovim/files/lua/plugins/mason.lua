return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"typos_lsp",
			"lua_ls",
			"clangd",
			"rust_analyzer",

			-- install nodejs and npm
			"html",
			"ts_ls",
			"cssls",
			"tailwindcss",
			"vuels",

			"jsonls",

			"dockerls",
			"cmake",
			"ansiblels",
			"yamlls",
		},
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			},
		},
		"neovim/nvim-lspconfig",
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			opts = {
				ensure_installed = {
					"stylua", -- Lua
					"black", -- Python
					"clang-format", -- C / C++
					"prettierd", -- HTML / CSS / JS / TS / YAML / JSON
					"prettier",
					"taplo", -- TOML
					"shfmt", -- Shell
				},
			},
		},
		"mfussenegger/nvim-lint",
		{
			"rshkarin/mason-nvim-lint",
			opts = {
				ensure_installed = { "ansible_lint" },
				ignore_install = { "custom-linter", "inko", "clj-kondo", "janet", "ruby" },
			},
		},
		"mfussenegger/nvim-ansible",
	},
}
