
return {
 {
    "mhartington/formatter.nvim",
    event = "BufWritePre",
    config = function()
      require("formatter").setup({
        filetype = {
          cpp = {
            function()
              return {
                exe = "clang-format",
                args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
                stdin = true,
              }
            end,
          },
          c = {
            function()
              return {
                exe = "clang-format",
                args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
                stdin = true,
              }
            end,
          },
        },
      })
    end,
  },

  {
    "mfussenegger/nvim-lint",
    event = "BufWritePost",
    config = function()
      require("lint").linters_by_ft = {
        cpp = { "clangtidy" },
        c = { "clangtidy" },
      }

      vim.api.nvim_create_autocmd("BufWritePost", {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  },
}
