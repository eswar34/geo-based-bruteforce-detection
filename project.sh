#!/bin/bash
alert=2
for i in $(grep "Failed" auth.log|cut -d" " -f6|sort|uniq); do
 c=$(grep "$i" auth.log|cut -d" " -f7|sort|uniq)
 failed=$(grep "Failed" auth.log|grep "$i" |wc -l)
 if [ "$failed" -ge "$alert" ]; then
  echo "--------------------------"
  echo "$i is suspicious"
  echo "Country: $c"
  echo "login attempts: $failed"
 fi
done
