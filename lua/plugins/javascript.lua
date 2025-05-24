return {
	{ "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "saadparwaiz1/cmp_luasnip" },
  { "L3MON4D3/LuaSnip" },

  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "javascript", "typescript", "tsx", "json" },
        highlight = { enable = true },
      }
    end,
  },

  { "jose-elias-alvarez/null-ls.nvim" },
  { "lewis6991/gitsigns.nvim", config = true },
  { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x" },
  { "mfussenegger/nvim-dap" },
  { "nvim-telescope/telescope.nvim" },
  { "folke/which-key.nvim" },
  { "windwp/nvim-autopairs" },
  { "vim-test/vim-test" },
}

