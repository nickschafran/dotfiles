# pyenv
# status --is-interactive; and . (pyenv init-|psub)
pyenv init - | source

set -x EDITOR vim

# Homebrew
set HOMEBREW_NO_ANALYTICS 1
set HOMEBREW_NO_INSECURE_REDIRECT 1
set HOMEBREW_CASK_OPTS --require-sha.

# mkdir and cd
function mkcd
  mkdir -p $argv
  and cd $argv
end

function pyclean
  find . -type f -name "*.py[co]" -delete
  find . -type d -name "__pycache__" -delete
end

. ~/.config/fish/aliases.fish
set PATH /Users/nickschafran/.local/bin $PATH
