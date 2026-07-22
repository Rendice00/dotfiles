local map = vim.keymap.set

-- fzf 
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>")
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>cd", vim.cmd.Ex)
map("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- LSP
map("n", "gd", vim.lsp.buf.definition)
map("n", "gr", vim.lsp.buf.references)
map("n", "K", vim.lsp.buf.hover)
map("n", "gl", vim.diagnostic.open_float)
map("n", "<leader>nd", vim.diagnostic.goto_next)
map("n", "<leader>pd", vim.diagnostic.goto_prev)

-- Keep cursor centered 
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
