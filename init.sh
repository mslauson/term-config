currentPath="$(pwd)"
for file in .zshrc .p10k.zsh .tmux.conf
do
    rm -rf ~/$file
    ln -s "$currentPath"/$file ~/$file
done
    
for dir in alacritty kitty
do
    rm -rf ~/.config/$dir
    ln -s "$currentPath"/config/$dir ~/.config/$dir
done
