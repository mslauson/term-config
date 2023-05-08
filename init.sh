currentPath="$(pwd)"
    rm -rf ~/.tmux.conf
    ln -s "$currentPath"/.tmux.conf ~/.tmux.conf

    
for dir in alacritty kitty
do
    rm -rf ~/.config/$dir
    ln -s "$currentPath"/config/$dir ~/.config/$dir
done
