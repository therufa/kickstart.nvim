

return {
	'Wansmer/treesj',
  keys = {
		'<leader>tm',
		'<leader>tj',
		'<leader>ts',
	},
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesj').setup({--[[ your config ]]})
  end,
}
