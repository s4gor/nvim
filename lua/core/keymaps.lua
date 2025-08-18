-- key map
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- neotree toggle
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


vim.keymap.set("n", "<leader>p", function()
  vim.cmd('normal! "+p')
end, opts)

vim.keymap.set({"n", "v"}, "<leader>x", function()
  if vim.fn.mode() == 'v' or vim.fn.mode() == 'V' then
    vim.cmd('normal! "+d')
  else
    vim.cmd('normal! "+dd')
  end
end, opts)

vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', opts)
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>z', ':bdelete<CR>', opts)
vim.api.nvim_set_keymap("n", "<Leader>t", ":split | terminal<CR>", opts)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { silent = true })
vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })

-- Terminal mode split navigation
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]], { silent = true })
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], { silent = true })
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], { silent = true })
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], { silent = true })
