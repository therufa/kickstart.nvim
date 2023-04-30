-- my lsp config
local lspconfig = require('lspconfig')

lspconfig.volar.setup {
	filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
	on_attach = function ()
		for _, client in ipairs(vim.lsp.get_active_clients()) do
			if client.name == "tsserver" then
				print('stopping tsserver')
				client.stop()
				vim.lsp.get_client_by_id(client.id).stop()
			end
		end
	end
}

lspconfig.eslint.setup {
	single_file_support = false,
	on_attach = function ()
	end
}

lspconfig.tsserver.setup {
	on_attach = function (client)
		for _, c in ipairs(vim.lsp.get_active_clients()) do
			if c.name == 'volar' then
				vim.lsp.get_client_by_id(client.id).stop()
			end
		end
	end
}

return {
}
