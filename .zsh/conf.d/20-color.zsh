# setup coloring env.
function colorlist(){
  for c in {000..255}; do
    echo -n "\e[38;5;${c}m ${c}";
    [ $(($c%16)) -eq 15 ] && echo;
  done
  echo
}
for c in {16..255}; do
  FC256[${c}]=$(echo "\e[38;5;${c}m")
  BC256[${c}]=$(echo "\e[48;5;${c}m")
done
unset c
COL_DEF="$(echo '\e[0m')"


