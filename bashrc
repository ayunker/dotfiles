# Aliases
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# secrets
if [ -f ~/.secrets ]; then
  source ~/.secrets
fi

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\[\e[32m\]\w\[\e[m\]\$(parse_git_branch) % "

export EDITOR=nvim
export JEKYLL_EDITOR=nvim

export BASH_SILENCE_DEPRECATION_WARNING=1
export SAM_CLI_TELEMETRY=0

export CLICOLOR=1

export PATH=$PATH:~/bin
export PATH="/opt/homebrew/bin:$PATH"

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

eval "$(fzf --bash)"
eval "$(~/src/hr/hr/libexec/hr init -)"

eval "$(/opt/homebrew/bin/mise activate bash)"

# opam configuration
test -r /Users/bear/.opam/opam-init/init.sh && . /Users/bear/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Added by OrbStack: command-line tools and integration
# Comment this line if you don't want it to be added again.
source ~/.orbstack/shell/init.bash 2>/dev/null || :

# . "/opt/homebrew/opt/asdf/libexec/asdf.sh"
