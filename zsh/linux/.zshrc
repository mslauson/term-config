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

# Check if ssh-agent is running
if ! pgrep ssh-agent > /dev/null; then
  eval $(ssh-agent)
else
    # If running, set the existing agent's socket info for the current session
    export SSH_AUTH_SOCK=$(pgrep -a -u "$USER" ssh-agent | tail -n 1 | cut -d' ' -f2)
fi



eval "$(starship init zsh)"

