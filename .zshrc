if [[ -d "$HOME/.zsh/conf.d" ]]; then
  for conf in $(find -L ~/.zsh/conf.d/ -name "*.zsh" | sort); do
    source $conf
  done
fi

tmux ls >/dev/null
if [ $? -eq 1 -a -z "$TMUX" ]; then
  exec tmux
elif [ -z $TMUX ]; then
  exec tmux attach
else
  echo "sessions should be nested with care."
fi
