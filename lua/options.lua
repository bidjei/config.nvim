local g = vim.g
g.have_nerd_font = true
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_node_provider = 0
g.loaded_ruby_provider = 0
g.mapleader = " "
g.maplocalleader = " "


local opt = vim.opt
opt.breakindent = true
opt.breakindentopt = "sbr,shift:3"
opt.completeopt = "menu,menuone,noselect"
opt.confirm = true
opt.cursorline = true
opt.expandtab = false
opt.ignorecase = true
opt.inccommand = "split"
opt.laststatus = 3
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.mouse = "a"
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 4
opt.showbreak = "󰖶 "
opt.showmode = false
opt.smartcase = true
opt.scrolloff = 10
opt.splitbelow = true
opt.splitright = true
opt.signcolumn = "yes"
opt.tabstop = 4
opt.timeoutlen = 300
opt.undofile = true
opt.updatetime = 250


vim.schedule(function() opt.clipboard ="unnamedplus"end)
