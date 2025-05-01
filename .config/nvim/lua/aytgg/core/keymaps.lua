vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

-- keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear seach highlights" })

--keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>st", ":split term://zsh<CR>", { desc = "Split terminal horizontally" })
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal width" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split window" })

keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab" })

keymap.set("n", "<leader>mp", "<leader>mp", { desc = "Format lines." })
-- vim-maximizer
--keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
