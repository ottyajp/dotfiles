# prompt
function set_prompt(){
PROMPT="[ ${FC256[033]}%n${COL_DEF}@${FC256[040]}%m${COL_DEF} ${FC256[147]}%d${COL_DEF} ] ${memotxt}
$ "
RPROMPT="[Ret:%(?,%{${FC256[195]}%}%?,%{${FC256[196]}%}%?)%{${COL_DEF}%} %*]"
}


set_prompt
