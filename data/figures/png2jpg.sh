#!/bin/bash
for fin in $(ls *.png);do
  fio=${fin*.png}.jpg
  echo $fio
  #convert $fin $fio
done
