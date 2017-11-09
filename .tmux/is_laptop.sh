#!/bin/bash

type=`cat /sys/class/dmi/id/chassis_type`

case $type in
  8|9|10|11|14 ) exit 1 ;;
  * ) exit 0 ;;
esac

