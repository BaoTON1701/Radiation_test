#!/bin/bash
for x in *.DAT; do 
  t=${x%.DAT}.TXT
  dosbox -c "mount c ." -c "C:" -c "SDFTOASC.EXE $x $t /y:LR /x" -c exit
done
