export PATH=$PATH:~/bin

export BASH_SILENCE_DEPRECATION_WARNING=1
export SAM_CLI_TELEMETRY=0

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# prompt
# PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\] λ ~ \[\033[0m\]"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# PS1="\[\e[32m\]\w\[\[\e[m\]\$(parse_git_branch) % "

# I think this is a simplified version of above. and doesn't break in tmux
# PS1="\e[0;32m\w\e[0m\$(parse_git_branch) % "
PS1="\[\e[32m\]\w\[\e[m\]\$(parse_git_branch) % "

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH="$HOME/.pyenv/shims:${PATH}"
export PYENV_SHELL=bash
command pyenv rehash 2>/dev/null
pyenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}
export PATH="/opt/homebrew/bin:$PATH"

# opam configuration
test -r /Users/bear/.opam/opam-init/init.sh && . /Users/bear/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Added by OrbStack: command-line tools and integration
# Comment this line if you don't want it to be added again.
source ~/.orbstack/shell/init.bash 2>/dev/null || :
