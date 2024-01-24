return {
	"folke/trouble.nvim",
	dependencies = { 
		"nvim-tree/nvim-web-devicons",
		"folke/lsp-colors.nvim"
	},
	keys = {
		-- change a keymap
		{ "<leader>tt", "<cmd>TroubleToggle<cr>", desc = "Code Problems" },
	}
}
