vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
-- use U to redo
keymap.set("n", "U", "<C-r>")
-- use H and L to navigate buffers
keymap.set("n", "H", "<cmd><space>bp<CR>")
keymap.set("n", "L", "<cmd><space>bn<CR>")
-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highligpts" })

-- move text up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- half page up and down with cursor in the middle
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search matches in the middle of the window
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- replace all
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Lazygit
keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", opts)

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- navbuddy
keymap.set("n", "<leader>bb", "<cmd>lua require'nvim-navbuddy'.open()<CR>", opts)

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- split window
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "_", "<cmd>vertical<space>res<space>-5<CR>")
keymap.set("n", "+", "<cmd>vertical<space>res<space>+5<CR>")
keymap.set("n", "(", "<cmd>res<space>-5<CR>")
keymap.set("n", ")", "<cmd>res<space>+5<CR>")

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- open mini files
keymap.set("n", "-", function()
	require("mini.files").open()
end)

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- trouble
keymap.set("n", "<leader>xx", function()
	require("trouble").toggle()
end)
keymap.set("n", "<leader>xw", function()
	require("trouble").open("workspace_diagnostics")
end)
keymap.set("n", "<leader>xd", function()
	require("trouble").open("document_diagnostics")
end)
keymap.set("n", "<leader>xq", function()
	require("trouble").open("quickfix")
end)
keymap.set("n", "<leader>xl", function()
	require("trouble").open("loclist")
end)
keymap.set("n", "gR", function()
	require("trouble").open("lsp_references")
end)

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------
-- nomodoro
keymap.set("n", "<leader>nw", "<cmd>NomoWork<cr>", opts)
keymap.set("n", "<leader>nb", "<cmd>NomoBreak<cr>", opts)
keymap.set("n", "<leader>ns", "<cmd>NomoStop<cr>", opts)

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------
-- open neorg
keymap.set("n", "<leader>nn", "<cmd>Neorg<space>workspace<space>projects<CR>")
