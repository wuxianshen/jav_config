#!/bin/sh
procedure_name="jav_main"
 
PROCESS=`ps -ef|grep $procedure_name | grep -v grep | grep -v PPID | awk '{ print $2}'`
for i in $PROCESS
do
  echo "Kill the $1 process [ $i ]"
  kill -9 $i
done
