
return {
  {
	"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup{}
		end
	},
	{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = { "c", "cpp", "rust", 	"javascript", "typescript", "json",  "tsx", "jsdoc", "json", "lua", "html", "css", "python" },
      highlight = { enable = true },
			indent = { enable = true }
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = "buffer" },
          { name = "path" },
          { name = "luasnip" },
        },
      })
    end,
  },
	{
    "mattn/emmet-vim",
    init = function()
      vim.g.user_emmet_leader_key = '<C-e>'
      vim.g.user_emmet_settings = {
        javascript = { extends = 'jsx' },
        javascriptreact = { extends = 'jsx' },
        typescriptreact = { extends = 'jsx' },
        eruby = { extends = 'html' },
        django = { extends = 'html' },
      }
    end,
  },
  {
    "preservim/tagbar",
    cmd = "TagbarToggle",
    keys = {
      { "<leader>tt", "<cmd>TagbarToggle<CR>", desc = "Toggle Tagbar" },
    },
  },
}
