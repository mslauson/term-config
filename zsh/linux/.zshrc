##############################################################################
#
#                       ███████╗███████╗██╗  ██╗██████╗  ██████╗
#                       ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#                         ███╔╝ ███████╗███████║██████╔╝██║
#                        ███╔╝  ╚════██║██╔══██║██╔══██╗██║
#                    ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
#                    ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
##############################################################################




source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/fzf-tab-git/fzf-tab.zsh

source ~/.zsh/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
# znap source zshzoo/cd-ls
# znap source lukechilds/zsh-nvm
# znap source kalsowerus/zsh-bitwarden
# znap source MichaelAquilina/zsh-you-should-use
 


ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )


source ~/.profile
source ~/.term_alias.zsh


# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=1000000
unsetopt beep
bindkey -e
bindkey '^ ' autosuggest-accept

# source /usr/share/fzf/completion.zsh

 source /usr/share/fzf-tab-completion/zsh/fzf-zsh-completion.sh
bindkey '^I' fzf_completion

eval "$(starship init zsh)"

