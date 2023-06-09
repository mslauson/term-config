export TERMINAL=xfce4-terminal
#export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_QPA_PLATFORMTHEME=qt6ct

export VAULT_ADDR=http://10.7.2.50:8200
export VAULT_TOKEN=hvs.zxVIJidRoGGoogEjW7FGTV0Z

export DB_PASSWORD_CHORE=U3bvoByUULpbwtmM3i9kshxh7dpxbKo22uAbNXcC5Ru6t5gZ9rrjUqWnnEnnNLUaB68JorYoa287MhVfK2LHkHqKi38uL5FuAFiz
export DB_USER_CHORE=choresrv
export DB_SCHEMA_CHORE=chore

export DB_PASSWORD_NDT=ihZwW4jKKM9YHj2ybNC3g2LRwWN4uUYymSjRuWHTueuFT4b9TYSD665ZmpLevrtGmQYYBz93UPbnKdbPgmtBgWire2E8UP4xkAGS
export DB_USER_NDT=nd_tasks_srv
export DB_SCHEMA_NDT=nd_tasks

export DB_HOST=10.7.2.40
export DB_NAME=slausonio
export DB_PASSWORD=$DB_PASSWORD_NDT
export DB_USER=$DB_USER_NDT
export DB_SCHEMA=$DB_SCHEMA_NDT

export GITHUB_TOKEN=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
export BUILD_TOKEN=kevGe5HyZDnivevt9-bG
export KUBE_DOCKER_USER=kube
export KUBE_DOCKER_TOKEN=DeQNYxENLt_TREvZwNvF
export MONGO_HOST=dev.qighg.mongodb.net
export MONGO_USER=mslauson
export MONGO_PWORD=zQIrTK99pVboxZeS
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
export MONGO_DEV_ROOT_PASS=6RVLWedphT

export OAUTH_ADMIN_BASE=https://admin.auth.dev.slauson.io
export OAUTH_ISSUER_BASE=https://auth.dev.slauson.io
export OAUTH_CLIENT_ID=cb971d6c-e22a-4a68-a4c7-423e68f6e276
export OAUTH_CLIENT_SECRET=HlpA-KM3g3I6_0m_QEBZ5tv9bE
export MONGO_HOST=10.7.2.32:27017
export MONGO_PWORD=M5YKGUMLmEPRbpqzp7Byn%255GMngdgLsD8M8xgbJEh3wRrquxGojdFCm97QmUQMu3ruTArQA9uJ*Wp*3E%23xjzqzomgpF3n3MnPWFA2
export MONGO_USER=Accurate3061
export IV=jd4uS#tiY2tTuaUQ
export KEY=LZkxP9bdRpz9bCfx
export API_AW_BASE=https://k8s.dev.slauson.io/api/aw/v1

export API_BASE_CHORE=https://k8s.dev.slauson.io
export API_BASE_NDT=https://ndt.k8s.dev.slauson.io
export API_BASE=$API_BASE_NDT

export LOKI_URL=https://loki.slauson.io
export ENV=local
export GIT_TEA_TOKEN=7c766a0672c363f3ce57f4d31470366bb3350903
export GOPRIVATE=gitea.slauson.io/slausonio/
export GOTESTS_TEMPLATE=testify
export JAVA_HOME_19=/usr/lib/jvm/java-19-openjdk
export JAVA_HOME_17=/usr/lib/jvm/java-17-openjdk
export JAVA_HOME=$JAVA_HOME_17
export MAVEN_HOME=/opt/maven/
export GOPATH="/home/matthewslauson/go"
export IAM_HOST=https://aw.dev.slauson.io/v1

export IAM_KEY_CHORE=6eb08968b6ecf53f7e60e655022ce5546118d5eb2b171be822c4281174cbac08b39ed36d95db7ec8e949ed26165ea1436ccc0ba619e5622215f393a5bc58886a987a6bb8da57f6845008916b25b2aab8b01a1c84d4f1198ba26dabfa65994bf779b9c6b5b54feeaf85c57bdc8bc81babe72e63fd6b89a0f6bec06e4b121ca363
export IAM_PROJECT_CHORE=sio-chore

export IAM_KEY_NDT=142732a1208a4680b5783ed67ab1f63d571f4f1f57be95e74156256d4541fb54f4ddb7ec30c156aae73b33cf6cb10993f6f6aa81dfafe86dd1be8dd58d038470eb4afc52ed2bd727637b04a72cdbb93051294cf7c4fcb72da93e70f5e3224c84cdfa080ee11e038d4ea2034902976df20022953ea3d30ff335a82d1c01f6dc5d
export IAM_PROJECT_NDT=nd_tasks

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
