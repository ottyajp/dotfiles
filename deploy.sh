#!/bin/bash

cd $HOME
PWD=`pwd`

echo -n checking distribution... 
export dist_name
if [ -e /etc/arch-release ]; then
  dist_name="arch"
fi
echo $dist_name

echo -n checking git... 
git --version >/dev/null 2>&1
if [ $? -ne 0 ]; then
  echo no
  [[ "$dist_name" == "arch" ]] && sudo pacman -S git
else
  echo ok
fi

echo downloading...
git clone --recursive https://github.com/ottyajp/dotfiles.git ./dotfiles
cd ./dotfiles

echo
echo creating symbolic links
for f in .??*;do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".gitignore" ]] && continue
  [[ "$f" == ".gitmodules" ]] && continue
  rm -f ~/$f
  echo $f
  ln -s ${PWD}/$f ~/$f
done

