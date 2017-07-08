export ZSH=/Users/nickschafran/.oh-my-zsh

ZSH_THEME="nick"

ENABLE_CORRECTION="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git, zsh-autosuggestions, zsh-syntax-highlighting)

# plugins=(git colored-man colorize github \
#          jira vagrant virtualenv pip python \
#          brew osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# Add env
source ~/.dotfiles/env

fpath=(/usr/local/share/zsh-completions $fpath)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nickschafran/Downloads/google-cloud-sdk/path.zsh.inc' ]
  then source '/Users/nickschafran/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nickschafran/Downloads/google-cloud-sdk/completion.zsh.inc' ]
  then source '/Users/nickschafran/Downloads/google-cloud-sdk/completion.zsh.inc'
fi

eval "$(chef shell-init zsh)"
export PATH="/usr/local/opt/mongodb@3.2/bin:$PATH"
