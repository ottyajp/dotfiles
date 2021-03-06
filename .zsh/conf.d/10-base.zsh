HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
#zstyle :compinstall filename '/home/tea/.zshrc'

# completion
eval $(dircolors $HOME/.zsh/dircolors-solarized/dircolors.ansi-universal)
autoload -U compinit
compinit
setopt correct
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# cd option
setopt AUTO_CD
cdpath=(.. ~)

# syntax highlighting
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# command not found
[ -r /etc/profile.d/cnf.sh ] && . /etc/profile.d/cnf.sh

