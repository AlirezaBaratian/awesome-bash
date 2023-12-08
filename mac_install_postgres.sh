#!/bin/zsh

main() {
    brew update
    brew install posgresql@16
    brew services start posgresql@16
}

main
