return {
	"mistricky/codesnap.nvim",
	build = "make build_generator",
	config = function()
		local codesnap = require("codesnap")

		codesnap.setup({
			title = "",
			as_line_number = false,
			has_breadcrumbs = true,
			bg_padding = 0,
			bg_theme = "grape",
			save_path = os.getenv("HOME") .. "/Desktop",
		})
		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("x", "<leader>cc", "<cmd>CodeSnap", { desc = "Save selected code snapshot into clipboard" })
		keymap.set("x", "<leader>cs", "<cmd>CodeSnapSave", { desc = "Save selected code snapshot in ~/Pictures" })
	end,
}
