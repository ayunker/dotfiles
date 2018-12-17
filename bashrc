# Aliases

alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias cls='clear'
alias reshell='source ~/.bashrc'
alias dots='cd ~/src/dotfiles'

# Git aliases
if [ -f ~/.git_aliases ]; then
  source ~/.git_aliases
fi

# RSpec aliases
alias rsm='rspec spec/models'
alias rsc='rspec spec/controllers'
alias rsf='rspec spec/features'
alias rsl='rspec spec/lib'
alias rsh='rspec spec/helpers'
alias rsj='rspec spec/jobs'
alias rsu='rspec --tag ~type:feature'


# MP aliases
alias mpa='cd ~/src/mp_admin'
alias mpd='cd ~/src/mp_dotcom'

# secrets
if [ -f ~/.secrets ]; then
  source ~/.secrets
fi

export CLICOLOR=1

export PG_DUMP="/Applications/Postgres.app/Contents/Versions/9.5/bin/"
PATH=$PG_DUMP:$PATH

# FUN
alias 'wttr'='curl -4 http://wttr.in/Chicago'
alias 'wttrwork'='curl -4 https://wttr.in/~300%20S%20Riverside%20Plaza%20chicago'
alias 'moon'='curl -4 http://wttr.in/moon'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
