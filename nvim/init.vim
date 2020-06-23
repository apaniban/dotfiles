syntax on

call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" call PlugInstall to install new plugins
call plug#end()

let mapleader=","

" Set tab to 2 spaces
filetype plugin indent on
set number
set tabstop=2
set shiftwidth=2
set expandtab

" Set copy and paste from buffer
set clipboard=unnamed
set cc=100
set ignorecase
set smartcase
set wrap!
set relativenumber
set number
set nowrap
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set termguicolors

" gitgutter config
set updatetime=100
set signcolumn=yes

" Gruvbox config
let g:gruvbox_italic=1
let g:gruvbox_color_column = 'purple'
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" NerdTree
map <leader>n :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

nnoremap <C-p> :GFiles<CR>
