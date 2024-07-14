return {
	{
		"folke/trouble.nvim",
		opts = {},
		cmd = "Trouble",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"folke/lsp-colors.nvim",
		},
		keys = {
			{
				"<leader>tg",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>tt",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
		},
	},
}
