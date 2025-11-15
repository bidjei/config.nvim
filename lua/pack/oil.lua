local oil = require "oil"

oil.setup {
	float = {
		padding = 10,
		max_width = 40,
		max_height = 8,
		border = "rounded",
		--win_options = { winblend = 19 },
	},
	view_options = {
		show_hidden = true,
		columns = { "icon", "permissions", "size", "mtime" },
	},
}

