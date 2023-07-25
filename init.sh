!#/bin/bash

gsr
currentPath="$(pwd)"

# git secret reveal -p ${GIT_SECRET_PASS}

echo "Do you want to link config directories?"
# Options for the user
options=("Yes" "No" "Quit")

# Prompt the user to select an option
PS3="Enter your choice (1-${#options[@]}): "

# Display the menu and read the user's choice
select choice in "${options[@]}"; do
	case $REPLY in
	1)
		for dir in alacritty kitty; do
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
	$((${#options[@]})))
		echo "Goodbye!"
		break
		;;
	*)
		echo "Invalid choice. Please enter a number from 1 to $((${#options[@]} - 1))."
		;;
	esac
done

for file in .gitconfig .profile .zshrc .p10k.zsh .tmux.conf .term_alias.zsh; do
	rm -rf ~/$file
	ln -s "$currentPath"/$file ~/$file
done

rm -f ~/.config/starship.toml
ln -s "$currentPath"/starship.toml ~/.config/starship.toml

pSecret="$currentPath/.profile_secret"
taSecret="$currentPath/.term_alias_secret.zsh"

if [ -f "$pSecret" ]; then
	echo "$pSecret exists. Creating symlink"
	rm -rf ~/.profile_secret
	ln -s "$currentPath"/.profile_secret ~/.profile_secret
else
	echo "Profile secret file available"
fi

if [ -f "$taSecret" ]; then
	echo "$taSecret exists. Creating symlink"
	rm -rf ~/.term_alias_secret.zsh
	ln -s "$currentPath"/.term_alias_secret.zsh ~/.term_alias_secret.zsh
else
	echo "Term alias secret file unavailable"
fi
