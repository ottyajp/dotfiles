#!/bin/bash

la=`uptime | cut -d' ' -f12-13 | sed -e 's/,$//'`
color='#[fg=colour074]'

echo ${color}load:${la}
