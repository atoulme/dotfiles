#!/bin/sh
grep -rl $2 $1 |
while read filename
do
(
  echo $filename
  sed "s/$2/$3/g;" $filename> $filename.xx
  mv $filename.xx $filename
)
done


