##### キーバインド
bindkey -v
bindkey "^j" vi-cmd-mode

##### プロンプト設定
VIMODE=''
#function zle-keymap-select zle-line-init { # 現在のモードを表示させる
#    case $KEYMAP in
#        vicmd)
#        VIMODE="NORMAL"
#        ;;
#        main|viins)
#        VIMODE="INSERT"
#        ;;
#    esac
#    RPROMPT=" -- ${VIMODE} -- "
#    zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select
SPROMPT="%r is correct? [n,y,a,e]: "


##### コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups # 重複除去
setopt hist_ignore_space # スペースで始まるコマンドは履歴に含めない
setopt share_history # 履歴を共有する

# コマンド履歴検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

##### 自動補完
autoload -U compinit; compinit
setopt auto_cd
alias ...='cd ../..'
alias ....='cd ../../..'
setopt auto_pushd
setopt pushd_ignore_dups

setopt extended_glob
setopt correct
zstyle ':completion:*:default' menu select=1

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

case ${OSTYPE} in
    darwin*)
        alias ls='gls --color=auto'
        ;;
    linux*)
        ;;
esac
alias vim='nvim'


# zplug
if [ ! -e "${ZPLUG_HOME:-${HOME}/.zplug}/init.zsh" ]; then
#TODO this process should not do in here
    printf "Install zplug? [y/N]: "
    if read -q; then
        echo "Installing zplug"
        curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
    fi
fi
if [ -e "${ZPLUG_HOME:-${HOME}/.zplug}/init.zsh" ]; then
    source ${ZPLUG_HOME:-${HOME}/.zplug}/init.zsh

    zplug 'zplug/zplug', hook-build:'zplug --self-manage'

## theme
    zplug "mafredri/zsh-async", from:github
    zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme


    if ! zplug check --verbose; then
        printf "Install plugins? [y/N]: "
        if read -q; then
            echo; zplug install
        fi
    fi
    zplug load --verbose
fi

# zshfiles (自作関数とか)
DEV_DIR=~/develop
source ~/.zshfiles/init.zsh

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

## pyenv
#eval "$(pyenv init -)"


## anyenv

if type "anyenv" > /dev/null 2>&1; then
    echo "read anyenv"
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
fi


if [ -e ~/.zshlocalrc ]; then
    source ~/.zshlocalrc
fi

