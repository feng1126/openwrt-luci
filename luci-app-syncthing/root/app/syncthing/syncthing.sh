#!/bin/sh /etc/rc.common
#
# Copyright (C) 2015 OpenWrt-dist
# Copyright (C) 2016 fw867 <ffkykzs@gmail.com>
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#



num=`ps | grep syncthing | egrep -v 'grep|check' | wc -l`  
echo -e $num 
if [ $num -lt 4 ] 

then 

/etc/init.d/syncthing start

sleep 30

else 
      echo -e "OK" 

fi


