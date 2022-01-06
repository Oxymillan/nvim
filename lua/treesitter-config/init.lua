require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {"bash", "html", "css", "javascript", "lua", "python", "go", "json", "c"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
