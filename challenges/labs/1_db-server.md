# 1_db-server

## The hostname of your db server node:
```
[ec2-user@ip-172-31-13-211 ~]$ hostname -f
```
- Output:
```
ip-172-31-13-211.eu-central-1.compute.internal
```

## Display your database server's version:

```
[ec2-user@ip-172-31-13-211 ~]$ mysql --version
```
- Output:
```
mysql  Ver 14.14 Distrib 5.6.36, for Linux (x86_64) using  EditLine wrapper
```

## The command and output for listing your created databases:

- First log in to mysql as root:
```
[ec2-user@ip-172-31-13-211 ~]$ mysql -u root -p
```

Password: `cloudera`

- Then show databases:
```
mysql> show databases;
```
- Output:
```
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| hue                |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
9 rows in set (0.00 sec)
```