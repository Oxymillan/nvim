local home = os.getenv('HOME')
local db = require('dashboard')
db.preview_command = 'cat | lolcat -F 0.3'
db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
db.preview_file_height = 23
db.preview_file_width = 80
db.custom_center = {
  {icon = '  ', desc = 'Find File  ', action = 'Telescope find_files'},
  {icon = '  ', desc = 'Search Text', action = 'Telescope live_grep'},
  {icon = '  ', desc = 'Recent Files', action = 'Telescope oldfiles'},
  {icon = '  ', desc = 'Config      ', action = 'edit ~/.config/nvim/init.lua'}
}
