source ~/.config/fish/term_alias.fish
source ~/.config/fish/profile.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set PATH so it includes user's private bin if it exists
if test -d $HOME/.local/bin
    set PATH $HOME/.local/bin $PATH
end

function fcow
    set -l cow_command (shuf -n 1 -e cowsay cowthink)
    set -l cow_eye (shuf -n 1 -e b d g p s t w y)
    set -l cow_files (cowsay -l | string split " ")
    set -l cow_file (shuf -n 1 -e $cow_files[2..-1])

    fortune -a | fmt -80 -s | $cow_command -$cow_eye -f $cow_file -n | lolcat
end

starship init fish | source
