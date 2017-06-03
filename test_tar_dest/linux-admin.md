### Linux Account Administration

#### add or delete linux accounts

**useradd**

```
useradd -D #to view default useradd settings
```

**passwd**

- initialize password under root
```
passwd username
```
- change password under user
```
passwd
```
- show password setting
```
passwd -S username
```

**chage**
- list password details for user
```
chage -l username
```
- force resetting password after login immediately
```
chage -d 0 username
```

**usermod**

**userdel**

**finger**

**chfn**

**chsh**

**id**

#### add or delete linux groups

**groupadd**

**groupmod**

**groupdel** 

**gpasswd** 
```
-A group admin
-M add member
```

#### ACL
**getfacl**

**setfacl**

#### su and sudo
```
su - #switch to root, use this and don't use su only!!
-m   #use current environment setting
-c   #execute command once
```

```
sudo
-u #as user default as root!

```

#### Query User Information
- to see who else logged in
```
w
who
```
- to view history
```
last
lastlog
```

#### Chat and broadcasting
```
write username [TTY]  #use ctrl+D to end input
wall "message"
mail username -s #mail send . as EOF
```
