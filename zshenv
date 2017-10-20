export LANG=ja_JP.UTF-8
case ${OSTYPE} in
    darwin*)
        export ZPLUG_HOME=/usr/local/opt/zplug
        source $ZPLUG_HOME/init.zsh
        PATH="$HOME/usr/bin:$PATH"
        PATH="/usr/local/Cellar/vim:$PATH"
        PATH="$PATH:/$HOME/tool/Edison/edison:"
        PATH="$PATH:/usr/local/texlive/2014/bin/x86_64-darwin/"
        export GOPATH=$HOME/develop/go
        export PATH=$PATH:$GOPATH/bin
        ;;
    linux*)
        ;;
esac
export PATH
