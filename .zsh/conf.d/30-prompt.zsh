# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"     # %u
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"    # %c
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"  # $vcs_info_msg_0_, %b:branch name
zstyle ':vcs_info:*' actionformats '[%b|%a]'

# prompt
function set_prompt(){
  PROMPT="[ ${FC256[033]}%n${COL_DEF}@${FC256[040]}%m${COL_DEF} ${FC256[147]}%d${COL_DEF} ] ${vcs_info_msg_0_}${memotxt}
$ "
RPROMPT="[Ret:%(?,%{${FC256[195]}%}%?,%{${FC256[196]}%}%?)%{${COL_DEF}%} %*]"
#RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
}


precmd () { vcs_info; set_prompt; }
