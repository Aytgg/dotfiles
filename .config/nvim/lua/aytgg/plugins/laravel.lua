return {
	"adalessa/laravel.nvim",
	dependencies = {
		"tpope/vim-dotenv",
		"nvim-telescope/telescope.nvim",
		"MunifTanjim/nui.nvim",
		"kevinhwang91/promise-async",
	},
	-- event = { "VeryLazy" },
	cmd = { "Laravel" },
	keys = {
		{ "<leader>la", ":Laravel artisan<cr>" },
		{ "<leader>lr", ":Laravel routes<cr>" },
		{ "<leader>lm", ":Laravel related<cr>" },
	},
	config = function()
		local laravel = require("laravel")

		laravel.setup({
			lsp_server = "intelephense",
			features = {
				route_info = {
					enable = true,
					view = "top",
				},
				pickers = {
					enable = true,
					provider = "telescope",
				},
			},
			user_providers = {},
		})
	end,
}
