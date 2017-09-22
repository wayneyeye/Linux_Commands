## Linux Basic and Useful Commands

### General command format
```
command [-options] parameter1 parameter2 ...
```

### Date and calendar 
```
date +%Y/%m/%d

cal [[month] year]
```

### Shutdown, halt, reboot
To see the users online
```
who
```
network status
```
netstat -a
```
backgroud processes
```
ps -aux
```
write RAM data into HD then reboot
```
sync; sync; reboot;
```
shutdown immediately
```
shutdown -h now
```
shutdown with broadcasting
```
shutdown 'The system will reboot'
```
Switch to different modes
- poweroff
```
init 0
```
- cmd line
```
init 3
```
- with gui
```
init 5
```
- reboot
```
init 6
```#
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "I ${RED}love${NC} Stack Overflow\n"

#or use the tput sub cmd
#Num  Colour    #define         R G B
#
#0    black     COLOR_BLACK     0,0,0
#1    red       COLOR_RED       1,0,0
#2    green     COLOR_GREEN     0,1,0
#3    yellow    COLOR_YELLOW    1,1,0
#4    blue      COLOR_BLUE      0,0,1
#5    magenta   COLOR_MAGENTA   1,0,1
#6    cyan      COLOR_CYAN      0,1,1
#7    white     COLOR_WHITE     1,1,1

echo "$(tput setaf 1)Red text $(tput setab 7)and white background$(tput sgr 0)"
#redirect to file
ls -l /usr/bin >> ls-output.txt
#redirect error message to 
ls -l /bin/usr >> ls-output.txt 2>> ls-output-error.txt
#discard all output
ls -l /bin/usr >/dev/null 2>&1
#or in the new bash
ls -l /bin/usr &> ls-output-all.txt


#pipeline
ls -l /usr/bin |less
#uniq --removes duplicated rows
ls -l |sort|uniq|less
#wc word count
#head/tail -n  --print a specified number of rows


#tee
ls /usr/bin |tee ls.txt|grep zip
