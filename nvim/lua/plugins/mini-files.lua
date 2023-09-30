return {
	{
		"echasnovski/mini.files",
		version = false,
		config = function()
			require("mini.files").setup({
				options = {
					-- Whether to delete permanently or move into module-specific trash
					permanent_delete = true,
					-- Whether to use for editing directories
					use_as_default_explorer = true,
				},
				windows = {
					-- Maximum number of windows to show side by side
					max_number = math.huge,
					-- Whether to show preview of file/directory under cursor
					preview = false,
					-- Width of focused window
					width_focus = 30,
					-- Width of non-focused window
					width_nofocus = 15,
					-- Width of preview window
					width_preview = 50,
				},
			})
		end,
	},
}
