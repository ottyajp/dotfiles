#!/bin/bash

ram=`free | grep Mem | awk '{print $3/$2*100}'`
swap=`free | grep Swap | awk '{print $3/$2*100}'`
color='#[fg=colour106]'

echo ${color}RAM:${ram}% SWAP:${swap}%
