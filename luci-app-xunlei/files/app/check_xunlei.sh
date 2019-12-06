#!/bin/sh


echo -e "---------------------------------Check Start----------------------------------" 


num=`ps | grep xunlei | egrep -v 'grep|check' | wc -l`  
echo -e $num 
if [ $num -lt 3 ]                                              
then 
       
      /etc/init.d/xunlei start                                   
      sleep 10
      num1=`ps | grep xunlei | egrep -v 'grep|check' | wc -l`  
      if [ $num1 -lt 3 ]
      then
           echo -e "OK" 
  
      else 
           echo -e "Not OK"  
  
      fi           
else 
      echo -e "OK" 
fi
echo -e "---------------------------------Check Over------------------------------------" 
