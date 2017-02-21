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

#### work control
```
ctrl+z # bring front work to background
jobs # check background works
scrpt ends with & will run at bg
bg run background work
kill -signal %jobnumber # notice the difference!
```

####