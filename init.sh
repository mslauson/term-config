!#/bin/bash

gsr
currentPath="$(pwd)"

echo "Which computer are we on today?" | lolcat
COMPUTER="$(gum choose linux mac)"
echo "Initializing for $COMPUTER"

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

		for dir in alacritty lazygit k9s kitty; do
			rm -rf ~/.config/$dir
			ln -s "$currentPath"/config/$dir ~/.config/$dir

		done
		rm ~/.config/kitty/kitty.conf
		ln "$currentPath"/config/kitty/computer/$COMPUTER/kitty.conf ~/.config/kitty/kitty.conf
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

rm -rf ~/.zshrc
ln -s "$currentPath"/zsh/$COMPUTER/.zshrc ~/.zshrc

rm -rf ~/.zshrc_common
ln -s "$currentPath"/zsh/.zshrc_common ~/.zshrc_common

for file in tmux.conf .term_alias.zsh; do
	rm -rf ~/$file
	ln -s "$currentPath"/$file ~/$file
done

if [ $COMPUTER != "mac" ]; then

	echo "Setting up linux specific configs" | lolcat
	rm -rf ~/.gitconfig
	ln -s "$currentPath"/.gitconfig ~/.gitconfig

	rm -rf ~/.zsh
	mkdir -p ~/.zsh/plugins
	ln -s /usr/share/zsh/plugins/* ~/.zsh/plugins
	ln -s "$currentPath"/zsh/plugins/* ~/.zsh/plugins
	chmod 777 ~/.zsh/plugins

	for file in .gitconfig .profile .pam_environment; do
		rm -rf ~/$file
		ln -s "$currentPath"/$file ~/$file
	done
fi

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

rm -rf ~/.zsh/themes
mkdir ~/.zsh/themes
ln -s "$currentPath"/highlighting-themes/* ~/.zsh/themes
