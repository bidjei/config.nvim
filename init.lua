
                   -- Before --

require "options"
require "lsp"

                   -- 3rd Party --

vim.api.nvim_create_autocmd("PackChanged", { callback = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind

  if name == "telescope-fzf-native.nvim" and (kind == "install" or kind == "update") then
	vim.system({ "make" }, { cwd = ev.data.path })
  end
end})

vim.pack.add {
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/shaunsingh/nord.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/nvim-telescope/telescope.nvim",
	"https://github.com/nvim-telescope/telescope-fzf-native.nvim",
	"https://github.com/nvim-telescope/telescope-ui-select.nvim",
	"https://github.com/folke/which-key.nvim",
	"https://github.com/nvim-mini/mini.icons",
}

vim.cmd.colorscheme "nord"
require "pack.oil"
require "pack.telescope"
require "pack.which-key"

                   -- After --

require "highlights"
