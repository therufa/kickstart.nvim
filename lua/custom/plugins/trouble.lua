
return {
	'folke/trouble.nvim',
	cmd = { 'TroubleToggle', 'Trouble' },
	keys = {
		{ '<leader>T', desc = '[T]rouble' },
		{ '<leader>Tw', '<cmd>TroubleToggle workspace_diagnostics<cr>', desc = '[T]rouble [W]orkspace Diagnostics' },
		{ '<leader>Td', '<cmd>TroubleToggle document_diagnostics<cr>', desc = '[T]rouble [D]ocument Diagnostics' },
		{ '<leader>q', '<cmd>TroubleToggle document_diagnostics<cr>', desc = '[T]rouble [D]ocument Diagnostics' },
		{ '<leader>Tf', '<cmd>TroubleToggle quickfix<cr>', desc = '[T]rouble Quick[f]ix list' },
	},
	opts = {
		use_diagnostics_signs = true,
		action_keys = {
			close = { 'q', '<esc>' },
			cancel = '<c-e>',
		},
	}
}
