# Group Commands
```
{ cmd1;cmd2;cmd3; } #notice the space between { cmd... }
```
# Sub Shells (it creates a sub shell, uses more memory)
```
(cmd1;cmd2;cmd3;)
```
# Process substituting
```
<(echo "foo")
echo <(echo "foo") #will see a file name
```
```
#!/bin/bash
while read attr link owner group size date time filename; do
    cat <<- EOF
        Filename: $filename
        Size:     $size
        Owner:    $owner
        Group:    $group
        Size:     $size
        Modified: $date $time
        Links:    $links
        Attributes: $attr
    EOF
done< <(ls -l| tail -n +2)
```

# Trap
```
trap argument signal [signal...]
```
```
#!/bin/bash
trap "echo 'I am ignoring you' " SIGINT SIGTERM
for i in {1..5}; do
    echo "Iter $i of 5"
    sleep 3
done
```
## a more common approach is to define functions on exits
```
#!/bin/bash
exit_on_signal_SIGINT(){
echo "interrupted" 2>&1
exit 0
}

exit_on_signal_SIGTERM(){
echo "terminated" 2>&1
exit 0
}

trap exit_on_signal_SIGINT 
trap "echo 'I am ignoring you' " SIGINT SIGTERM
for i in {1..5}; do
    echo "Iter $i of 5"
    sleep 3
done
```

# Async Executing
```
#!/bin/bash
echo "Parent starting..."
echo "Launching child..."
./async-child & ## child is running in the background
pid=$!
echo "Parent: child (PID=$pid) launched."
echo "parent: continuing..."
sleep 1

echo "Parent: pausing to wait for child to finish..."
wait $pid
echo "Parent:child is finished."
echo "Exiting"
```
```
#!/bin/bash
echo "Child: child is running..."
sleep 5
echo "Chiled: child is done. Exiting..."
```
# Named pipe (FIFO)
```
mkfifo pipe1
ls -li > pipe1 # this will hang up until it has been redirected to other process
cat < pipe1
```
