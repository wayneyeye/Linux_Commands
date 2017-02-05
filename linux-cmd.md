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
```

### Make iso image
```
mkisofs -r -v -o /tmp/system.img /root /home /etc
#-o iso filename
#-r recommended to add for linux sys backup
#-v display progress
```