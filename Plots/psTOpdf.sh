#!/bin/csh -f

setenv Dir "11Feb13/"
echo $Dir

ls {$Dir}*.ps > list_PB.ls
if (-s list_PB.ls) then
  foreach i (`cat list_PB.ls`)
    echo `"HELLO"|sed 's/.\{2\}$//'`
  setenv outp `$i|sed 's/.\{2\}$//'`
    echo $outp
  echo $i {$outp}.pdf
  end
endif

