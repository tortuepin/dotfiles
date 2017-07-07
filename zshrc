##### キーバインド
bindkey -v
bindkey "^j" vi-cmd-mode

##### プロンプト設定
VIMODE=''
function zle-keymap-select zle-line-init { # 現在のモードを表示させる
    case $KEYMAP in
        vicmd)
        VIMODE="NORMAL"
        ;;
        main|viins)
        VIMODE="INSERT"
        ;;
    esac
    RPROMPT=" -- ${VIMODE} -- [%~]"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
PROMPT="%m:%n%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "
RPROMPT="[%~]"


##### コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups # 重複除去
setopt hist_ignore_space # スペースで始まるコマンドは履歴に含めない
setopt share_history # 履歴を共有する


##### 自動補完
autoload -U compinit; compinit
setopt auto_cd
alias ...='cd ../..'
alias ....='cd ../../..'
setopt auto_pushd
setopt pushd_ignore_dups

setopt extended_glob

zstyle ':completion:*:default' menu select=1

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

case ${OSTYPE} in
    darwin*)
        alias ls='gls --color=auto'
        alias vim='nvim'
        ;;
    linux*)
        ;;
esac



zplug load
