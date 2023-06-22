
if test -f ~/.term_alias_secret.zsh; then
	echo "Term alias secrets exist. Sourcing..."
source ~/.term_alias_secret.zsh;
else echo "Term alias secrets do not exist. No file will be sourced.";
fi

alias ls="exa"
alias p6pro="emulator -avd Pixel_6_Pro_API_33"
alias p6="emulator -avd Pixel_6_API_33"
alias lb="lerna bootstrap"
alias lp="lerna publish"
alias gam="git commit -am"
alias gaa="git add ."

alias dlv="delv"

alias pApi='cd ~/projects/api'
alias pApiN='cd ~/projects/api/ndt'
alias pApiB='cd ~/projects/api/blog'
alias pConf='cd ~/projects/config'
alias pLibs='cd ~/projects/libs'
alias pUi='cd ~/projects/ui'
alias pBlog='cd ~/projects/ui/blog'

alias monitorUW='xrandr --output DisplayPort-1 --mode 3440x1440 --primary --rate 144.00'
alias monitorLG='xrandr --output DisplayPort-0 --mode 2560x1440 --primary --rate 75.00'
alias monitorBoth='xrandr --output DisplayPort-0 --mode 2560x1440 --rate 74.97 --output DisplayPort-1 --mode 3440x1440 --primary --rate 144.00 --right-of DisplayPort-0'

alias yeet='yay -Rns --noconfirm'
alias yoink='yay -Syu --noconfirm --needed'
alias synergize='yay -Syyu --noconfirm'
alias inquire='yay -Ssyu --noconfirm'

alias gEnc='go-encryption encrypt'
alias gDec='go-encryption decrypt'

alias fcow='fortune -a | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n | lolcat'
# alias fcowAN='printf "{\n$(fcow | sed -e \'s/.*/"&"/\')\\n}"'

alias fcowAN="printf \"{\\n\$(fcow | sed -e 's/.*/\"\t\t&\t\t\",/')\\n}\""
alias fpony='fortune -a | ponysay'

alias testwm='waybar -c $HOME/.config/hypr/component/waybar/config -s $HOME/.config/hypr/component/waybar/style.css'

# GIT
alias gsa="git-secret add"
alias gsl="git-secret list"
alias gsr="git secret reveal -p ${GIT_SECRET_PASS}"
alias gsh="git-secret hide -P ${GIT_SECRET_PASS}"
# alias gsaa="find . -type f -name "*.norg" -print0 | xargs -0 git secret add"

# systemctl
alias scS="sudo systemctl start"
alias scR="sudo systemctl restart"
alias scSt="sudo systemctl stop"
alias scE="sudo systemctl enable"
alias scD="sudo systemctl disable"
alias scDa="sudo systemctl daemon-reload"

# VPN

alias sioVpn="sudo openvpn --daemon --config ~/.vpn/SIO.ovpn"
