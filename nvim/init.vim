"使用するshellを設定
if &shell =~# 'fish$'
  set shell=sh
endif

set number
set autoindent
set tabstop=2         "タブを何文字の空白に置換するか
set shiftwidth=2      "自動インデント時に入力する空白の数
set expandtab         "タブ入力を空白に変換
set clipboard=unnamed "yankした文字列をクリップボードにコピー
set hls               "検索した文字をハイライトする
set termguicolors     "TrueColor対応
set splitright        "画面を縦分割する際に右に開く
set ignorecase        "検索時のcaseを無視する
set smartcase         "検索文字列に大文字が含まれる場合は大文字を無視しない
set wrapscan          "検索文字列がファイル末尾まで行ったら先頭に戻る
set incsearch         "常に一致する文字列をを探しに行く
set inccommand=split  "置換時にインタラクティブに変更できる

set rtp+=/usr/local/opt/fzf " for fzf in vim

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"========================================
"dein Scripts
"========================================

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

if len(dein#check_clean()) != 0
  call map(dein#check_clean(), "delete(v:val, 'r')")
endif

"========================================
"End dein Scripts
"========================================

" for BufExplorer
nnoremap <C-l> :BufExplorer<CR>

" Setup for vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_methods = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
