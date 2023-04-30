-- local lspconfig = require('lspconfig')
-- 
-- local util = require 'lspconfig.util'
-- local function get_typescript_server_path(root_dir)
-- 
--   local global_ts = '~/.asdf/installs/nodejs/lts/lib/node_modules/typescript/lib'
--   -- Alternative location if installed as root:
--   -- local global_ts = '/usr/local/lib/node_modules/typescript/lib'
--   local found_ts = ''
--   local function check_dir(path)
--     found_ts =  util.path.join(path, 'node_modules', 'typescript', 'lib')
--     if util.path.exists(found_ts) then
--       return path
--     end
--   end
--   if util.search_ancestors(root_dir, check_dir) then
--     return found_ts
--   else
--     return global_ts
--   end
-- end
-- 
-- 
-- lspconfig.volar.setup({
--   filetypes = {'typescript', 'javascript', 'typescript.tsx', 'javascript.jsx', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
--   on_new_config = function(new_config, new_root_dir)
--     new_config.init_options.typescript.tsdk = get_typescript_server_path(new_root_dir)
--   end,
-- 	on_attach = function() 
-- 		print "hello world"
-- 	end
-- })

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
		print ('tsserver attach!')
		for _, c in ipairs(vim.lsp.get_active_clients()) do
			if c.name == 'volar' then
				vim.lsp.get_client_by_id(client.id).stop()
			end
		end
	end
}

