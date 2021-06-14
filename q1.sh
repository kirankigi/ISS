#!/bin/bash
declare -i intvar
declare -i x
x=1
touch q1_output.txt
while IFS= read -r line
do
     intvar=${#line}
     firstfourchars=${line:0:4}
     echo -n $firstfourchars >> q1_output.txt
     if [[ $intvar -gt 4 ]]
     then
          intvar=$((intvar-4))
          while [ $x -le $intvar ]
          do
            echo -n "#" >> q1_output.txt
            x=$((x+1))
          done
     fi
     printf '\n' >> q1_output.txt
     x=1
done < $1


