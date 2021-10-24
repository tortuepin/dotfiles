" vim:set foldmethod=marker:

"set termguicolors
let s:true  = 1
let s:false = 0

let $PATH = "~/.pyenv/shims:".$PATH


set t_Co=256
filetype plugin on
filetype indent on

""keymap
"inoremap <c-j> <esc>
vnoremap <c-j> <esc>
cnoremap <c-p> <Up>
cnoremap <c-n> <Down>
nnoremap <ESC><ESC> :nohlsearch<CR>


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
set clipboard+=unnamedplus

" 貼り付けモードを自動で解除
autocmd InsertLeave * set nopaste


""display
set number  "行番号の表示
set title   "編集中のファイル名を表示"
set showmatch   "かっこ入力時の対応するかっこを表示
set list
set listchars=space:·
set laststatus=2
set statusline=%F

" pliugin周り
let s:searchpattern = '.development.vim'

function! s:isdirectry(pattern) "{{{
    return matchend(a:pattern, '/') == len(a:pattern)
endfunction "}}}
function! s:findRoot(pattern, dir) "{{{
    " patternがあるdirを探す
    if s:isdirectry(a:pattern)
        let s:ans = finddir(a:pattern, fnameescape(a:dir) . ";" )
    else
        let s:ans = findfile(a:pattern, fnameescape(a:dir) . ";" )
    endif
    if len(s:ans) > 0
        return fnamemodify(s:ans, ":p:h")
        break
    endif
endfunction "}}}

let s:root = s:findRoot(s:searchpattern, getcwd())

let g:deoplete#enable_at_startup = 1
"" dein {{{


let s:dein_dir = expand('~/.config/nvim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
        echo "cloned dein"
    endif
    execute "set runtimepath^=" . fnamemodify(s:dein_repo_dir, ':p')
    let g:dein#auto_recache = 1
endif

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    let g:rc_dir = expand("~/.config/nvim/")
    let s:toml = g:rc_dir . 'dein.toml'
    let s:lazy_toml = g:rc_dir . 'dein_lazy.toml'

if len(s:root) > 1
  " .development.vimがあったらそれを読み込んでrootをruntimepathに
  let s:toml_dev = s:root . "/" . s:searchpattern
  execute 'set runtimepath+=' . s:root
  call dein#load_toml(s:toml_dev, {'lazy':0})
else
    call dein#load_toml(s:toml, {'lazy': 0})
endif
    "call dein#load_toml(s:lazy_toml, {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif
" }}}
"


"" color {{{
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
"autocmd ColorScheme * highlight Normal guibg=#2d2d2d
"autocmd ColorScheme * highlight StatusLine guibg=#434343
"set background=dark
"colorscheme onedark
colorscheme despacio

function! PlugOff()
    execute "set runtimepath&"
    execute 'set runtimepath+=' . getcwd()
endfunction
command! Poff call PlugOff()
"}}}


"" gtags
map <C-h> :Gtags -f %<CR>
map <C-c> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

"" terminal
tnoremap <C-j> <C-\><C-n>


"" previm
let g:previm_open_cmd = "open"

"" vim-go
let g:go_template_autocreate = 0 " 新しいファイルを開いたときにテンプレートが入力された状態で開く(0:disable)

"" ローカル設定の読み込み
if filereadable(expand('~/.nvimlocal.vim'))
    source ~/.nvimlocal.vim
endif
