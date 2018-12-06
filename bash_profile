export PATH=$PATH:~/bin

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# prompt
# PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\] λ ~ \[\033[0m\]"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\[\033[32m\][\u @ \w]\[\033[0m\]\$(parse_git_branch)\n λ ~ \[\033[0m\]"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
