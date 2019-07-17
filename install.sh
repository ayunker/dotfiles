ln -sf ~/src/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/src/dotfiles/bash_profile ~/.bash_profile
ln -sf ~/src/dotfiles/bashrc ~/.bashrc
ln -sf ~/src/dotfiles/tmux.conf ~/tmux.conf
ln -sf ~/src/dotfiles/aliases.sh ~/.aliases.sh


# other stuff to do here
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sf ~/src/dotfiles/vimrc ~/.vimrc

# then run :PlugInstall in vim

mkdir ~/bin
ln -sf ~/src/dotfiles/bin/ass ~/bin/ass
