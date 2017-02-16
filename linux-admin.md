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