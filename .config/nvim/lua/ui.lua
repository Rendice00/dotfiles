vim.cmd.colorscheme("tokyonight")

require("lualine").setup({
  options = {
    theme = "tokyonight",
    globalstatus = true,
  },
})

-- custom highlights
vim.api.nvim_set_hl(0, "Search", { bg = "#86e1fc", fg = "#1b1d2b" })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#c099ff", fg = "#1b1d2b" })

-- line numebrs
vim.api.nvim_set_hl(0, "LineNr", { fg = "#bb9af7",})
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#c1d0d2", bold = true })
