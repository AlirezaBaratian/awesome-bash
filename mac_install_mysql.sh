#!/bin/zsh

main() {
    brew update
    brew install mysql

    brew services start mysql
}

main