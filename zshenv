#!/bin/zsh

# PATH
export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PYTHONPATH=$PYTHONPATH
export PATH="/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:$PATH"
export work=~/Documents/03_work

# Homebrew
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha.

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
alias firefox='open -a firefox'
alias tmux="TERM=screen-256color-bce tmux"
alias zshconfig="vim ~/.dotfiles/zshrc"
alias envconfig="vim ~/.dotfiles/zshenv"
alias start="vim ~/.checklist"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyclean () {
        find . -type f -name "*.py[co]" -delete
        find . -type d -name "__pycache__" -delete
}
