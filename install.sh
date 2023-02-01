ln -sf ~/src/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/src/dotfiles/bash_profile ~/.bash_profile
ln -sf ~/src/dotfiles/bashrc ~/.bashrc
ln -sf ~/src/dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/src/dotfiles/aliases.sh ~/.aliases.sh
ln -sf ~/src/dotfiles/config/alacritty.yml ~/.alacritty.yml
ln -sf ~/src/dotfiles/ripgreprc ~/.ripgreprc
ln -sf ~/src/dotfiles/vimrc ~/.vimrc
ln -sf ~/src/dotfiles/config/nvim/init.vim ~/.config/nvim/init.vim

# other stuff to do here
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# then run :PlugInstall in vim

mkdir ~/bin
ln -sf ~/src/dotfiles/bin/ass ~/bin/ass
ln -sf ~/src/dotfiles/bin/tiller ~/bin/tiller
