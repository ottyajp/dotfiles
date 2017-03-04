#!/bin/bash

cd $HOME

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
if [ -e ~/dotfiles ];then
  cd ~/dotfiles
  git pull
else
  git clone --recursive https://github.com/ottyajp/dotfiles.git ./dotfiles
  cd ./dotfiles
fi

echo
echo creating symbolic links
for f in .??*;do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".gitignore" ]] && continue
  [[ "$f" == ".gitmodules" ]] && continue
  rm -f ~/$f
  echo $f
  ln -s ${HOME}/$f ~/$f
done

