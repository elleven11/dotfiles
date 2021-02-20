"
""" Main rc, for generic keybindings, settings and plugin loading
"

" Specify a directory for plugins call plug#begin('~/.nvim/plugged')
call plug#begin('~/.nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'luochen1990/rainbow'
Plug 'plasticboy/vim-markdown'
Plug 'xianzhon/vim-code-runner'
Plug 'elleven11/vim-runner'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vim-which-key'
Plug 'pacha/vem-tabline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'wlangstroth/vim-racket'
Plug 'chrisbra/csv.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'vim-python/python-syntax'

Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()


" true colors, needs patched urxvt or st to work right
set termguicolors

" yes
inoremap jj <ESC>

" also yes
let mapleader = ","

" setting clipboard to system
set clipboard=unnamedplus

" cursor blinkage
set guicursor=v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait1700-blinkoff400-blinkon950-Cursor/lCursor,sm:block,n:block-blinkon0

" move between splits
nmap <C-h> :wincmd h <CR>
nmap <C-j> :wincmd j <CR>
nmap <C-k> :wincmd k <CR>
nmap <C-l> :wincmd l <CR>


" save file whit Ctrl+s
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <Esc>:Update<CR>

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set relativenumber
set nu

set smarttab
set cindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

" keep undos in a file
set undofile
set undodir=~/.local/share/nvim/cache

" lines to keep cursor vertically centered
set scrolloff=10

" remember cursor location
set viminfo='100,\"2500,:200,%,n~/.cache/.viminfo

" set encoding
set encoding=utf-8
set fileencoding=utf-8

" Character 'limit' line
set colorcolumn=110

" don't continue to format comment tags after enter
set formatoptions-=cro

" more buffers open
set hidden 

" update everything, faster completion
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" don't show signcolumn
set signcolumn=no

" sourcing rcs
source ~/.config/nvim/airline-rc.vim
source ~/.config/nvim/coc-rc.vim
source ~/.config/nvim/nerdtree-rc.vim
source ~/.config/nvim/vim-go-rc.vim
source ~/.config/nvim/rainbow-parentheses-rc.vim
source ~/.config/nvim/nerdcommenter-rc.vim
source ~/.config/nvim/vim-runner-rc.vim
source ~/.config/nvim/tagbar-rc.vim
source ~/.config/nvim/vim-markdown-rc.vim
source ~/.config/nvim/leetcode-rc.vim
source ~/.config/nvim/vem-tabline-rc.vim
source ~/.config/nvim/vim-which-key-rc.vim
source ~/.config/nvim/fzf-rc.vim
source ~/.config/nvim/gruvbox-rc.vim
source ~/.config/nvim/python-syntax-rc.vim
