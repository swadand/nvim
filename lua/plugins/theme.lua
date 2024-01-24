return {
	--	{
	--		"folke/tokyonight.nvim",
	--		lazy = false,
	--		priority = 1000,
	--		opts = {},
	--		config = function()
	--			vim.cmd('colorscheme tokyonight-night')
	--		end
	--	},
	{
		"rose-pine/neovim",
		name = "rose-pine",

		config = function()
			require("rose-pine").setup({
				disable_background = true,
			})

			function ColorMyPencils(color)
				color = color or "rose-pine"
				vim.cmd.colorscheme(color)

				vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
				vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			end

			ColorMyPencils()
		end,
	},
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",

		config = function()
			require("tokyonight").setup({
				disable_background = true,
			})

			function ColorMyPencils(color)
				color = color or "tokyonight"
				vim.cmd.colorscheme(color)

				vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
				vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			end

			ColorMyPencils()
		end,
	},
}
