
vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
	  local name, kind = ev.data.spec.name, ev.data.kind

	  if name == "telescope-fzf-native.nvim" and (kind == "install" or kind == "update") then
		vim.system({ "make" }, { cwd = ev.data.path })
	  end
	end
})

vim.pack.add {
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/nvim-mini/mini.icons",

	"https://github.com/nvim-neotest/nvim-nio.git",
	"https://github.com/mfussenegger/nvim-dap.git",
	"https://github.com/rcarriga/nvim-dap-ui.git",

	"https://github.com/sindrets/diffview.nvim.git",
	"https://github.com/NeogitOrg/neogit.git",

	"https://github.com/stevearc/oil.nvim",
	"https://github.com/nvim-telescope/telescope.nvim",
	"https://github.com/nvim-telescope/telescope-fzf-native.nvim",
	"https://github.com/nvim-telescope/telescope-ui-select.nvim",
	"https://github.com/folke/which-key.nvim",
}

                   -- Before --

require "config.options"
require "config.lsp"
require "config.dap"

                   -- 3rd Party --

--vim.cmd.colorscheme "nord"
require "pack.oil"
require "pack.telescope"
require "pack.which-key"

                   -- After --

require "config.highlights"
