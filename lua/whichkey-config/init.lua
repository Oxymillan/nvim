local wk = require("which-key")

local Terminal = require('toggleterm.terminal').Terminal

local toggle_float = function()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end

-- local toggle_lazygit = function()
--  local lazygit = Terminal:new({cmd = "lazygit", direction = "float"})
--  return lazygit:toggle()
-- end

local mappings = {
  q = {":q<CR>", "Quit"},
  a = {"q!<CR>", "Force Quit"},
  Q = {":wq<CR>", "Save & Quit"},
  w = {":w<CR>", "Save"},
  W = {"w!<CR>", "Force Write"},
  x = {":bdelete<CR>", "Close Buffer"},
  E = {":e ~/.config/nvim/init.lua<CR>", "Edit Config"},
  b = {":split<CR>", "Horizontal Split"},
  v = {":vsplit<CR>", "Vertical Split"},
  f = {":Telescope find_files<CR>", "Find Files"},
  r = {":Telescope live_grep<CR>", "Live Grep"},
  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    k = {'<cmd>lua vim.lsp.buf.signature_help()<CR>', "Signature help"},
    K = {'<cmd>Lspsaga hover_doc<cr>', "Hover Commands"},
    y = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
    Y = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
      "List workspace folder"
    },
    t = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
    d = {'<cmd>lua vim.lsp.buf.definition()<CR>', "Go to definition"},
    D = {'<cmd>lua vim.lsp.buf.delaration()<CR>', "Go to declaration"},
    r = {'<cmd>lua vim.lsp.buf.references()<CR>', "References"},
    R = {'<cmd>Lspsaga rename<cr>', "Rename"},
    a = {'<cmd>Lspsaga code_action<cr>', "Code actions"},
    e = {'<cmd>Lspsaga show_line_diagnostics<cr>', "Show line diagnostics"},
    n = {'<cmd>Lspsaga diagnostic_jump_next<cr>', "Go to next diagnostic"},
    N = {'<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go to previous diagnostic"}
  },
  t = {
    name = 'Terminal',
    t = {":ToggleTerm<CR>", "Split Below"},
    f = {toggle_float, "Floating Terminal"}
  }
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
