#general
 alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias cls='clear'
alias reshell='source ~/.bashrc'
alias dots='cd ~/src/dotfiles'
alias vdots='vim ~/src/dotfiles'
alias ll="ls -al"

# git
alias gs='git status'

alias gl='git log --oneline -10'
alias gll='git log --oneline -50'

# rails
alias rs='rails server'
alias rc='rails console'

# RSpec
alias rsm='rspec spec/models'
alias rsc='rspec spec/controllers'
alias rsf='rspec spec/features'
alias rsl='rspec spec/lib'
alias rsh='rspec spec/helpers'
alias rsj='rspec spec/jobs'
alias rsu='rspec --tag ~type:feature'
alias rsup="rake parallel:spec['spec\/(?!features)']"
alias rsfp="rake parallel:spec['spec/features']"

# MP aliases
alias mpa='cd ~/src/mp_admin'
alias mpd='cd ~/src/mp_dotcom'
alias mpl='cd ~/src/mp_lambdas'

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

# FUN
alias 'wttr'='curl -4 http://wttr.in/Chicago'
alias 'wttrwork'='curl -4 https://wttr.in/~300%20S%20Riverside%20Plaza%20chicago'
alias 'moon'='curl -4 http://wttr.in/moon'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'
