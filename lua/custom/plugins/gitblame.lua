
vim.cmd('let g:gitblame_enabled = 0')

-- git blame
vim.keymap.set('n', '<leader>Gb', function()
	vim.cmd(':GitBlameEnable')
end, { desc = '[G]it [b]lame enable' })
vim.keymap.set('n', '<leader>Gd', function()
	vim.cmd(':GitBlameDisable')
end, { desc = '[G]it blame [D]isable' })

return {
	{
		'f-person/git-blame.nvim',
		event = 'VeryLazy'
	},
}
