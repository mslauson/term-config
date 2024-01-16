#!/usr/bin/zsh

# Bindings for Ctrl + Left and Ctrl + Right
# bindkey '\e[[1;5D' backward-word  # Ctrl + Left
# bindkey '\e[[1;5C' forward-word  # Ctrl + Right

bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
# Bindings for Home and End
bindkey '\e[1;9D' beginning-of-line  # Home
bindkey '\e[1;9C' end-of-line  # End

#Delete Key
bindkey '\e[3~' delete-char
