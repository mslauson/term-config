echo "Do you want to link config directories?"
# Options for the user
options=("Yes" "No" "Quit")

# Prompt the user to select an option
PS3="Enter your choice (1-$(( ${#options[@]}-1 ))): "

# Display the menu and read the user's choice
select choice in "${options[@]}"; do
    case $REPLY in
        yes)
           for dir in alacritty kitty
            do
                rm -rf ~/.config/$dir
                ln -s "$currentPath"/config/$dir ~/.config/$dir
            done       
            ;;
        no)
            break
            ;;
        $(( ${#options[@]} )))
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please enter a number from 1 to $(( ${#options[@]}-1 ))."
            ;;
    esac
done

currentPath="$(pwd)"
for file in .zshrc .p10k.zsh .tmux.conf .gitconfig
do
    rm -rf ~/$file
    ln -s "$currentPath"/$file ~/$file
done
    
