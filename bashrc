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

export EDITOR=vim

export CLICOLOR=1

export PG_DUMP="/Applications/Postgres.app/Contents/Versions/13/bin/"
PATH=$PG_DUMP:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export RIPGREP_CONFIG_PATH=/Users/tonyyunker/.ripgreprc

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
[ -f "/Users/tonyyunker/.ghcup/env" ] && source "/Users/tonyyunker/.ghcup/env" # ghcup-env
