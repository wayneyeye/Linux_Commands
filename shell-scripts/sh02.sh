#!/bin/bash
# Program
# This program shows external parameters!
# 2017/02/14 Wenhe Ye
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
# Program goes here
echo "Your script name is         ====>  $0"
echo "Your total number of parameters is        ====>  $#"
echo "Your whole parameters is        ====>  $@"
echo "Your 1st parameter is        ====>  $1"


######
exit 0