#!/bin/bash
sagi="sudo apt-get install -y"
spip="sudo pip install"
sgem="sudo gem install"
snpm="sudo npm install --global"

# basic tools
$sagi emacs24 emacs24-el
$sagi tmux chromium-browser lynx-cur dos2unix

# version control systems
$sagi git git-svn mercurial bzr

# python development
$sagi python-mysqldb python-pip 
$spip south django-registration django-piston django-haystack

# pascal development
$sagi fpc

# ruby development
$sagi ruby-dev ncurses-dev
$sgem rbcurse ncurses

# javascript dev
$sagi nodejs npm
$snpm coffee-script express
sudo rm -rf /usr/local/bin/node
sudo ln -s `which nodejs` /usr/local/bin/node

# perl develompent
$sagi perl-doc

# 32-bit libgl (mostly for oberon)
$sagi mesa-utils:i386

echo 'installation complete. launching updatedb in the background'
sudo updatedb &
