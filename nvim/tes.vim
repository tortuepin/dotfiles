let s:runtimepath = '/Users/suzukikohei/.config/nvim,/etc/xdg/nvim,/Users/suzukikohei/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.1.6/share/nvim/runtime,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/suzukikohei/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/suzukikohei/.config/nvim/after'


echo &runtimepath

if &runtimepath !~# '/dein.vim'
    echo "hogege"
endif

echo "set runtimepath^="
echo 'set runtimepath^='
