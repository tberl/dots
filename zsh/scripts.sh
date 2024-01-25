#!/bin/zsh

compress() {
    tar cvzf $1.tar.gz $1
}

pass() {
    local size=${1:-20}
    cat /dev/random | tr -dc '[:graph:]' | head -c$size
}

cheat() {
    curl cheat.sh/$1
}
