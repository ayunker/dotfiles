# Aliases
if [ -f ~/.aliases.sh ]; then
  source ~/.aliases.sh
fi

# secrets
if [ -f ~/.secrets ]; then
  source ~/.secrets
fi

#REMOVE THIS AFTER RAILS 6 UPGRADE
# export RUBYOPT='-W:no-deprecated -W:no-experimental'

export EDITOR=nvim
export JEKYLL_EDITOR=nvim

export CLICOLOR=1

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

gb() {
  local branches branch
  branches=$(git --no-pager branch) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

show_me_the_gem() {
  bundle open $1
}

# rspec() {
#   if [ -S .zeus.sock ]; then
#     zeus rspec "$@"
#   else
#     command rspec "$@"
#   fi
# }
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
