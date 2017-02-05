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
Switch to different modes
- poweroff
```
init 0
```
- cmd line
```
init 3
```
- with gui
```
init 5
```
- reboot
```
init 6
```

### Make iso image
```
mkisofs -r -v -o /tmp/system.img /root /home /etc
#-o iso filename
#-r recommended to add for linux sys backup
#-v display progress
```
mount iso file
```
mount -o loop /tmp/system.img /mnt
```

### Record an optical disk
check the writer/burner
```
cdrecord -scanbus dev=ATA
```
sop
```
cdrecord -v dev=ATA:1,1,0 blank=fast #remove the old contents you will be removing dvd-rw yourself
cdrecord -v dev=ATA:1,1,0 fs=8m -dummy -data /tmp/system.img #burn a cdrom
cdrecord -v dev=ATA:1,1,0 fs=8m -data -sao driveropts=burnfree /tmp/system.img #burn a dvdrom
mount -t iso9660 /dev/cdrom /mnt #default format for cd is iso9660
df -h /mnt
ll /mnt
umount /mnt
```
### Others
use dd to make an identical disk partition