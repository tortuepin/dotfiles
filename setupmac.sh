## brew, gitのインストール, dotfileのcloneが済んでいること

# zsh
brew install zsh

# nvim
brew install neovim

# firefox
brew cask install firefox

# iterm
brew cask install iterm2

# coreutils
brew install coreutils

# dropbox
# kamelop119@gmail.com
brew install dropbox

# alfred
# change toggle key
brew cask install alfred

# peco
brew install peco

# google日本語入力
# preference > keybord > input source > +
brew cask install google-japanese-ime

# pyenv
brew install pyenv
## anaconda
pyenv install anaconda3-5.1.0
pyenv global anaconda3-5.1.0

source ~/.zshrc

# vim checkHealth
pip install neovim

# nodebrew
curl -L git.io/nodebrew | perl - setup
echo "add PATH"
echo "export PATH=$HOME/.nodebrew/current/bin:$PATH"
echo "tabun zshrc ni sudeni kakareteru"

# node
nodebrew install v8.9.4

# slack
brew cask install slack
echo "nowlab"
echo "togetter"

#php
brew install php@7.1
echo "add installed php in path"



# manual
# docker
echo "install docker on manual"
echo "see this url"
echo "https://docs.docker.com/docker-for-mac/install/"

# bettersnaptool
echo "install bettersnaptool"
echo "search in appstore"

# bettertouchtool
echo "DL in this url"
echo "https://folivora.ai/"
echo "and import license at Dropbox/licence.bettertouchtool"

# xcode
echo "install xcode on manual"
echo "search in appstore"

# todoist
echo "install todoist on manual"
echo "search in appstore"

# line
echo "install line on manual"
echo "search in appstore"
