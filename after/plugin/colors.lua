require('nightfox').setup({
	options = {
		styles = {
			comments = "italic",
			keywords = "bold",
			types = "italic,bold",
		}
	}
})

function DressUpBitches(color)
	color = color or 'duskfox'
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, 'Normal', { bg = 'None' })
	vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'None' })
end

DressUpBitches()
