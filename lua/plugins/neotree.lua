
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",  
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,         -- Show all items
          hide_dotfiles = false,  -- Show dotfiles (like .env, .gitignore, etc.)
          hide_gitignored = false,
        },
      },
      window = {
        mappings = {
          ["H"] = "toggle_hidden",  -- Optional: Press H to toggle hidden files
        },
      },
    })
  end,
}
