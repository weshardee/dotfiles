# disable for now since sccache messes up spirv https://github.com/gwihlidal/spirv-reflect-rs/issues/13
# export RUSTC_WRAPPER="sccache"
export EDITOR="nvim"
export MYVIMRC="$HOME/.config/nvim/init.vim"

alias vim=nvim

PATH=$PATH:/Applications/kitty.app/Contents/MacOS/
. /usr/local/etc/profile.d/z.sh

for config_file (~/.zsh_lib/*.zsh); do
  source $config_file
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
