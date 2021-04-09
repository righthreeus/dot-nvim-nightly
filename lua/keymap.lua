local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Navigate the completion menu
map('i', '<C-k>', 'pumvisible() ? "\\<C-p>" : "\\<C-h>"', {expr = true})
map('i', '<C-j>', 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', {expr = true})


-- jk to exit
map('i', 'jk', '<esc>', { noremap = true })
map('i', 'JK', '<esc>', { noremap = true })

-- Moving codes
map('n', '<A-j>', "<cmd>m .+1<CR>==",        { noremap = true })
map('n', '<A-k>', "<cmd>m .-2<CR>==",        { noremap = true })
map('i', '<A-j>', "<Esc><cmd>m .+1<CR>==gi", { noremap = true })
map('i', '<A-k>', "<Esc><cmd>m .-2<CR>==gi", { noremap = true })
map('v', '<A-j>', "<cmd>m '>+1<CR>gv=gv",    { noremap = true })
map('v', '<A-k>', "<cmd>m '<-2<CR>gv=gv",    { noremap = true })

-- Plugins
map('n', '<leader>e', "<cmd>NvimTreeToggle<CR>", { noremap = true });
map('n', '<C-p>', '<cmd>Telescope find_files<cr>', { noremap = true });
-- LSP
map('n', 'gd',    "<cmd>lua vim.lsp.buf.definition()<CR>",      { noremap = true, silent = true })
map('n', 'gD',    "<cmd>lua vim.lsp.buf.declaration()<CR>",     { noremap = true, silent = true })
map('n', 'gr',    "<cmd>lua vim.lsp.buf.references()<CR>",      { noremap = true, silent = true })
map('n', 'gi',    "<cmd>lua vim.lsp.buf.implementation()<CR>",  { noremap = true, silent = true })
map('n', 'gh',    "<cmd>lua vim.lsp.buf.hover()<CR>",           { noremap = true, silent = true })
map('n', '<C-i>', "<cmd>lua vim.lsp.buf.signature_help()<CR>",  { noremap = true, silent = true })
map('n', '<C-k>', "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>",{ noremap = true, silent = true })
map('n', '<C-j>', "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",{ noremap = true, silent = true })

map('n', '<leader>p', "<cmd>set formatoptions-=cro<CR>")
map('n', '<leader>r', "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true });
