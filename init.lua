require "core.keymaps"
require "core.options"

vim.opt.number = true
vim.opt.autoindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
	if not (vim.uv or vim.loop).fs_stat(lazypath) then
		local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
		local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
		if vim.v.shell_error ~= 0 then
			error('Error cloning lazy.nvim:\n' .. out)
		end
end

local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require('lazy').setup({
	require "plugins.neotree",
	require "plugins.colortheme",
	require "plugins.javascript",
	require "plugins.bufferline",
	require "plugins.autopairs"
})

