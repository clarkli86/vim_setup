#!/bin/sh

# Install desert256
mkdir -p ~/.vim/colors
wget -O ~/.vim/colors/desert256.vim https://raw.githubusercontent.com/clarkli86/desert256.vim/master/colors/desert256.vim

# Install cscope plugin
mkdir -p ~/.vim/plugin
wget -O ~/.vim/plugin/cscope_maps.vim http://cscope.sourceforge.net/cscope_maps.vim

# Install vundle
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Get vimrc.local
wget https://raw.githubusercontent.com/clarkli86/vimrc/master/vimrc.local
sudo cp vimrc.local /etc/vim/
sudo cp vimrc.local /etc/vim/gvimrc.local
rm vimrc.local

# Configure git
git config --global core.editor vim
git config --global user.name "Clark Li"
git config --global user.email "clark.li@minelab.com.au"

# Install tmux
sudo apt-get install tmux

# Install on-my-zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

# Change on-my-zsh theme to random
sed 's/ZSH_THEME=.*/ZSH_THEME=random/g' ~/.zshrc > ~/.zshrc
