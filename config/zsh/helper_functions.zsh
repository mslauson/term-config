#!/usr/bin/zsh

mkdirCd() {
    mkdir -p $1
    cd $1
}

cloneNewDir() {
    mkdir -p $1
    cd $1
    git clone $2
}

updateNvimConfig(){
  git -C ~/.config/nvim/ pull
}

updateTermConfig(){
  git -C ~/.projects/config/term-config/ pull
}

