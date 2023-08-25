if test -f ~/.profile_secret; then
	echo "Profile secrets exist. Sourcing..."
	source ~/.profile_secret
else
	echo "Profile secrets do not exist. No file will be sourced."
fi

export TERMINAL=kitty
#export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_QPA_PLATFORMTHEME=qt6ct

export DB_PASSWORD=$DB_PASSWORD_NDT
export DB_USER=$DB_USER_NDT
export DB_SCHEMA=$DB_SCHEMA_NDT

export API_BASE=$API_BASE_NDT
export ESTIMATE_BASE=$API_BASE_NDT
export ENV=local

export GOTESTS_TEMPLATE=testify
export JAVA_HOME_19=/usr/lib/jvm/java-19-openjdk
export JAVA_HOME_17=/usr/lib/jvm/java-17-openjdk
export JAVA_HOME=$JAVA_HOME_17
export MAVEN_HOME=/opt/maven/
export GOPATH="/home/mslauson/go"
export ANDROID_HOME="/home/mslauson/Android/Sdk"
export ANDROID_NDK_HOME="/home/mslauson/Android/Sdk/ndk/25.2.9519653"

export IAM_KEY=$IAM_KEY_NDT
export IAM_PROJECT=$IAM_PROJECT_NDT

export KRATOS_HOST=$KRATOS_HOST_DEV
export KRATOS_ADMIN_URL=$KRATOS_ADMIN_HOST_DEV
export KRATOS_FLOWS_HOST=$KRATOS_FLOWS_HOST_DEV

export REDIS_AUTH=$REDIS_DEV_AUTH
export REDIS_USERNAME=$REDIS_DEV_USERNAME
export REDIS_PASSWORD=$REDIS_DEV_PASSWORD
export REDIS_HOST=$REDIS_DEV_HOST
export REDIS_PORT=$REDIS_DEV_PORT

export POP_SMTP_HOST=$POP_SMTP_HOST_HOSTINGER
export POP_SMTP_PORT=$POP_SMTP_PORT_HOSTINGER
export POP_SMTP_USERNAME=$POP_SMTP_USERNAME_BUS
export POP_SMTP_PASSWORD=$POP_SMTP_PASSWORD_BUS
export POP_FROM=$POP_SMTP_USERNAME_BUS

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

export PATH=$PATH:/home/mslauson/Android/Sdk/emulator:/home/mslauson/.local/share/flatpak/app/com.visualstudio.code/current/active/files/bin
export PATH=$PATH:/home/mslauson/.local/share/JetBrains/Toolbox/scripts
export PATH=$PATH:/home/mslauson/installs/custom-scripts:/home/mslauson/installs/custom-scripts/computer
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/home/mslauson/.cargo/bin
export PATH=$PATH:/home/mslauson/installs/flutter/bin
export PATH=$PATH:/opt/flutter/bin
export PATH=$PATH:/home/mslauson/.config/emacs/bin
export PATH=$PATH:/home/mslauson/.local/share/bob/nvim-bin
export PATH=$PATH:/home/mslauson/projects/config/wm-config/hypr/scripts/

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi
