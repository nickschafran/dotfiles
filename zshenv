#!/bin/zsh

# PATH
export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PYTHONPATH=$PYTHONPATH


# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias ll='ls -lG'
alias vlc='open -a vlc'
alias tmux="TERM=screen-256color-bce tmux"
alias zshconfig="vim ~/.dotfiles/zshrc"
alias envconfig="vim ~/.dotfiles/zshenv"

eval "$(pyenv init -)"
