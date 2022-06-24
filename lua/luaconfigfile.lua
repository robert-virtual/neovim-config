-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
require('statuslineconfig')
require('telescopeconfig')
require('mytreesitterconf')
require('mylspconfig')

require'gitsigns'.setup()
require'Comment'.setup()
require'colorizer'.setup()
require'nvim-web-devicons'.setup {
 default = true;
}
local home = os.getenv('HOME')
local db = require'dashboard'

db.preview_command = 'cat | lolcat'
db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
db.preview_file_height = 7
db.preview_file_width = 80
db.custom_center = {
    {icon = '  ',
    desc = 'Recently latest session                 ',
    shortcut = 'SPC s l',
    action ='SessionLoad'},
    {icon = '  ',
    desc = 'Recently opened files                   ',
    action =  'DashboardFindHistory',
    shortcut = 'SPC f h'},
    {icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f'},
    {icon = '  ',
    desc ='File Browser                            ',
    action =  'Telescope file_browser',
    shortcut = 'SPC f b'},
    {icon = '  ',
    desc = 'Open Personal dotfiles                  ',
    action = 'Telescope dotfiles path=' .. home ..'/.dotfiles',
    shortcut = 'SPC f d'},
  }


vim.wo.foldcolumn = '1'
vim.wo.foldlevel = 99
vim.wo.foldenable = true
