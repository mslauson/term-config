##############################################################################
#
#                       ███████╗███████╗██╗  ██╗██████╗  ██████╗
#                       ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#                         ███╔╝ ███████╗███████║██████╔╝██║
#                        ███╔╝  ╚════██║██╔══██║██╔══██╗██║
#                    ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
#                    ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
##############################################################################


source ~/.zplug/init.zsh

# PLUGINS
zplug romkatv/powerlevel10k, as:theme, depth:1
zplug "plugins/git",   from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "~/.zsh", from:local

# Group dependencies
# Load "emoji-cli" if "jq" is installed in this example
zplug "stedolan/jq", \
    from:gh-r, \
    as:command, \
    rename-to:jq
zplug "b4b4r07/emoji-cli", \
    on:"stedolan/jq"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi





# plugins=(git node vscode dotenv zsh-autosuggestions zsh-syntax-highlighting)

source ~/.profile

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# bun completions
[ -s "/home/matthewslauson/.bun/_bun" ] && source "/home/matthewslauson/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/emacs.d/bin:$PATH"
export PATH="$HOME/.config/emacs/bin:$PATH"

alias ls="exa"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# # Install plugins if there are plugins that have not been installed
# if ! zplug check --verbose; then
#     printf "Install? [y/N]: "
#     if read -q; then
#         echo; zplug install
#     fi
# fi
#
# Then, source plugins and add commands to $PATH
zplug load --verbose


# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=10000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matthewslauson/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
