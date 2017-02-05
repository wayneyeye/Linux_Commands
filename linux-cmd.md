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