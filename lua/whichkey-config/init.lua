local wk = require("which-key")
local mappings = {
  q = {":q<CR>", "Quit"},
  Q = {":wq<CR>", "Save & Quit"},
  w = {":w<CR>", "Save"},
  x = {":bdelete<CR>", "Close Buffer"},
  E = {":e ~/.config/nvim/init.lua<CR>", "Edit Config"},
  h = {":split<CR>", "Horizontal Split"},
  v = {":vsplit<CR>", "Vertical Split"},
  f = {":Telescope find_files<CR>", "Find Files"},
  r = {":Telescope live_grep<CR>", "Live Grep"},
  l = {  
    name = "LSP",
    i = {":LspInfo<CR>", "Connected Language Servers"},
    A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
    R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
    l = {'<cmd>lua print(cim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "List workspace folders"},
    D = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
    r = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
    a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
    e = {'<cmd>lua vim.lsp.diagnostics.show_line_diagnostics()<CR>', "Show line diagnostics"},
    q = {'<cmd>lua vim.lap.diagnostics.set_loclist()<CR>', "Show loclist"}
  },
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
