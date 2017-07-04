## To display MySQL version:

```
[root@localhost ~]# mysql --version
mysql  Ver 14.14 Distrib 5.5.56, for Linux (x86_64) using readline 5.1
```

## Run the MySQL secure installation

1. Make sure to start the mysqld service:
```
[root@localhost ~]# service mysqld start
```
```
Initializing MySQL database:  170630 22:53:51 [Note] Ignoring --secure-file-priv value as server is running with --bootstrap.
170630 22:53:51 [Note] /usr/sbin/mysqld (mysqld 5.5.56) starting as process 4453 ...
170630 22:53:52 [Note] Ignoring --secure-file-priv value as server is running with --bootstrap.
170630 22:53:52 [Note] /usr/sbin/mysqld (mysqld 5.5.56) starting as process 4460 ...

PLEASE REMEMBER TO SET A PASSWORD FOR THE MySQL root USER !
To do so, start the server, then issue the following commands:

/usr/bin/mysqladmin -u root password 'new-password'
/usr/bin/mysqladmin -u root -h localhost.localdomain password 'new-password'

Alternatively you can run:
/usr/bin/mysql_secure_installation

which will also give you the option of removing the test
databases and anonymous user created by default.  This is
strongly recommended for production servers.

See the manual for more instructions.

Please report any problems at http://bugs.mysql.com/

                                                    [  OK  ]
Starting mysqld:                                    [  OK  ]
```

2. Then we run the secure installation (only on the server):
```
[root@localhost ~]# sudo /usr/bin/mysql_secure_installation
```
```
Enter current password for root (enter for none):
OK, successfully used password, moving on...

Setting the root password ensures that nobody can log into the MySQL
root user without the proper authorisation.

Set root password? [Y/n] y
New password:
Re-enter new password:
Password updated successfully!
Reloading privilege tables..
 ... Success!

Remove anonymous users? [Y/n] y

Disallow root login remotely? [Y/n] n

Remove test database and access to it? [Y/n] y

Reload privilege tables now? [Y/n] y
 ... Success!

Cleaning up...

All done!  If you've completed all of the above steps, your MySQL
installation should now be secure.

Thanks for using MySQL!
```

## Creating the MySQL Databases for Cloudera Manager

1. Log in to mysql as root user:
```
[root@localhost ~]# mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 5.5.56 MySQL Community Server (GPL)

Copyright (c) 2000, 2017, Oracle and/or its affiliates. All rights reserved.
```

2. Create a database for the Activity Monitor. The database name, user name, and password can be anything you want. For example:
```
mysql> create database activity_monitor DEFAULT CHARACTER SET utf8;
mysql> grant all on activity_monitor.* TO 'cetanoel'@'%' IDENTIFIED BY 'activity_monitor_passwd';
```

So on for all databases needed.

3. Show databases:

```
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| amon               |
| hive               |
| hmon               |
| hue                |
| mysql              |
| nav                |
| navms              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
| smon               |
+--------------------+
14 rows in set (0.00 sec)

```