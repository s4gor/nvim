-- key map

local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>e", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end, { desc = "Toggle Neo-tree" })


vim.keymap.set({"n", "v"}, "<leader>c", function()
  if vim.fn.mode() == 'v' or vim.fn.mode() == 'V' then
    vim.cmd('normal! "+y')
  else
    vim.cmd('normal! "+yy')
  end
end, opts)

vim.keymap.set("n", "<leader>p", '"+p', opts)

vim.keymap.set({"n", "v"}, "<leader>x", function()
  if vim.fn.mode() == 'v' or vim.fn.mode() == 'V' then
    vim.cmd('normal! "+d')
  else
    vim.cmd('normal! "+dd')
  end
end, opts)

vim.api.nvim_set_keymap('v', '<Tab>', '>>', opts)
vim.api.nvim_set_keymap('v', '<S-Tab>', '<<', opts)
