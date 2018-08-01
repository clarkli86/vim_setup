#!/bin/sh

# Install desert256
mkdir -p ~/.vim/colors
wget -O ~/.vim/colors/desert256.vim https://raw.githubusercontent.com/clarkli86/desert256.vim/master/colors/desert256.vim

# Install cscope plugin
sudo apt install cscope
mkdir -p ~/.vim/plugin
wget -O ~/.vim/plugin/cscope_maps.vim http://cscope.sourceforge.net/cscope_maps.vim

# Install C++11 syntax
mkdir -p ~/.vim/syntax
wget -O ~/.vim/syntax/cpp11_cbase.vim https://raw.githubusercontent.com/vim-scripts/Cpp11-Syntax-Support/master/syntax/cpp11_cbase.vim
wget -O ~/.vim/syntax/cpp11.vim https://raw.githubusercontent.com/vim-scripts/Cpp11-Syntax-Support/master/syntax/cpp11.vim

# Install vundle
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Get vimrc.local
wget https://raw.githubusercontent.com/clarkli86/vimrc/master/vimrc.local
cp vimrc.local ~/.vimrc

# Configure git
git config --global core.editor vim
git config --global user.name "Clark Li"
git config --global user.email "clark.li86@gmail.com"

# Install tmux
sudo apt-get install tmux

# Install zsh
sudo apt-get install zsh

# Install on-my-zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

# Change on-my-zsh theme to random
# sed 's/ZSH_THEME=.*/ZSH_THEME=random/g' ~/.zshrc > ~/.zshrc
echo 'if [ "$TMUX" = "" ]; then tmux; fi\n' >> ~/.zshrc
echo 'command_not_found_handler() {/usr/lib/command-not-found "$1"}' >> ~/.zshrc
