print('lua loaded')
require('plugins')
require'lspconfig'.pyright.setup{}
require('onsails_config')
require('nvim_lsp_config')
require('lsp_config')
require('autocomplete')
require('buffer_config')

