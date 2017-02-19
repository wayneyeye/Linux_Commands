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

