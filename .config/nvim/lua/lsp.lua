local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("clangd", {
  cmd = { "clangd", "--background-index" },
  capabilities = capabilities,
})

vim.lsp.enable({ "clangd" })-- python
vim.lsp.config("pylsp", {})

vim.lsp.config("gdscript", {})


-- ENABLE SERVERS
vim.lsp.enable({
  "clangd",
  "pylsp",
  "gdscript",
})
