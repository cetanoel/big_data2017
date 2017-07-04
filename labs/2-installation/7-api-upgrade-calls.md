# 7-api-upgrade-calls

## Report the latest available version of the API
Run:
```
[cetanoel@node1 ~]$ curl -u admin:admin 'http://localhost:7180/api/version'
```
Output:
```
v14
```

## Report the CM version
Run:
```
[cetanoel@node1 ~]$ curl -u admin:admin 'http://localhost:7180/api/v14/cm/version'
```
Output:
```
{
  "version" : "5.9.2",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20170330-1814",
  "gitHash" : "822da28bff818f57fc1bfc3eafe3a550300ef1b0",
  "snapshot" : false
}
```

## List all CM users
Run:
```
[cetanoel@node1 ~]$ curl -u admin:admin 'http://localhost:7180/api/v4/users'
```
Output:
```
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_ADMIN" ]
  } ]
}
```

## Report the database server in use by CM
Run:
```
[cetanoel@node1 ~]$ curl -u admin:admin 'http://localhost:7180/api/v14/cm/scmDbInfo'
```
Output:
```
{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}
```