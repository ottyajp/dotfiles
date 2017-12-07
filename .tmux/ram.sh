#!/bin/bash

ram=`free | grep Mem | awk '{print $3/$2*100}' | sed -e "s/\..\+//"`
swap=`free | grep Swap | awk '{print $3/$2*100}' | sed -e "s/\..\+//"`
tmp=`df -h | grep \/tmp | awk '{print $5}'`
rootfs=`df -h | grep \/$ | awk '{print $5}'`
color='#[fg=colour106]'
color2='#[fg=colour053]'

echo ${color}RAM:${ram}% SWAP:${swap}% ${color2}/tmp:${tmp} /:${rootfs}
