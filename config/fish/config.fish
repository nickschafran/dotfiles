# pyenv
status --is-interactive; and . (pyenv init -|psub)

# Get virtualenv to work
eval (python -m virtualfish)

set -x EDITOR vim
set work ~/Documents/03_work

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

# # colors!
# set normal (set_color normal)
# set magenta (set_color magenta)
# set yellow (set_color yellow)
# set green (set_color green)
# set red (set_color red)
# set gray (set_color -o black)

# # Fish git prompt
# set __fish_git_prompt_showdirtystate 'yes'
# set __fish_git_prompt_showstashstate 'yes'
# set __fish_git_prompt_showuntrackedfiles 'yes'
# set __fish_git_prompt_showupstream 'yes'
# set __fish_git_prompt_color_branch yellow
# set __fish_git_prompt_color_upstream_ahead green
# set __fish_git_prompt_color_upstream_behind red

# function fish_prompt
#   set last_status $status
#   set_color $fish_color_cwd
#   printf '%s' (prompt_pwd)
#   set_color normal
#   if set -q VIRTUAL_ENV
#     echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
#   end
#   printf '%s ' (__fish_git_prompt)
#   set_color blue
#   printf ' '
#   set_color normal
# end
