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
[ ! ag ] && brew install the_silver_searcher
[ ! rg ] && brew install rg # TODO pick one searcher
[ ! ranger ] && brew install ranger

# vim plugins
[ ! "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim ] && sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

