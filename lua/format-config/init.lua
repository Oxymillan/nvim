require'format'.setup {
  ["*"] = {
        {cmd = {"sed -i 's/[ \t]*$//'"}} -- remove trailing whitespace
  },
  html = {{cmd = {"prettier -w"}}},
  css = {{cmd = {"prettier -w"}}},
  json = {{cmd = {"prettier -w"}}},
  yaml = {{cmd = {"prettier -w"}}},
  javascript = {{cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
  javascriptreact = {{cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
  typescript = {{cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
  typescriptreact = {{cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
  lua = {
    {
      cmd = {
        function(file)
          return string.format('lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=100 --break-after-table-lb --indent-width=2 %s', file)
        end
      }
    }
  },
  python = {
    {
      cmd = function(file)
        return string.format('black --quiet %s', file)
      end
    }
  },
  go = {
    {
        cmd = {"gofmt -w", "goimports -w"},
        tempfile_postfix = ".tmp"
    }
  },
  markdown = {
    {cmd = {"prettier -w"}},
    {
        cmd = {"black"},
        start_pattern = "^```python$",
        end_pattern = "^```$",
        target = "current"
    }
  }
}

vim.cmd('autocmd BufWritePost * FormatWrite')
