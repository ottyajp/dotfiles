# memo
function memo(){
  if [[ $# -eq 0 ]] ; then
    memotxt=" "
  else 
    for str in $@; do
      memotxt="${memotxt} ${str}"
    done
  fi
  set_prompt
}

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
#zstyle :compinstall filename '/home/tea/.zshrc'

# completion
eval $(dircolors /home/tea/.zsh/dircolors-solarized/dircolors.ansi-universal)
autoload -U compinit
compinit
setopt correct
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# syntax highlighting
source /home/tea/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# command not found
[ -r /etc/profile.d/cnf.sh ] && . /etc/profile.d/cnf.sh

