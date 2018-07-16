### Processes

#### check processes
```
ps 

ps aux # check all processes
ps -l #check my process in bash
ps axjf # ps tree structure
```

```
top #check processes dynamically
top -d 2 -p pid # check only with pid
```

```
pstree -Aup #list process tree with user and process id
```

#### kill processes
```
kill -signal PID
```

```
killall -signal PID (kill all processes initiated by a certain process)
-i interactive
-e exact
-I ignore cases
```

#### work control
```
ctrl+z # bring front work to background
jobs # check background works
scrpt ends with & will run at bg
bg run background work (place an & at the end of a cmd)
kill -signal %jobnumber # notice the difference! 
nice, renice # adjust process priority values
```

#### check out system resources
```
free -m # check free memory and swap in mbs
uname -a # check linux kernel information
uptime  # check system uptime
netstat # check network status
dmesg # display message from kernel
vmstat # display sys resource change
ls /proc # to view inmemory data
fuser # check which process is using a certain file
lsof # check which files are opened by a process
pidof # check pid of a process
```

