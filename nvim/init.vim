set t_Co=256
filetype plugin on

""keymap
inoremap <c-j> <esc>
vnoremap <c-j> <esc>
set backspace=indent,eol,start



set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=4 "画面上でタブ文字が占める幅
set shiftwidth=4 "自動インデントでずれる幅
set softtabstop=4 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.pyc,*.so,*.dll


""display
set number  "行番号の表示
set title   "編集中のファイル名を表示"
set showmatch   "かっこ入力時の対応するかっこを表示
set list
set listchars=space:·
set laststatus=2
set statusline=%F




let s:dein_dir = expand('~/.config/nvim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
        echo "cloned dein"
    endif
    execute "set runtimepath^=" . fnamemodify(s:dein_repo_dir, ':p')
endif


if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    let g:rc_dir = expand("~/.config/nvim/")
    let s:toml = g:rc_dir . 'dein.toml'
    let s:lazy_toml = g:rc_dir . 'dein_lazy.toml'

    call dein#load_toml(s:toml, {'lazy': 0})
    "call dein#load_toml(s:lazy_toml, {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif
