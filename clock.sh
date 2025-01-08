#!/bin/bash
echo
while sleep 1;
  do tput sc;
  tput cup 0 $(($(tput cols)-11));
  echo -e "\e[32m`date +%r`\e[39m";
  tput rc;
done &
echo
setopt PROMPT_SUBST
PROMPT='%B%F{red}%n@%m%f%F{yellow}[%D{%L:%M:%S}]%f:%F{blue}${${(%):-%~}}%f$ %b'

TMOUT=1
TRAPALRM() {
    zle reset-prompt
}
watch -t -n1 "date +%T|figlet"
status-right " "{=21:pane_title}" %H:%M"
