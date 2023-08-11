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

znap source marlonrichert/zsh-edit
# znap source marlonrichert/zsh-hist
# znap source marlonrichert/zsh-autocomplete
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

znap source ohmyzsh/ohmyzsh lib/{git,theme-and-appearance,fzf}
znap source Junker/zsh-archlinux

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )

source ~/.profile
source ~/.term_alias.zsh

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#cba6f7,bold"

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=10000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

#autoload -Uz compinit
#compinit
# End of lines added by compinstall
#
 #   source /usr/share/fzf-tab-completion/zsh/fzf-zsh-completion.sh
	# bindkey '^I' fzf_completion
	#
 # source /usr/share/zsh/plugins/emoji-cli/emoji-cli.zsh
 # 
 # source /usr/share/zsh/plugins/emoji-cli/emoji-cli.zsh
# eval "$(hstdb init)"

source /usr/share/fzf/completion.zsh
eval "$(starship init zsh)"

