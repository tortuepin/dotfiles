if [ -e ~/.zshlocalenv ]; then
    source ~/.zshlocalenv
fi
export LANG=ja_JP.UTF-8
case ${OSTYPE} in
    darwin*)
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


export REQ_DIR=${REQ_DIR:-~/hikikatari}
