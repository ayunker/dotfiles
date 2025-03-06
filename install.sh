ln -sf ~/src/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/src/dotfiles/bash_profile ~/.bash_profile
ln -sf ~/src/dotfiles/bashrc ~/.bashrc
ln -sf ~/src/dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/src/dotfiles/aliases ~/.aliases
ln -sf ~/src/dotfiles/ripgreprc ~/.ripgreprc
ln -sf ~/src/dotfiles/vimrc ~/.vimrc
ln -sf ~/src/dotfiles/config/nvim/init.vim ~/.config/nvim/init.vim
ln -sf ~/src/dotfiles/config/bat/config ~/.config/bat/config
ln -sf ~/src/dotfiles/wezterm.lua ~/.wezterm.lua
ln -sf ~/src/dotfiles/config/alacritty ~/.config/alacritty
ln -sf ~/src/dotfiles/config/helix ~/.config/helix
# TODO: should I just symlink all of .config???

mkdir ~/bin
ln -sf ~/src/dotfiles/bin/ass ~/bin/ass
ln -sf ~/src/dotfiles/bin/tiller ~/bin/tiller
ln -sf ~/src/dotfiles/bin/scmp ~/bin/scmp
ln -sf ~/src/dotfiles/bin/nukeit ~/bin/nukeit
ln -sf ~/src/dotfiles/bin/shorter ~/bin/shorter
ln -sf ~/src/dotfiles/bin/bookit ~/bin/bookit
