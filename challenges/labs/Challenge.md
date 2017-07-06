# Challenge

## Part 1

Commands:
```
sudo su root
```
- Create 2 users
```
useradd -u 2010 neymar
```
```
useradd -u 2016 ronaldo
```

- Show that the users have been created
```
cat /etc/passwd | grep neymar
```

```
cat /etc/passwd | grep ronaldo
```

- Create 2 new groups
```
groupadd barca
```

```
groupadd merengues
```

- Add the users to the groups
```
usermod -a -G merengues neymar
```

```
usermod -a -G barca ronaldo
```

List the group:
```
 cat /etc/group | grep barca
```

```
 cat /etc/group | grep merengues
```