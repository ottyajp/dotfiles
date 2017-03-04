#!/bin/bash

PWD=`pwd`

echo creating symbolic links
for f in .??*;do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".gitmodules" ]] && continue
  echo $f
  ln -s ${PWD}/$f ~/$f
done

