### Linux scheduled works

#### at, atd
```
at [-mldv] TIME
-m : force sending mail after job done
-l : list all at jobs (atq)
-d : delete a job (atrm)

# default stdout is mail if want tty display then
echo "hello" > /dev/tty1
```
#### batch (when cpu load is low)
```
batch TIME
#admin the same as atq, atrm...
```

#### crontab
```
crontab
-e edit
-l list
-r remove tasks! be careful when deleting crontab tasks!!!!
```
when in the editing mode
```
59 23 1 5 * mail root </home/test.txt
*/5 * * * * mail root </home/test.txt #executes every 5 minutes
```
