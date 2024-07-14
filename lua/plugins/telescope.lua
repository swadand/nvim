return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>ff",  "<cmd>Telescope find_files<cr>",    desc = "Find Files" },
			{ "<leader>gf",  "<cmd>Telescope git_files<cr>",     desc = "Find Git Files" },
			{ "<leader>fw",  "<cmd>Telescope live_grep<cr>",     desc = "Find A Word" },
			{ "<leader>thm", "<cmd>Telescope harpoon marks<cr>", desc = "Telescope Harpoon Marks." },
		},

		config = function()
			require("telescope").load_extension('harpoon')

			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ps', function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end)
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
			{ "<leader>ha", '<cmd>lua require("harpoon.mark").add_file()<cr>',        desc = "Add File to Harpoon" },
			{ "<leader>hm", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', desc = "Toggle Harpoon Menu" },
			{ "<leader>hn", '<cmd>lua require("harpoon.ui").nav_next()<cr>',          desc = "Next File Marked in Harpoon" },
			{ "<leader>hp", '<cmd>lua require("harpoon.ui").nav_prev()<cr>',          desc = "Previous File Marked in Harpoon" },
		},
	},
}
