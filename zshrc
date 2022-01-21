# disable for now since sccache messes up spirv https://github.com/gwihlidal/spirv-reflect-rs/issues/13
# export RUSTC_WRAPPER="sccache"
export EDITOR="nvim"
export MYVIMRC="$HOME/.config/nvim/init.vim"
export ZIG_SYSTEM_LINKER_HACK=1

alias vim=nvim

PATH=$PATH:~/zig
PATH=$PATH:~/odin
PATH=$PATH:/Applications/kitty.app/Contents/MacOS/
PATH=$PATH:~/dev/sokol-tools-workspace/fips-deploy/sokol-tools/osx-xcode-release/
PATH="/usr/local/opt/llvm/bin:$PATH"
PATH="$HOME/dev/lua-language-server/bin/macOS:$PATH"

. /usr/local/etc/profile.d/z.sh

for config_file (~/.zsh_lib/*.zsh); do
  source $config_file
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias luamake=/Users/wes/dev/lua-language-server/3rd/luamake/luamake

# Blur {{{
if [[ $(ps --no-header -p $PPID -o comm) =~ '^yakuake|kitty$' ]]; then
        for wid in $(xdotool search --pid $PPID); do
            xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
fi
# }}}
