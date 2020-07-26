export RUSTC_WRAPPER="sccache"
export EDITOR="nvim"
export MYVIMRC="$HOME/.config/nvim/init.vim"

PATH=$PATH:/Applications/kitty.app/Contents/MacOS/
. /usr/local/etc/profile.d/z.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
