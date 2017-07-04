# Cloudera API

### Stop Hive service

Run:
```
[cetanoel@node1 ~]$ curl -X POST -u admin:admin 'http://localhost:7180/api/v13/clusters/cetanoel/services/hive/commands/stop' 
```

Output:
```
{
  "id" : 158,
  "name" : "Stop",
  "startTime" : "2017-07-04T09:25:41.885Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```

### Start the Hive service
Run:
```
[cetanoel@node1 ~]$ curl -X POST -u admin:admin 'http://localhost:7180/api/v13/clusters/cetanoel/services/hive/commands/start'
```
Output:
```
{
  "id" : 162,
  "name" : "Start",
  "startTime" : "2017-07-04T11:13:41.090Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```

### Check status of Hive service

Run:
```
[cetanoel@node1 ~]$ curl -u admin:admin http://localhost:7180/api/v1/clusters/cetanoel/services/hive
```
Output:
```
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://node1:7180/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "http://node1:7180/cmf/serviceRedirect/hive/instances",
  "serviceState" : "STARTED",
  "healthSummary" : "GOOD",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  } ],
  "configStalenessStatus" : "FRESH",
  "clientConfigStalenessStatus" : "FRESH",
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive",
  "entityStatus" : "GOOD_HEALTH"
}
```