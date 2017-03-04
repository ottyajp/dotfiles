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
git --version >/dev/null
if [ $? -ne 0 ]; then
  [[ "$dist_name" == "arch" ]] && sudo pacman -S git
fi

echo downloading...
git clone --recursive https://github.com/ottyajp/dotfiles.git ./dotfiles

echo creating symbolic links
for f in .??*;do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".gitmodules" ]] && continue
  echo $f
  ln -s ${PWD}/$f ~/$f
done

