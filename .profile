if test -f ~/.profile_secret; then
	echo "Profile secrets exist. Sourcing..."
source ~/.profile_secret;
else echo "Profile secrets do not exist. No file will be sourced.";
fi

export TERMINAL=kitty
#export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_QPA_PLATFORMTHEME=qt6ct

export DB_PASSWORD=$DB_PASSWORD_NDT
export DB_USER=$DB_USER_NDT
export DB_SCHEMA=$DB_SCHEMA_NDT

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export API_BASE=$API_BASE_NDT
export ENV=local

export GOTESTS_TEMPLATE=testify
export JAVA_HOME_19=/usr/lib/jvm/java-19-openjdk
export JAVA_HOME_17=/usr/lib/jvm/java-17-openjdk
export JAVA_HOME=$JAVA_HOME_17
export MAVEN_HOME=/opt/maven/
export GOPATH="/home/mslauson/go"


export IAM_KEY=$IAM_KEY_NDT
export IAM_PROJECT=$IAM_PROJECT_NDT

export REDIS_AUTH=$REDIS_AUTH_INFRA

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

export PATH=$PATH:/home/mslauson/Android/Sdk/emulator:/home/mslauson/.local/share/flatpak/app/com.visualstudio.code/current/active/files/bin
export PATH=$PATH:/home/mslauson/.local/share/JetBrains/Toolbox/scripts
export PATH=$PATH:/home/mslauson/installs/custom-scripts:/home/mslauson/installs/custom-scripts/computer
export PATH=$PATH:/home/mslauson/.config/emacs/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/mslauson/.cargo/bin
export PATH=$PATH:/home/mslauson/installs/flutter/bin
export PATH=$PATH:/home/mslauson/.local/share/bob/nvim-bin
export PATH=$PATH:/home/mslauson/projects/config/wm-config/hypr/scripts/


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi
