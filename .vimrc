if &shell =~# 'fish$'
    set shell=sh
endif

syntax enable
filetype plugin indent on

set nowrap

set hlsearch
set ignorecase
set smartcase
set hidden
set autoindent

set ruler
set number
set list
set wildmenu
set showcmd

set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2
set smarttab
set backspace=indent,eol,start
set clipboard=unnamed
set noswapfile

set nolist

" autocmd
autocmd BufWritePre * :%s/\s\+$//ge

" NeoBundle configration
" ----------------------------------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rhubarb'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle "aklt/plantuml-syntax"
NeoBundle 'fatih/vim-go'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'cohama/lexima.vim'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'othree/yajs.vim'
NeoBundle 'maxmellon/vim-jsx-pretty'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-surround'
NeoBundle 'chrisbra/csv.vim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Keybind for bufexplorer
noremap <C-l> :BufExplorer<C-m>

" Setup for vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1

" Setup for vim-javascript
let g:javascript_plugin_flow = 1

" Setup for vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 0
