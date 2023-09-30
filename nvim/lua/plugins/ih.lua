return {
	{
		"simrat39/inlay-hints.nvim",
		event = "InsertEnter",
		opts = {
			-- only_current_line = true,
			renderer = "inlay-hints/render/eol",
			eol = {
				parameter = {
					separator = ", ",
					format = function(hints)
						return string.format(" <- (%s)", hints):gsub(":", "")
					end,
				},
				type = {
					separator = ", ",
					format = function(hints)
						return string.format(" » (%s)", hints):gsub(":", "")
					end,
				},
			},
		},
	},
}
