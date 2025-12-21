return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	lazy = false, -- neo-tree will lazily load itself

	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- This will show hidden files
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
			window = {
				width = 20,
				-- auto_expand_width = true, -- <e> to toggle
			},
		})

		vim.keymap.set("n", "<leader>-", "<Cmd>Neotree toggle<CR>", { silent = true })
	end,
}
