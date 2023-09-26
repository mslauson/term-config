##############################################################################
#
#                       ███████╗███████╗██╗  ██╗██████╗  ██████╗
#                       ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#                         ███╔╝ ███████╗███████║██████╔╝██║
#                        ███╔╝  ╚════██║██╔══██║██╔══██╗██║
#                    ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
#                    ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
##############################################################################

source ~/.zshrc_common
source ~/.profile
source ~/.term_alias

bindkey -e



eval "$(starship init zsh)"

PROG=tea _CLI_ZSH_AUTOCOMPLETE_HACK=1 source "/home/mslauson/.config/tea/autocomplete.zsh"
