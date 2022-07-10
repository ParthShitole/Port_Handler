#!/usr/bin/env bash

echo "Ship Handler"
echo "1.Make Connection"
./finalfile.scpt
echo "*Connection Established*"
echo "--Chose Level--"
read Level
i=5
if [ $Level -eq 4 ]
then
     ./level4.scpt
     while [ $i -ne 10 ]
     do
        read control
        rem=$((control%10))
        control=$((control-rem))
        control=$((control/10))
        if [ $control -eq 3 ]
        then
            while [ $rem -ge 1 ]
            do
              ./ship0.scpt
              rem=$((rem-1))
            done
        fi
        if [ $control -eq 1 ]
        then
          while [ $rem -ge 1 ]
          do
            ./ship1.scpt
            rem=$((rem-1))
          done
        fi
        if [ $control -eq 2 ]
        then
          while [ $rem -ge 1 ]
          do
            ./ship2.scpt
            rem=$((rem-1))
          done
        fi
     done
fi
