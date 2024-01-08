source ~/.zsh/plugins_common.zsh

[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

source ~/.zsh/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh

# completions
if [ -d $HOME/.zsh/comp ]; then
    export FPATH="$HOME/.zsh/comp:$FPATH"
fi
