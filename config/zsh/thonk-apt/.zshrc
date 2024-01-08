##############################################################################
#
#                       ███████╗███████╗██╗  ██╗██████╗  ██████╗
#                       ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#                         ███╔╝ ███████╗███████║██████╔╝██║
#                        ███╔╝  ╚════██║██╔══██║██╔══██╗██║
#                    ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
#                    ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
##############################################################################

source ~/.zsh/zshrc_common.zsh
source ~/.zsh/plugins/linux.zsh
source ~/.zsh/keybinds_common.zsh
source ~/.profile
source ~/.term_alias

bindkey -e

plug "goarano/zsh-fzf-packagemanager"

eval "$(starship init zsh)"

PROG=tea _CLI_ZSH_AUTOCOMPLETE_HACK=1 source "/home/mslauson/.config/tea/autocomplete.zsh"
