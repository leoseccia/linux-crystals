#!/bin/zsh

#put an alias in your .zshrc like this
#alias '?'="~/Development/linux-crystals/development/alias_for_cheat.sh.zsh"
#and then you can do:
# ? python:iterate objects
# ? csharp: lambda
# ? curl

echo "$@" | sed -e "s/ /+/g" | sed -e "s/:/\//g" | read cmd

curl "cheat.sh/$cmd"