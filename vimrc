set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'wincent/command-t'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'lyuts/vim-rtags'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'roxma/vim-tmux-clipboard'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'luochen1990/rainbow'
Plugin 'w0rp/ale'
Plugin 'ntpeters/vim-better-whitespace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
set term=screen-256color-bce
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme default

" advanced cpp highlighting
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_class_scope_hightlight = 1


filetype plugin indent on
set smartindent
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set cindent
set cino=g-0,N-s

autocmd Filetype xml setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab

" Command t specific settings
let mapleader=","
set wildignore=*.so,*.o,*.a,*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,_build

" FZF shortcuts
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>g :Rg<CR>

" Vim splits
set splitbelow
set splitright

nnoremap <leader>q <C-w>s
nnoremap <leader>w <C-w>v
nnoremap <leader><leader> <C-w><C-w>

if has('mouse')
  set mouse=a
  if &term =~ "xterm" || &term =~ "screen"
    " as of March 2013, this works:
    set ttymouse=xterm2

    " previously, I found that ttymouse was getting reset, so had
    " to reapply it via an autocmd like this:
    autocmd VimEnter,FocusGained,BufEnter * set ttymouse=xterm2
  endif
endif

" YCM default conf
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

command! GA execute "!git add %"

" Copy to system clipboard by default
set clipboard=unnamed
set encoding=utf-8

" Linters
let g:ale_linters = {
  \ 'python': ['flake8'] ,
  \ }
let g:ale_linters_explicit = 1

nmap <silent> <leader>k <Plug>(ale_previous_wrap)
nmap <silent> <leader>j <Plug>(ale_next_wrap)
imap ii <Esc>
