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
source ~/.term_alias.zsh

bindkey -e

GPG_TTY=$(tty)
export GPG_TTY

# if [ -z "$SSH_AUTH_SOCK" ]; then
#     eval $(ssh-agent -s)
# fi


eval "$(starship init zsh)"

