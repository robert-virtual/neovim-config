set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
call plug#begin()
" tresitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" tresitter

"status line
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'yamatsum/nvim-nonicons'

"status line

" colorscheme
" Plug 'gruvbox-community/gruvbox'
Plug 'EdenEast/nightfox.nvim' 
Plug 'Mofiqul/vscode.nvim'
" colorscheme

" telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
" telescope


" lsp
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'  "Collection of configurations for the built-in LSP client
Plug 'hrsh7th/nvim-cmp' "Autocompletion plugin
Plug 'hrsh7th/cmp-nvim-lsp'  "LSP source for nvim-cmp
Plug 'saadparwaiz1/cmp_luasnip' "Snippets source for nvim-cmp
Plug 'L3MON4D3/LuaSnip' "Snippets plugin
" lsp
" GIT
Plug 'lewis6991/gitsigns.nvim'
" GIT

" 
Plug 'kevinhwang91/promise-async'
Plug 'kevinhwang91/nvim-ufo'
" 

" Show colors like this: #0984e3
Plug 'norcalli/nvim-colorizer.lua'
" Show colors

" 
Plug 'numToStr/Comment.nvim'
" 
" 
Plug 'glepnir/dashboard-nvim'
" 

" coc
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc

call plug#end()

set winbar=%m\ %f

" colorscheme gruvbox
colorscheme vscode

" highlight Normal guibg=none

lua require('luaconfigfile')

source ~/.vimrc
" source ~/.config/nvim/mycocconfig.vim

" telescoope
" Find files using Telescope command-line sugar.
" <leader>fg
nnoremap <c-g> <cmd>Telescope find_files<cr>
nnoremap <leader>fl <cmd>Telescope live_grep<cr>
" <leader>ff
nnoremap <c-f> <cmd>Telescope git_files<cr>
nnoremap <leader>t :wincmd s<bar> :wincmd j<bar> :resize 6<CR>
nnoremap <leader>f :<bar> :wincmd j<bar> :resize 6<CR>
nnoremap <leader>s :so ~/.config/nvim/init.vim <CR>
" nnoremap <c-b> <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <c-b> <cmd>Telescope file_browser<cr>
