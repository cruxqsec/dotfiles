" vscode specific
if exists('g:vscode')

set clipboard=unnamedplus
set ruler
set list
filetype on
syntax on
set relativenumber
set numberwidth=1
set tabstop=4
set bs=2

nnoremap j gj
nnoremap k gk

" switching between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" paste
map <C-v> "+p
vnoremap <C-c> "+y
" tabs
nnoremap tk :call VSCodeNotify('workbench.action.nextEditor')<CR>
nnoremap tj :call VSCodeNotify('workbench.action.previousEditor')<CR>
nnoremap <leader>n :call VSCodeNotify('workbench.action.files.newUntitledFile')<CR>

" normal vim
else
  "
  " List your plugins here
call plug#begin()

" colorscheme themes
Plug 'folke/tokyonight.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ellisonleao/gruvbox.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
Plug 'navarasu/onedark.nvim'

Plug 'itchyny/lightline.vim' " status bar
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " syntax parse/highlight
Plug 'tpope/vim-surround' " for changing surroundings
Plug 'nvim-tree/nvim-web-devicons' " icon support
Plug 'OXY2DEV/markview.nvim' " support for markdown

call plug#end()

set termguicolors


"set background=dark
"let g:nightflyTerminalColors = 0
"let g:onedark_config = { 'style': 'deep' }

" we can't properly indent because of this lua...
lua << EOF
require('onedark').setup {
style = 'deep', -- or 'darker', 'cool', 'deep', 'warm', 'warmer'
colors = {
  bg0 = "#011627",  -- main background
  bg1 = "#011627",  -- main background
  bg2 = "#011627",  -- main background
},
}
require('onedark').load()
EOF

let g:lightline = { 'colorscheme': 'nightfly' }

set noshowmode
set ruler
set list
filetype on
syntax on
set relativenumber
set numberwidth=1
set tabstop=4
set bs=2

nnoremap j gj
nnoremap k gk

" switching between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" paste
map <C-v> "+p
vnoremap <C-c> "+y

" tabs
noremap tn :tabnew<Space>
noremap tk :tabnext<CR>
noremap tj :tabprev<CR>
noremap tm :tabm<Space>

endif
