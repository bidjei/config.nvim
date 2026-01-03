vim.cmd "compiler make"
vim.bo.makeprg = "cmake --build Debug"
vim.bo.errorformat = [[%f:%l:%c: %trror: %m,%f:%l:%c: %tarning: %m,%f:%l:%c: %m]]

