-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/max397574/better-escape.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
	"max397574/better-escape.nvim",
	config = function()
		require("better_escape").setup()
	end,
}
