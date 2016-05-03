""""""NeoBundle設定"""""""""""""""
set nocompatible
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

"""

call neobundle#end()
filetype plugin indent on
"""""""""""""""""""""""""""""""



set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=4 "画面上でタブ文字が占める幅
set shiftwidth=4 "自動インデントでずれる幅
set softtabstop=4 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
syntax on


"""""表示設定"""""""
set number  "行番号の表示
set title   "編集中のファイル名を表示
set showmatch   "かっこ入力時の対応するかっこを表示
set smartindent "オートインデント

filetype plugin indent on

"""""キーボード
"escの代わりにcontrol+j
imap <c-j> <esc>

