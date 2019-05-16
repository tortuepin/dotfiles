if exists('b:did_ftplugin_tex')
    finish
endif
let b:did_ftplugin_tex = 1

setlocal expandtab "タブ入力を複数の空白入力に置き換える
setlocal tabstop=2 "画面上でタブ文字が占める幅
setlocal shiftwidth=2 "自動インデントでずれる幅
setlocal softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
setlocal autoindent "改行時に前の行のインデントを継続する
setlocal smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する


"autocmd
function! s:del_dust()
    " 保存時に行末の空白を除去する
    %s/\(\s\|　\)\+$//ge
    " 保存時にtabを2スペースに変換する
    %s/\t/  /ge
endfunction

function! s:sub_punctuation()
    " 句読点を論文仕様に
    %s/、/，/ge
    %s/。/．/ge
endfunction
function! s:on_write()
    let cursor = getpos(".")

    call s:del_dust()
    call s:sub_punctuation()

    call setpos(".", cursor)
    unlet cursor
endfunction

augroup tex_auto
  autocmd!
  autocmd BufWritePre *.tex call s:on_write()
augroup end
