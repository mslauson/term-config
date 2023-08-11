##############################################################################
#
#                       ███████╗███████╗██╗  ██╗██████╗  ██████╗
#                       ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#                         ███╔╝ ███████╗███████║██████╔╝██║
#                        ███╔╝  ╚════██║██╔══██║██╔══██╗██║
#                    ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
#                    ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
##############################################################################




source ~/Repos/znap/znap.zsh  # Start Znap
source ~/.zsh/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh

znap prompt sindresorhus/pure
znap source zsh-users/zsh-syntax-highlighting
znap source marlonrichert/zsh-edit
znap source nocttuam/autodotenv
znap source zshzoo/cd-ls
znap source lukechilds/zsh-nvm
znap source kalsowerus/zsh-bitwarden
znap source zdharma-continuum/fast-syntax-highlighting
znap source Aloxaf/fzf-tab
znap source zdharma-continuum/history-search-multi-word
znap source zsh-users/zsh-autosuggestions
znap source MichaelAquilina/zsh-you-should-use
 
znap source marlonrichert/zcolors
znap eval zcolors "zcolors ${(q)LS_COLORS}"

znap source ohmyzsh/ohmyzsh lib/{git,theme-and-appearance}
znap source Junker/zsh-archlinux

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )


source ~/.term_alias.zsh


# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=1000000
unsetopt beep
bindkey -e

znal eval "$(starship init zsh)"

