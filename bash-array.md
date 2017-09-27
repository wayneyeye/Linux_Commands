# Arrays in bash (sh does not support arrays)

## define an array
```
a[1]=foo
echo ${a[1]}
days=(Sun Mon Tue Wed Thu Fri Sat)
echo ${days[2]}
```

## list all elements of an array
```
echo ${days[@]} #this one is useful and it reflects the tru contents
echo ${days[*]}
```

## query the number of elements of an array
```
echo $[#a[@]]
echo ${#a[5]} #length of element 5
```

## query the subscripts used in an array
```
echo ${!days[@]}
```

## append to the end of an array
```
days+=(Jun Jul Aug)
echo ${days[@]}
```

## sort an array
```
days_sorted=($(for i in "${days[@]}"; do echo $i;done | sort))
echo ${days_sorted[@]}
```

## unset an array
```
unset days
unset days_sorted
```
