local ts       = require "telescope"
local actions  = require "telescope.actions"
local themes   = require "telescope.themes"


ts.setup {
	defaults = vim.tbl_extend("error", themes.get_ivy(), {
		color_devicons = true,
		mappings = {
			["i"] = {
				["<S-Tab>"] = actions.which_key,
			},
		},
	}),
	extensions = {
		["ui-select"] = { themes.get_dropdown(), }
	},
	pickers = {
		["man_pages"] = {
			--env = { MANPATH = vim.env.MANPATH or "" },
			sections = { "1", "2", "3", "4", "5", "6", "7", "8" },
		},
	},
}
ts.load_extension "fzf"
ts.load_extension "ui-select"
