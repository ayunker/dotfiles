# Aliases
if [ -f ~/.aliases.sh ]; then
  source ~/.aliases.sh
fi

# secrets
if [ -f ~/.secrets ]; then
  source ~/.secrets
fi

export EDITOR=nvim
export JEKYLL_EDITOR=nvim

export CLICOLOR=1

#PG PATH
export PG_PATH="/Applications/Postgres.app/Contents/Versions/15/bin/"
PATH=$PG_PATH:$PATH

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

eval "$(~/src/hr/hr/libexec/hr init -)"
