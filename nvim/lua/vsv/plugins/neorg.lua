return {
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup({
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.keybinds"] = {
                        config = {
                            hook = function(keybinds)
                                keybinds.remap_event("norg", "n", "<leader>d", "core.qol.todo_items.todo.task_done")
                                keybinds.remap_event("norg", "n", "<leader>u", "core.qol.todo_items.todo.task_undone")
                                keybinds.map("norg", "n", "<leader>r", "<cmd>Neorg<space>return<CR>")
                            end,
                        },
                    },
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                projects = "~/notes/projects",
                            },
                        },
                    },
                },
            })
        end,
    },
}
