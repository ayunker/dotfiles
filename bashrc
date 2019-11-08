# Aliases
if [ -f ~/.aliases.sh ]; then
  source ~/.aliases.sh
fi 

# secrets
if [ -f ~/.secrets ]; then
  source ~/.secrets
fi

export CLICOLOR=1

export PG_DUMP="/Applications/Postgres.app/Contents/Versions/9.5/bin/"
PATH=$PG_DUMP:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

fbr() {
  local branches branch
  branches=$(git --no-pager branch) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

show_me_the_gem() {
  local gem_path=$(bundle show $1)
  subl $gem_path
}
