-- key map

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>e", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end, { desc = "Toggle Neo-tree" })

local opts = { noremap = true, silent = true }

-- Copy (yank) the selected lines in visual mode or current line in normal mode
vim.keymap.set({"n", "v"}, "<leader>c", function()
  if vim.fn.mode() == 'v' or vim.fn.mode() == 'V' then
    -- Visual mode: yank selection
    vim.cmd('normal! "+y')
  else
    -- Normal mode: yank current line
    vim.cmd('normal! "+yy')
  end
end, opts)

-- Paste from system clipboard in normal mode
vim.keymap.set("n", "<leader>p", '"+p', opts)

-- Cut (delete and save to system clipboard) selected lines in visual mode or current line in normal mode
vim.keymap.set({"n", "v"}, "<leader>x", function()
  if vim.fn.mode() == 'v' or vim.fn.mode() == 'V' then
    vim.cmd('normal! "+d')
  else
    vim.cmd('normal! "+dd')
  end
end, opts)

