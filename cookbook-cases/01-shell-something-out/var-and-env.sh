#!/bin/bash
PID=$(pgrep vim)
echo vim pid is $PID
echo "vim's environment is set to"
cat /proc/$PID/environ |tr '\0' '\n'

Fruit=Apple;
echo "double quote used:"
bash <<< "echo $Fruit";
echo "single quote used:"
bash <<< 'echo $Fruit';
echo "export used:"
export Fruit # do not use dollar sign!
bash <<< 'echo $Fruit';

#Finding the lenght of the string
echo "length of the path variable is "
echo ${#PATH}

#Print the current shell name
echo $0
echo $SHELL

#Current bash prompt string
cat ~/.bashrc |grep PS1
