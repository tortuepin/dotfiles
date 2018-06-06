export LANG=ja_JP.UTF-8
case ${OSTYPE} in
    darwin*)
        export ZPLUG_HOME=/usr/local/opt/zplug
        source $ZPLUG_HOME/init.zsh
        PATH="$HOME/usr/bin:$PATH"
        PATH="/usr/local/Cellar/vim:$PATH"
        PATH="$PATH:/$HOME/tool/Edison/edison:"
        PATH="$PATH:/usr/local/texlive/2014/bin/x86_64-darwin/"
        ;;
    linux*)
        PATH="/now28/k.suzuki/usr/local/bin/mecab/bin:$PATH"
        PATH="/now28/k.suzuki/usr/local/bin:$PATH"
        alias mecab='mecab -d /now28/k.suzuki/usr/local/bin/mecab/lib/mecab/dic/mecab-ipadic-neologd/'
        LD_LIBRARY_PATH="/now28/k.suzuki/usr/local/lib"
        ;;
esac
export PATH
