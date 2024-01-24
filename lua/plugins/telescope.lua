return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		keys = {
			-- change a keymap
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
			{ "<leader>gf", "<cmd>Telescope git_files<cr>",  desc = "Find Git Files" },
			{ "<leader>thm", "<cmd>Telescope harpoon marks<cr>",  desc = "Telescope Harpoon Marks." },
		},

		config = function()
			require("telescope").load_extension('harpoon')
		end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",

		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"ThePrimeagen/harpoon",
		keys = {
			{ "<leader>ha", '<cmd>lua require("harpoon.mark").add_file()<cr>', desc = "Add File to Harpoon" },
			{ "<leader>hm", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', desc = "Toggle Harpoon Menu" },
			{ "<leader>hn", '<cmd>lua require("harpoon.ui").nav_next()<cr>', desc = "Next File Marked in Harpoon" },
			{ "<leader>hp", '<cmd>lua require("harpoon.ui").nav_prev()<cr>', desc = "Previous File Marked in Harpoon" },
		},
	},
}
