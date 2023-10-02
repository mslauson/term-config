#!/usr/bin/fish

if test -f ~/.config/fish/profile_secret.fish
    echo "Profile secrets exist. Sourcing..."
    source ~/.config/fish/profile_secret.fish
else
    echo "Profile secrets do not exist. No file will be sourced."
end

set TERMINAL kitty
#set  QT_QPA_PLATFORMTHEME qt5ct
#set  QT_QPA_PLATFORMTHEME qt6ct

set DB_PASSWORD "$DB_PASSWORD_NDT"
set DB_USER $DB_USER_NDT
set DB_SCHEMA $DB_SCHEMA_NDT

set API_BASE $API_BASE_NDT
set ESTIMATE_BASE $API_BASE_NDT
set ENV local

set GOTESTS_TEMPLATE testify
set JAVA_HOME_19 /usr/lib/jvm/java-19-openjdk
set JAVA_HOME_17 /usr/lib/jvm/java-17-openjdk
set JAVA_HOME $JAVA_HOME_17
set MAVEN_HOME /opt/maven/
set GOPATH /home/mslauson/go
set ANDROID_HOME /home/mslauson/Android/Sdk
set ANDROID_NDK_HOME "/home/mslauson/Android/Sdk/ndk/25.2.9519653"

set IAM_KEY $IAM_KEY_NDT
set IAM_PROJECT $IAM_PROJECT_NDT

set KRATOS_HOST $KRATOS_HOST_DEV
set KRATOS_ADMIN_URL $KRATOS_ADMIN_HOST_DEV
set KRATOS_FLOWS_HOST $KRATOS_FLOWS_HOST_DEV

set REDIS_AUTH $REDIS_DEV_AUTH
set REDIS_USERNAME $REDIS_DEV_USERNAME
set REDIS_PASSWORD $REDIS_DEV_PASSWORD
set REDIS_HOST $REDIS_DEV_HOST
set REDIS_PORT $REDIS_DEV_PORT

set POP_SMTP_HOST $POP_SMTP_HOST_HOSTINGER
set POP_SMTP_PORT $POP_SMTP_PORT_HOSTINGER
set POP_SMTP_USERNAME $POP_SMTP_USERNAME_BUS
set POP_SMTP_PASSWORD $POP_SMTP_PASSWORD_BUS
set POP_FROM $POP_SMTP_USERNAME_BUS

# Catppuccin
# set  FZF_DEFAULT_OPTS " \
# --color bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
# --color fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
# --color marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# RP
set FZF_DEFAULT_OPTS "
	--color fg:#908caa,bg:#191724,hl:#ebbcba
	--color fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
	--color border:#403d52,header:#31748f,gutter:#191724
	--color spinner:#f6c177,info:#9ccfd8,separator:#403d52
	--color pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

fish_add_path /home/mslauson/Android/Sdk/emulator:/home/mslauson/.local/share/flatpak/app/com.visualstudio.code/current/active/files/bin
fish_add_path /home/mslauson/.local/share/JetBrains/Toolbox/scripts
fish_add_path /home/mslauson/installs/custom-scripts:/home/mslauson/installs/custom-scripts/computer
fish_add_path $GOPATH/bin
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path /home/mslauson/.cargo/bin
fish_add_path /home/mslauson/installs/flutter/bin
fish_add_path /opt/flutter/bin
fish_add_path /home/mslauson/.config/emacs/bin
fish_add_path /home/mslauson/.local/share/bob/nvim-bin
fish_add_path /home/mslauson/projects/config/wm-config/hypr/scripts/
