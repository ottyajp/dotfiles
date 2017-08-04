#!/bin/bash

install() {
  echo -n checking $1... 
  which $1 >/dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo no
    if [ "$dist_name" == "arch" ];then
      if [ `whoami` = 'root' ]; then
        sh -c "pacman -S $1"
      else
        sh -c "sudo pacman -S $1"
      fi
    else
      echo please install $1 manually 
      exit 2
    fi
  else
    echo ok
  fi
}

cd $HOME

echo -n checking distribution... 
export dist_name
if [ -e /etc/arch-release ]; then
  dist_name="arch"
fi
echo $dist_name

install git
install zsh
chsh -s `which zsh`
install tmux

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
  ln -s `pwd`/$f ~/$f
done

