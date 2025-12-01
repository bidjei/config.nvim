local hl = vim.api.nvim_set_hl

hl(0, "Normal", { bg = "#3b4252", fg = "#eceff4" });
hl(0, "CursorLine", { bg = "#4c566a" });
hl(0, "CursorLineNr", { link = "CursorLine" });
hl(0, "LineNr", { link = "Comment" });
hl(0, "NormalFloat", { link = "Normal" });
