#!/bin/zsh

# link configs
ln -sf ${PWD}/configs/kitty ~/.config/kitty
ln -sf ${PWD}/configs/nvim ~/.config/nvim
ln -sf ${PWD}/zshrc ~/.zshrc
ln -sf ${PWD}/zsh_lib ~/.zsh_lib

# make sure homebrew is installed
[ ! brew ] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install command line tools
[ ! z ] && brew install z
[ ! fzf ] && brew install fzf
[ ! nvim ] && brew install nvim
[ ! rg ] && brew install rg

# vim plugins
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
