return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set(
            "n",
            "<leader>a",
            "<cmd>lua require('harpoon.mark').add_file()<cr>",
            { desc = "Mark file with harpoon" }
        )
        keymap.set(
            "n",
            "<leader>n",
            "<cmd>lua require('harpoon.ui').nav_next()<cr>",
            { desc = "Go to next harpoon mark" }
        )
        keymap.set(
            "n",
            "<leader>p",
            "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
            { desc = "Go to previous harpoon mark" }
        )
        keymap.set("n", "<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Harpoon menu" })
        -- keymap.set("n", "<C-a>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Go to file 1" })
        -- keymap.set("n", "<C-t>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Go to file 2" })
        -- keymap.set("n", "<C-n>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Go to file 3" })
        -- keymap.set("n", "<C-s>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Go to file 4" })
    end,
}
