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
# znap source marlonrichert/zsh-autocomplete
# znap source zsh-users/zsh-syntax-highlighting
# znap source zsh-users/zsh-autosuggestions
 
znap source marlonrichert/zcolors
znap eval zcolors "zcolors ${(q)LS_COLORS}"

znap source ohmyzsh/ohmyzsh lib/{git,theme-and-appearance}
znap source Junker/zsh-archlinux

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting
#
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# plugins=(git node vscode dotenv zsh-autosuggestions zsh-syntax-highlighting)

source ~/.profile
source ~/.term_alias.zsh

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#cba6f7,bold"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.



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
eval "$(starship init zsh)"

