#!/bin/bash

function bat() {
  echo `upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep ${1}`
}

~/.tmux/is_laptop.sh && echo "" && exit
state=`bat state | awk '{print $2}'`
cur=`bat energy | awk '{print $2}'`
ful=`bat energy-full | awk '{print $2}'`
percentage=`echo ${cur} ${ful} | awk '{printf ("%3.0f", $1/$2*100)}'`

remaintime=`bat time | awk '{print $4}'`
remainunit=`bat time | awk '{print $5}'`
remain=\(${remaintime}${remainunit}\)
color=
if echo $state | grep 'discharging'; then
  state=''
else
  state='⚡️'
  color='#[fg=colour226]'
fi

if echo $percentage | grep '100'; then
  state='❇'
  color='#[fg=colour46]'
  remain='Full'
fi

color2='#[fg=colour225]'
echo ${color}${percentage}% ${remain} $state ${color2}
