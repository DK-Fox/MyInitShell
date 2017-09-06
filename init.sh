#!/bin/bash
#install  zsh  oh-my-zsh
apt-get install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - |sh
#~/.zshrc theme "ys"  ~/.bashrc zsh
#install  spf13
mkdir ~/Downloads/spf13
cd ~/Downloads/spf13
git clone https://github.com/spf13/spf13-vim
cd spf13-vim
./bootstrap.sh
#install  tmux
apt-get install tmux
