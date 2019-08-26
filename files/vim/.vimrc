" Install Vim Plug if not installed already
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'ngmy/vim-rubocop'
Plug 'chase/vim-ansible-yaml'
call plug#end()

set number                      " Display line number
syntax enable                   " Turn on syntax highlighting
set backspace=indent,eol,start  " Enables backspace in vim
set cursorline                  " Highlightes cursor line
set mouse=a                     " Enable mouse clicks in vim
set clipboard=unnamed           " Enable copy paste in vim
set hidden                      " Reuse Current Window for multiple buffers

" Below settings are for tabs and spaces
set tabstop=2
set softtabstop=2               " Specially usefull when you hit backspace will move by a tab instead of normal 1 space
set shiftwidth=2
set expandtab                   " Will convert tabs to spaces

" Below settings allow indentation based on syntax of the file
set autoindent
set smartindent

" Below settings are used to customize the search
set ignorecase                  "Case-insensitive searching.
set smartcase                   "But case-sensitive if expression contains a capital letter.
set incsearch                   "Search as you type

map <C-n> :NERDTreeToggle<CR>   " Key to toggle NerdTree (nerdtree plugin required)

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Theme related settings
set background=dark
colorscheme hybrid_material
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1

nnoremap .. :FZF<CR>
nnoremap ,, :Ag<CR>
