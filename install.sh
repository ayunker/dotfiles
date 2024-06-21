ln -sf ~/src/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/src/dotfiles/bash_profile ~/.bash_profile
ln -sf ~/src/dotfiles/bashrc ~/.bashrc
ln -sf ~/src/dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/src/dotfiles/aliases.sh ~/.aliases.sh
ln -sf ~/src/dotfiles/ripgreprc ~/.ripgreprc
ln -sf ~/src/dotfiles/vimrc ~/.vimrc
ln -sf ~/src/dotfiles/config/nvim/init.vim ~/.config/nvim/init.vim
ln -sf ~/src/dotfiles/config/bat/config ~/.config/bat/config
ln -sf ~/src/dotfiles/wezterm.lua ~/.wezterm.lua
ln -sf ~/src/dotfiles/config/alacritty ~/.config/alacritty
# TODO: should I just symlink all of .config???

# other stuff to do here
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# then run :PlugInstall in vim

mkdir ~/bin
ln -sf ~/src/dotfiles/bin/ass ~/bin/ass
ln -sf ~/src/dotfiles/bin/tiller ~/bin/tiller
ln -sf ~/src/dotfiles/bin/scmp ~/bin/scmp
ln -sf ~/src/dotfiles/bin/nukeit ~/bin/nukeit
ln -sf ~/src/dotfiles/bin/shorter ~/bin/shorter
