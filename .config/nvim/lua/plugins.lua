local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- theme
  { "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    transparent = true,
    },
  },
  
  {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  }
  },

  -- statusline
  { "nvim-lualine/lualine.nvim" },

  -- git
  {
  "lewis6991/gitsigns.nvim",
  opts = {},
},
  -- telescope
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- treesitter (BIG C++ upgrade)
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- LSP
  { "neovim/nvim-lspconfig" },

  {"sphamba/smear-cursor.nvim",
    enabled = false, 
},

  {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      clang_format = {
        prepend_args = {
          "--style={IndentWidth: 4, TabWidth: 4, UseTab: Never}"
        },
      },
    },

    formatters_by_ft = {
      cpp = { "clang_format" },
      c = { "clang_format" },
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
},

})
