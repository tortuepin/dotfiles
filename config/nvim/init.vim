" vim:set foldmethod=marker:

source ~/.config/nvim/sources/dein.vim
source ~/.config/nvim/sources/settings.vim
source ~/.config/nvim/sources/keymap.vim
source ~/.config/nvim/sources/color.vim
source ~/.config/nvim/sources/ddc.vim
source ~/.config/nvim/sources/ddu.vim
"source ~/.config/nvim/sources/deoplete.vim

"" ローカル設定の読み込み
if filereadable(expand('~/.nvimlocal.vim'))
    source ~/.nvimlocal.vim
endif
