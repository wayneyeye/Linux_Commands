#list installed packages
dpkg --list
#check if a certain app is installed
dpkg --status package_name
#look up package in standard_repository
apt-cache search search_string
## Way to show software list

```
comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)
```