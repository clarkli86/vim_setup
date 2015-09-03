#!/bin/sh

# Install desert256
mkdir -p ~/.vim/colors
wget -O ~/.vim/colors/desert256.vim https://raw.githubusercontent.com/clarkli86/desert256.vim/master/colors/desert256.vim

# Install cscope plugin
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
sudo cp vimrc.local /etc/vim/
sudo cp vimrc.local /etc/vim/gvimrc.local
rm vimrc.local
