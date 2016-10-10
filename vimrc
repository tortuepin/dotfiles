source ~/dotfiles/vimfiles/bundle.vim
syntax on
filetype plugin on
set t_Co=256



set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=4 "画面上でタブ文字が占める幅
set shiftwidth=4 "自動インデントでずれる幅
set softtabstop=4 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set clipboard=unnamed,autoselect "クリップボード"
set matchpairs& matchpairs+=<:>
set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.pyc,*.so,*.dll
set mouse=a
set ttymouse=xterm2

"""""表示設定""""""
set number  "行番号の表示
set title   "編集中のファイル名を表示"
set showmatch   "かっこ入力時の対応するかっこを表示
set cursorline "選択した行を強調表示
set list
set listchars=space:·
set laststatus=2
set statusline=%F

"""""キーボード
"escの代わりにcontrol+j
inoremap <c-j> <esc>
vnoremap <C-j> <esc>
set backspace=indent,eol,start

""""検索設定
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>


""""colorscheme
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
autocmd ColorScheme * highlight LineNr ctermfg=8
autocmd ColorScheme * highlight Underlined ctermbg=none
""autocmd ColorScheme * highlight ColorColumn ctermbg=none
autocmd ColorScheme * highlight Error ctermbg=none
autocmd ColorScheme * highlight Folded ctermbg=none
autocmd ColorScheme * highlight NonText ctermbg=none
autocmd ColorScheme * highlight CursorLineNr ctermbg=0


colorscheme iceberg
set bg=light
hi clear CursorLine

