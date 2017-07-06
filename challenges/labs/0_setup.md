Commands:

- List the /etc/passwd entries for neymar and ronaldo
```
cat /etc/passwd | grep ronaldo
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash
```

```
cat /etc/passwd | grep neymar
neymar:x:2010:2010::/home/neymar:/bin/bash
```

- List the /etc/group entries for barca and merengues:
```
cat /etc/group | grep barca
barca:x:2017:ronaldo
```

```
cat /etc/group | grep merengues
merengues:x:2018:neymar
```