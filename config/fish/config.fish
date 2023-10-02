source ~/.config/fish/term_alias.fish
source ~/.config/fish/profile.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -d $HOME/.local/bin
    set PATH $HOME/.local/bin $PATH
end


starship init fish | source
