local lsp = require('lsp-zero').preset({})

--lsp.on_attach(function(client, bufnr)
--  lsp.default_keymaps({buffer = bufnr})
--end)

-- (Optional) Configure lua language server for neovim
--require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.ensure_installed({
	'clangd',
--	'rust-analyzer',
	'svlangserver',
--    'python-lsp-server'
})

lsp.preset('recommended')

lsp.setup()
