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

# Brutally remove everything Dcoker related
removecontainers() {
  sudo docker stop $(sudo docker ps -aq)
  sudo docker rm $(sudo docker ps -aq)
}
armageddon() {
  removecontainers
  sudo docker network prune -f
  sudo docker rmi -f $(sudo docker images --filter dangling=true -qa)
  sudo docker volume rm $(sudo docker volume ls --filter dangling=true -q)
  sudo docker rmi -f $(sudo docker images -qa)
}
