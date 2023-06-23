if test -f ~/.profile_secret; then
	echo "Profile secrets exist. Sourcing..."
source ~/.profile_secret;
else echo "Profile secrets do not exist. No file will be sourced.";
fi

export TERMINAL=xfce4-terminal
#export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_QPA_PLATFORMTHEME=qt6ct

export VAULT_ADDR=http://10.7.2.50:8200
export VAULT_TOKEN=hvs.zxVIJidRoGGoogEjW7FGTV0Z

export DB_USER_CHORE=choresrv
export DB_SCHEMA_CHORE=chore

export DB_USER_NDT=nd_tasks_srv
export DB_SCHEMA_NDT=nd_tasks

export DB_USER_NDT=blog_srv
export DB_SCHEMA_BLOG=blog

export DB_HOST=10.7.2.40
export DB_NAME=slausonio
export DB_PASSWORD=$DB_PASSWORD_NDT
export DB_USER=$DB_USER_NDT
export DB_SCHEMA=$DB_SCHEMA_NDT

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export API_AW_BASE=https://k8s.dev.slauson.io/api/aw/v1

export API_BASE_CHORE=http://k8s.dev.slauson.io
export API_BASE_NDT=http://ndt.k8s.dev.slauson.io
export API_BASE_BLOG=http://blog.k8s.dev.slauson.io
export API_BASE=$API_BASE_NDT

export LOKI_URL=https://loki.slauson.io
export ENV=local
export GOPRIVATE=gitea.slauson.io/slausonio/
export GOTESTS_TEMPLATE=testify
export JAVA_HOME_19=/usr/lib/jvm/java-19-openjdk
export JAVA_HOME_17=/usr/lib/jvm/java-17-openjdk
export JAVA_HOME=$JAVA_HOME_17
export MAVEN_HOME=/opt/maven/
export GOPATH="/home/mslauson/go"
export IAM_HOST=https://aw.dev.slauson.io/v1

export IAM_PROJECT_CHORE=sio-chore

export IAM_PROJECT_NDT=nd_tasks

export IAM_PROJECT_NDT=blog

export IAM_KEY=$IAM_KEY_NDT
export IAM_PROJECT=$IAM_PROJECT_NDT

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

export PATH=$PATH:/home/mslauson/Android/Sdk/emulator:/home/mslauson/.local/share/flatpak/app/com.visualstudio.code/current/active/files/bin
export PATH=$PATH:/home/mslauson/installs/custom-scripts:/home/mslauson/installs/custom-scripts/computer
export PATH=$PATH:/home/mslauson/.config/emacs/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/mslauson/.cargo/bin
export PATH=$PATH:/home/mslauson/installs/flutter/bin
export PATH=$PATH:/home/mslauson/projects/config/wm-config/hypr/scripts/


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi
