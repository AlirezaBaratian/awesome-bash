#!/bin/zsh

main() {
    brew tap mongodb/brew
    brew update
    brew install mongodb-community@7.0

    brew services start mongodb-community@7.0
}

main