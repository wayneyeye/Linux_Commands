### Install/Manage Applications on Linux (RHEL)
#### rpm
```
rpm -ivh package_name
-i install
-v view details
-h display percentage
--test test any software dependencies
-Uvh update/install
-Fvh update if exists
```

```
rpm -qi app_name # display detail info for app_name

```

#### yum
```
yum search app_name # search app
yum info app_name # check app info
yum list # check app on server
yum install app_name #install
yum remove app_name #remove
yum repolist all #list all yum containers
yum -y update # system update
```
