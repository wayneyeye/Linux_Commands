#### Read from keyboard input
```
read [-options] [variable...]
```

## read multiple variables
```
read var1 var2 var3 var4 var5
# if only entered less than desired, the rest will be empty
```
```
-p read with prompt
-s read secret

```
# however, read can not be pipelined
# in a child shell, read without specified variable name will be assigned to a local variable $REPLY

