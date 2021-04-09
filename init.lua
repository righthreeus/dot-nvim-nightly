cmd = vim.cmd

require('keymap')
require('settings')
require('plugins')
require('plugin_configs')

require('lsp')
require('lspkind').init()

-- cmd "autocmd BufWritePost plugins.lua PackerCompile"
cmd "set formatoptions-=o"
