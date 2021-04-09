local cmd = vim.cmd

tab_size = 4

-- cmd "exec \"set listchars=tab:>-,trail:\\uB7,nbsp:~\""
-- cmd "set list"

cmd 'set mouse=a'
cmd 'set whichwrap+=<,>,[,],h,l'

vim.o.termguicolors = true
cmd 'colorscheme dracula'

vim.o.ruler = false
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.ignorecase = false
vim.o.hlsearch = true
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.o.hidden = true
vim.o.updatetime = 300
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.showmode = false
vim.o.conceallevel = 0
vim.o.clipboard = "unnamedplus"

vim.wo.number = true
-- vim.wo.relativenumber = true
vim.wo.signcolumn = 'number'
vim.wo.wrap = false
vim.wo.cursorline = true

vim.o.tabstop = tab_size
vim.bo.tabstop = tab_size
vim.o.softtabstop = tab_size
vim.bo.softtabstop = tab_size
vim.o.shiftwidth = tab_size
vim.bo.shiftwidth = tab_size
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true

vim.cmd('language en_US.utf-8')
vim.wo.list = true
vim.o.listchars = 'tab:┆·,trail:·,nbsp:~'

vim.g.markdown_fenced_languages = {'sh', 'vim'}

vim.g.termbufm_direction_cmd = 'new'
