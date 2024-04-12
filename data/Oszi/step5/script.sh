#!/bin/bash
for x in *.DAT; do 
  t=${x%.DAT}.TXT
  dosbox-x -conf dosbox.conf -c "MOUNT C ." -c "C:" -c "SDFTOASC.EXE $x $t /y:LR /x" -c exit
done
#!/bin/bash

# DOSBOX_EXECUTABLE="/Users/ton/Downloads/DosBox/dosbox"

# for x in *.DAT; do 
#   t=${x%.DAT}.TXT
#   "$DOSBOX_EXECUTABLE" -c "mount c ." -c "C:" -c "SDFTOASC.EXE $x $t /y:LR /x" -c exit
# done