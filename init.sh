currentPath="$(pwd)"

#
# file="$currentPath/.profile"
# if [ -f "$file" ]; then
#     echo " exists."
# else
#     echo "File does not exist."
# fi

# git secret reveal -p ${GIT_SECRET_PASS}
gsr

echo "Do you want to link config directories?"
# Options for the user
options=("Yes" "No" "Quit")

# Prompt the user to select an option
PS3="Enter your choice (1-${#options[@]}): "

# Display the menu and read the user's choice
select choice in "${options[@]}"; do
    case $REPLY in
        1)
           for dir in alacritty kitty
            do
                rm -rf ~/.config/$dir
                ln -s "$currentPath"/config/$dir ~/.config/$dir
            done       
	    break
            ;;
        2)
            break
            ;;
        3)
            echo "Goodbye!"
            exit 0
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

for file in .gitconfig .profile .zshrc .p10k.zsh .tmux.conf .term_alias.zsh
do
    rm -rf ~/$file
    ln -s "$currentPath"/$file ~/$file
done
    
