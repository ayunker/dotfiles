#general
alias v='nvim'
alias vi='nvim'
alias vv='nvim -c ":Git"'
alias vimrc='v ~/.vimrc'
alias viminit='v ~/.config/nvim/init.vim'
alias bashrc='v ~/.bashrc'
alias vsecrets='v ~/.secrets'
alias valias='v ~/.aliases.sh'
alias valac='v ~/.alacritty.yml'
alias cls='clear'
alias reshell='source ~/.bashrc'
alias dots='cd ~/src/dotfiles'
alias tils='cd ~/src/ayunker/til'
alias vdots='v ~/src/dotfiles'
alias sublime_packages='cd "/Users/tonyyunker/Library/Application Support/Sublime Text 3/Packages"'
alias gimme_path="echo \"${PATH//:/$'\n'}\""
alias tmm="tmuxinator"
alias tma="tmux -2 a"

# better ls
[[ -s $(which eza) ]] && alias l='eza -lha' && alias ls=eza

alias zr='zeus rspec'

# git
alias gs='git status'
alias gst='git status'

# alias gl='git log --oneline -10'
# alias gll='git log --oneline -50'
alias gl='git ch -25'
alias gll='git ch -50'

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
alias rsd="git diff --name-only | rg _spec | xargs bin/rspec"

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

# FUN
alias 'wttr'='curl -4 http://wttr.in/Streeterville'
alias 'wttrwork'='curl -4 https://wttr.in/~300%20S%20Riverside%20Plaza%20chicago'
alias 'moon'='curl -4 http://wttr.in/moon'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'

# HUB
alias hpr='hub browse -- pulls'
alias prs='hub pr list -f "%pC%>(8)%i%Creset %t | %au | Assignees: %as %n"'

if [[ -s "$HOME/.aliases.local" ]] ; then source "$HOME/.aliases.local" ; fi
