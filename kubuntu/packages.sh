#!/bin/bash
sagi="sudo apt-get install -y"
pipi="pip install"

# basic tools
$sagi emacs24 tmux chromium-browser

# version control systems
$sagi git git-svn mercurial bzr

# python development
$sagi python-mysqldb python-pip 
$pipi south django-registration django-piston django-haystack

# ruby development
$sagi ruby-dev ncurses-dev

# javascript dev
$sagi nodejs

# 32-bit libgl (mostly for oberon)
$sagi mesa-utils:i386
