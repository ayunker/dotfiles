#general
alias ..='cd ..'
alias v='nvim'
alias vi='nvim'
alias vv='nvim -c ":Neogit"'
alias vimrc='v ~/.vimrc'
alias viminit='v ~/.config/nvim/init.vim'
alias bashrc='v ~/.bashrc'
alias vsecrets='v ~/.secrets'
alias valias='v ~/.aliases.sh'
alias valac='v ~/.config/alacritty/alacritty.toml'
alias cls='clear'
alias reshell='source ~/.bashrc'
alias dots='cd ~/src/dotfiles'
alias tils='cd ~/src/ayunker/til'
alias tmm="tmuxinator"
alias tma="tmux -2 a"
alias b="bat"
alias lazy="NVIM_APPNAME=LazyVim nvim"
alias yy="yazi"

# better ls
[[ -s $(which eza) ]] && alias l='eza -lha' && alias ls=eza

# git
alias gs='git status'
alias gst='git status'

alias gl='git ch -25'
alias gll='git ch -50'

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
