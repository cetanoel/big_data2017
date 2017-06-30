# Preinstall

## Parameters


---

## Check Swappiness

Display the swappiness value:
```
cat /proc/sys/vm/swappiness
```

Output:
```
60
```

We alter the swappiness value:
```
sudo sysctl -w vm.swappiness=1
```

We can make the change permanent by adding the following line: `vm.swappiness=1` to the file:
```
sudo vim /etc/sysctl.conf 
``` 

## Show the mount attributes of all volumes
```
df -aTh
```

Output: 
```
Filesystem           Type         Size  Used Avail Use% Mounted on
/dev/mapper/VolGroup-lv_root
                     ext4          50G  3.8G   43G   9% /
proc                 proc            0     0     0    - /proc
sysfs                sysfs           0     0     0    - /sys
devpts               devpts          0     0     0    - /dev/pts
tmpfs                tmpfs        3.9G  300K  3.9G   1% /dev/shm
/dev/sda1            ext4         477M   66M  387M  15% /boot
/dev/mapper/VolGroup-lv_home
                     ext4          41G   50M   39G   1% /home
none                 binfmt_misc     0     0     0    - /proc/sys/fs/binfmt_misc
```

## Show the reserve space of any non-root, ext-based volumes (Not Completed)

## To disable THP at boot time
Append the following to the kernel command line in `/etc/grub.conf`:
```
transparent_hugepage=never
```

## To disable THP at run time
Run the following commands to disable THP on-the-fly:

```
 echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled
 echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag
```

## Explicit HugePages DISABLED:

If the value of HugePages_Total is "0" it means HugePages is disabled on the system.

```
grep -i HugePages_Total /proc/meminfo 
```
```
HugePages_Total:       0
```

## List network

```
ifconfig -a
```
```
eth0      Link encap:Ethernet  HWaddr 08:00:27:63:31:A9  
          inet addr:10.0.2.15  Bcast:10.0.2.255  Mask:255.255.255.0
          inet6 addr: fe80::a00:27ff:fe63:31a9/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:13 errors:0 dropped:0 overruns:0 frame:0
          TX packets:17 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:3223 (3.1 KiB)  TX bytes:1828 (1.7 KiB)

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:8 errors:0 dropped:0 overruns:0 frame:0
          TX packets:8 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:480 (480.0 b)  TX bytes:480 (480.0 b)
```
## Setting Forward and Reverse Host Lookup

```
sudo vim /etc/hosts
```

```
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
10.0.2.15       hadoop1
10.0.2.16       hadoop2
```

We use `getent` to list forward and reverse host lookups:
IP address lookup refers to the process of translating between IP addresses and internet domain names. Forward IP address lookup converts an internet name to an IP address. Reverse IP address lookup converts the IP number to the name.
```
[root@localhost ~]# getent hosts hadoop1
10.0.2.15       hadoop1
[root@localhost ~]# getent hosts 10.0.2.15
10.0.2.15       hadoop1
[root@localhost ~]# getent hosts hadoop2
10.0.2.16       hadoop2
[root@localhost ~]# getent hosts 10.0.2.16
10.0.2.16       hadoop2
```

## Show the `nscd` service is running

```
sudo yum install nscd
```
Start the `nscd` service:
```
[root@localhost ~]# sudo service nscd start
Starting nscd:                                             [  OK  ]
```

Make sure the service starts automatically at boot:
```
sudo chkconfig nscd on
```

We check the `nscd` status:
```
[root@localhost ~]# sudo service nscd status
nscd (pid 2907) is running...
```

## Show the `ntpd` service is running

```
[root@localhost ~]# sudo service ntpd start
Starting ntpd:                                             [  OK  ]
```
```
[root@localhost ~]# sudo chkconfig ntpd on
[root@localhost ~]# sudo service ntpd status
ntpd (pid  2963) is running...
```

- Reboot the system