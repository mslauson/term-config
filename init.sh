currentPath="$(pwd)"
for file in .zshrc .tmux.conf
do
    rm -rf ~/file
    ln -s "$currentPath"/file ~/file
end
    
for dir in alacritty kitty
do
    rm -rf ~/.config/$dir
    ln -s "$currentPath"/config/$dir ~/.config/$dir
done
