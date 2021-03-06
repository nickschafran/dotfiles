source /usr/local/bin/virtualenvwrapper.sh

# Enable tab completion
source ~/.git-completion.bash
source ~/.profile

# aliases 
alias ll='ls -lG'
alias vlc='open -a vlc'
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias tmux="TERM=screen-256color-bce tmux"
alias lsfiles='for f in *; do [[ -f "$f" ]] && ls -- "$f"; done'

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

# Activate bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# colors!
namecol="\[\033[0;35m\]"
repocol="\[\033[0;32m\]"
dircol="\[\033[0;34m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$namecol\u$repocol\$(__git_ps1)$dircol \W $ $reset"

# iterm
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Environment variables
export PATH="/usr/local/mysql/bin:$PATH"
export WORKON_HOME=$HOME/.virtualenvs
