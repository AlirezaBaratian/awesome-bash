#!/bin/zsh

main() {
    brew update
    brew install redis
    brew services start redis
}

main
