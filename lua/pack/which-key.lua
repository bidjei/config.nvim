local dapui = require "dapui"
local ts = require "telescope.builtin"
local key = require("which-key")
local del = vim.keymap.del

key.setup {
	delay = 0,
	icons = {
		mappings = vim.g.have_nerd_font,
		keys = {}, -- Use Nerd Fonts
	},
	spec = {
		{
			mode = "n",
			{ "<esc>",      "<cmd>noh<cr>",                desc = "Turn-Off Highlight" },
			{ "<C-h>",      "<C-w><C-h>",                  desc = "Focus Window Left" },
			{ "<C-l>",      "<C-w><C-l>",                  desc = "Focus Window Right" },
			{ "<C-j>",      "<C-w><C-j>",                  desc = "Focus Window Below" },
			{ "<C-k>",      "<C-w><C-k>",                  desc = "Focus Window Above" },

			{ "<C-S-h>",    "<C-w>H",                      desc = "Move window Left" },
			{ "<C-S-l>",    "<C-w>L",                      desc = "Move window Right" },
			{ "<C-S-j>",    "<C-w>J",                      desc = "Move window Below" },
			{ "<C-S-k>",    "<C-w>K",                      desc = "Move window Above" },

			{ "<space>g",                                 group = "Goto" },
			{ "<space>gb",  ts.buffers,                    desc = "Goto Buffer" },
			{ "<space>gd",  ts.lsp_definitions,            desc = "Goto Definition" },
			{ "<space>gi",  ts.lsp_implementations,        desc = "Goto Implementaons" },
			{ "<space>gj",  ts.jumplist,                   desc = "Goto Jump Entry" },
			{ "<space>gm",  ts.marks,                      desc = "Goto Mark" },
			{ "<space>gr",  ts.lsp_references,             desc = "Code References" },
			{ "<space>gs",  ts.lsp_document_symbols,       desc = "Goto Document Symbols" },
			{ "<space>gS",  ts.lsp_workspace_symbols,      desc = "Goto Workspace Symbols" },
			{ "<space>gt",  ts.lsp_type_definitions,       desc = "Code Types" },
			{ "<space>gv",  ts.tags,                       desc = "Goto Vim Tags" },

			{ "<leader>s",                                group = "Search" },
			{ "<leader>sb", ts.current_buffer_fuzzy_find,  desc = "Search Buffer" },
			{ "<leader>sc", ts.colorscheme,                desc = "Search Colorsches" },
			{ "<leader>sd", ts.live_grep,                  desc = "Search Director" },
			{ "<leader>se", ts.spell_suggest,              desc = "Search English Spelling" },
			{ "<leader>sh", ts.highlights,                 desc = "Search Highligh" },
			{ "<leader>sk", ts.keymaps,                    desc = "Search Keymaps" },
			{ "<leader>sl", ts.loclist,                    desc = "Search Locationist" },
			{ "<leader>sm", ts.man_pages,                  desc = "Search Man Page" },
			{ "<leader>so", ts.vim_options,                desc = "Search Options" },
			{ "<leader>ss", ts.grep_string,                desc = "Search Selection" },
			{ "<leader>st", ts.current_buffer_tags,        desc = "Search Tags" },
			{ "<leader>gv", ts.help_tags,                  desc = "Search Vim Help" },
			{ "<leader>sx", ts.registers,                  desc = "Search Register" },
			{ "<leader>s:", ts.command_history,            desc = "Search Command story" },

			{ "<leader>c",                                group = "Code" },
			{ "<leader>ca", vim.lsp.buf.code_action,       desc = "Code Actions" },
			{ "<leader>cc", "gcc", remap = true,           desc = "Code Comment Toggle" },
			{ "<leader>cm", "<cmd>make<cr>",               desc = "Compile Make" },
			{ "<leader>ci", ts.lsp_incoming_calls,         desc = "Incoming Code Calls" },
			{ "<leader>co", ts.lsp_outgoing_calls,         desc = "Outgoing Code Calls" },
			{ "<leader>cr", vim.lsp.buf.rename,            desc = "Code Rename" },

			{ "<leader>d",                                  group = "Open" },
			{ "<leader>db", "<cmd>DapToggleBreakpoint<cr>",  desc = "Debugger Breakpoint" },
			{ "<leader>dl", "<cmd>DapNew<cr>",               desc = "Debugger Launch" },
			{ "<leader>dv", dapui.toggle,                    desc = "Debugger View" },

			{ "<leader>o",                                group = "Open" },
			{ "<leader>od", ts.diagnostics,                desc = "Open Diagnostics" },
			{ "<leader>of", ts.find_files,                 desc = "Open File" },
			{ "<leader>oF", "<cmd>Oil --float<cr>",        desc = "Open Files" },
			{ "<leader>oh", ts.help_tags,                  desc = "Open Help" },
			{ "<leader>or", ts.oldfiles,                   desc = "Open Recent File" },
			{ "<leader>ot", "<cmd>split | terminal<cr>A",  desc = "Open Terminal" },
			{ "<leader>oq", ts.quickfix,                   desc = "Open Quick-Fix" },
			{ "<leader>oQ", ts.quickfixhistory,            desc = "Open Quick-Fix History" },
		},
		{
			mode = "t",
			{ "<esc><esc>", "<C-\\><C-n>",                 desc = "Exit Terminal Mode" },
		},
	},
}

--del("n", "gc")  -- Toggle comment
del("n", "gri") -- vim.lsp.buf.implementation()
del("n", "gra") -- vim.lsp.buf.code_action()
del("n", "grn") -- vim.lsp.buf.rename()
del("n", "grt") -- vim.lsp.buf.type_definition()
del("n", "grr") -- vim.lsp.buf.references()


vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("user-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
