if [[ -d "$HOME/.zsh/conf.d" ]]; then
  for conf in $(find -L ~/.zsh/conf.d/ -name "*.zsh" | sort); do
    source $conf
  done
fi

if [ -z $TMUX ]; then
  tmux
fi
