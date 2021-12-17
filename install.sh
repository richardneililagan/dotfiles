#!/usr/bin/env zsh

INFO='\033[1;32m'
WARN='\033[1;30m'
RESET='\033[0m'

TARGET_EXISTS="$WARN[exists]$RESET"
TARGET_INSTALLED="$INFO[installed]$RESET"

# :: Attempt to detect OS
if [[ `uname` == 'Linux' ]]; then
  OS='linux'
else
  OS='osx'
fi

# --------------------------------------------------------------------------------------
# Creates a symlink from a source file to a target.
# Offers to replace if the file already exists.
#
# Arguments:
#    $1   Source file/dir
#    $2   Target file/dir
install () {
  # :: if the target already exists, confirm replace
  if [ -e "$HOME/$2" ]; then
    echo $2 $TARGET_EXISTS
    read -q "CONFIRM?Replace existing? (y/n) "
    echo
  fi

  # :: if the target does not exist, OR
  #    user confirms to replace, 
  #    then create the symlink
  if [ ! -e "$HOME/$2" ] || [[ $CONFIRM =~ ^[Yy]$ ]]; then
    rm -r $HOME/$2 > /dev/null 2>&1
    ln -s `pwd`/$1 $HOME/$2 && echo $2 $TARGET_INSTALLED
  fi
}

# :: -----------------------------------------------------------------------------------

install src/gitconfig .gitconfig
install src/gitignore .gitignore

install src/gitconfig.delta .gitconfig.delta

install src/zshrc .zshrc
install src/profile .profile
install src/prompt .prompt
install src/aliases .aliases
install src/functions .functions

install src/vimrc .vimrc

install src/starship .starship

# :: directories
install src/hooks .hooks
install src/vim .vim
