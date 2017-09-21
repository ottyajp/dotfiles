#!/bin/bash

ram=`free | grep Mem | awk '{print $3/$2*100}'`
swap=`free | grep Swap | awk '{print $3/$2*100}'`

echo RAM:${ram}% SWAP:${swap}%
