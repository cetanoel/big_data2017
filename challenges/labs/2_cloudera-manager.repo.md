# 2_cloudera-manager.repo

- Copy the cloudera-manager.repo:

```
[ec2-user@ip-172-31-13-211 ~]$ cat cloudera-manager.repo
```

- Output:
```
[cloudera-manager]
# Packages for Cloudera Manager, Version 5, on RedHat or CentOS 6 x86_64
name=Cloudera Manager
baseurl=https://archive.cloudera.com/cm5/redhat/6/x86_64/cm/5.11.1/
gpgkey =https://archive.cloudera.com/cm5/redhat/6/x86_64/cm/RPM-GPG-KEY-cloudera
gpgcheck = 1
```