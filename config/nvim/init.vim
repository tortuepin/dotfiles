" vim:set foldmethod=marker:

source ~/.config/nvim/sources/dein.vim
source ~/.config/nvim/sources/settings.vim
source ~/.config/nvim/sources/color.vim

"" ローカル設定の読み込み
if filereadable(expand('~/.nvimlocal.vim'))
    source ~/.nvimlocal.vim
endif
