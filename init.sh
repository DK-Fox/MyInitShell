#!/bin/bash

cp -f sources.list /etc/apt/
apt-get update
apt-get upgrade

apt-get install tmux
apt-get install zsh
apt-get install fcitx-googlepinyin
apt-get install libreoffice
apt-get install pandoc
apt-get install ctags
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - |sh

useradd -m dkfox
usermod -a -G sudo dkfox
chsh -s /usr/bin/zsh dkfox
chsh -s /usr/bin/zsh

cd ~
su dkfox

cp  -r init ~
cd ~/init

cp .zshrc .tmux.conf ~

cd ~/Downloads
git clone https://github.com/spf13/spf13-vim
cd spf13-vim
./bootstrap.sh

cd ~
cp -f .vimrc .vimrc.bundles ~/.spf13-vim-3/

#记得切换到root删除init，并给dkfox加密码
#下载npm，执行sudo npm -g instant-markdown-d
#下载chrome
#vim执行:PluginInstall
#firefox里about:config,把dom.allow_scripts_to_windows设置为true
#下载虚拟机
