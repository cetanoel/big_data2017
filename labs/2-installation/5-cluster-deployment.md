# Cluster-deployment

Browse: 
```
http://40.71.41.8:7180/api/v2/cm/deployment
```

```
{
  "timestamp" : "2017-07-04T09:15:48.501Z",
  "clusters" : [ {
    "name" : "cetanoel",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "565182464"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "565182464"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "2"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "3995651276"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "672"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "node1"
        }, {
          "name" : "hive_metastore_database_name",
          "value" : "hive"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "hive_password"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-064f0e42c9f26e3dcfd20ee6dbfdcc92",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-c7f65c725c05b8317c7c1338b9513dd5",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "3473f549-4457-4375-8e6d-8acf20e91185"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-064f0e42c9f26e3dcfd20ee6dbfdcc92",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "expfjumostkrkp9yy6c1t8qvb"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-064f0e42c9f26e3dcfd20ee6dbfdcc92",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "26q4d43v9c7ffjbnvcup8yt2o"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SERVER",
          "items" : [ {
            "name" : "zookeeper_server_java_heapsize",
            "value" : "565182464"
          } ]
        } ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-064f0e42c9f26e3dcfd20ee6dbfdcc92",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6otdf9tdzbp27quwob8izuhqd"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "node1"
        }, {
          "name" : "database_password",
          "value" : "hue_password"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-NAMENODE-064f0e42c9f26e3dcfd20ee6dbfdcc92"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-064f0e42c9f26e3dcfd20ee6dbfdcc92",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1sdgh4lj9q8kcmkdh2asezciy"
          }, {
            "name" : "secret_key",
            "value" : "V5iCy7bao7jRGCzQqPE9gjOZr5PFhF"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "node1"
          }, {
            "name" : "oozie_database_password",
            "value" : "oozie_password"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "565182464"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-064f0e42c9f26e3dcfd20ee6dbfdcc92",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "42l8213s9ai37fgsi14m8gvw6"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_submit_replication",
            "value" : "1"
          } ]
        }, {
          "roleType" : "JOBHISTORY",
          "items" : [ {
            "name" : "mr2_jobhistory_java_heapsize",
            "value" : "565182464"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/yarn/nm,/mnt/resource/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/yarn/container-logs,/mnt/resource/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "2"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "4483"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "resource_manager_java_heapsize",
            "value" : "565182464"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "4483"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "2"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "true"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "IGlXnmresbsf32HKauSH8s3495NQBo"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-064f0e42c9f26e3dcfd20ee6dbfdcc92",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9hrdd4tnjj8ubl1f0bopipo3r"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-c7f65c725c05b8317c7c1338b9513dd5",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "3473f549-4457-4375-8e6d-8acf20e91185"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "238yx8tmudh8b0aou7i1mgcj2"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-064f0e42c9f26e3dcfd20ee6dbfdcc92",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "34"
          }, {
            "name" : "role_jceks_password",
            "value" : "2f8dbjkwx9zaggefgxu9c1702"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "BALANCER",
          "items" : [ {
            "name" : "balancer_java_heapsize",
            "value" : "565182464"
          } ]
        }, {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "dfs_data_dir_list",
            "value" : "/dfs/dn,/mnt/resource/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "3157157068"
          }, {
            "name" : "dfs_datanode_failed_volumes_tolerated",
            "value" : "1"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/nn,/mnt/resource/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "565182464"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "JnPP04vdCIK27XVod9q1YSzKMbC8yv"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "d4iPGdN6xa7QJCbrQlq1sDB1GzQO5A"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "DC80ASyP33tf1nFqV7waaG7FVhsKz8"
        }, {
          "name" : "service_health_suppression_hdfs_under_replicated_blocks",
          "value" : "true"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-064f0e42c9f26e3dcfd20ee6dbfdcc92",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-c7f65c725c05b8317c7c1338b9513dd5",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "3473f549-4457-4375-8e6d-8acf20e91185"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "a0hkvi1juswr0g6wbym1q3mwx"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-064f0e42c9f26e3dcfd20ee6dbfdcc92",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
        },
        "config" : {
          "items" : [ {
            "name" : "namenode_id",
            "value" : "36"
          }, {
            "name" : "role_jceks_password",
            "value" : "48jt4y9zf4hx20cjs3wa8gidc"
          } ]
        }
      }, {
        "name" : "hdfs-SECONDARYNAMENODE-064f0e42c9f26e3dcfd20ee6dbfdcc92",
        "type" : "SECONDARYNAMENODE",
        "hostRef" : {
          "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "120uvky97zwiae56g91540xns"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b",
    "ipAddress" : "10.0.0.4",
    "hostname" : "node1",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "3473f549-4457-4375-8e6d-8acf20e91185",
    "ipAddress" : "10.0.0.5",
    "hostname" : "node2",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-064f0e42c9f26e3dcfd20ee6dbfdcc92",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "4affd281be891e7182f925e59df99993e4714fd27b46a5cea03101d6d18c0067",
    "pwSalt" : -7598523592780096091,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-064f0e42c9f26e3dcfd20ee6dbfdcc92",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "60ac1fad4070fe6c043f75cd5887cd58eb8dea30711ac0162254775869daa8bf",
    "pwSalt" : 3777443096820070336,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-064f0e42c9f26e3dcfd20ee6dbfdcc92",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "2a3c465fa6d44a259d729c5cbb3c9d70ba8274705d6052f69ef503cf88d6b80f",
    "pwSalt" : -8362957413887100451,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-064f0e42c9f26e3dcfd20ee6dbfdcc92",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "6ec2dcf20bf41b0c7b32eb3418e4a196811173302a9d39184c4c0fdb02ff2b93",
    "pwSalt" : -7564401152354733679,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "52424bd0e14db9308c32daa83c2d8bcba2bea8b1318883ffffc41321884032c4",
    "pwSalt" : -2161027937695971011,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.8.3",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20161019-1014",
    "gitHash" : "518f0d6d44abc87bc392646e4369a20c8192b7cf",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "EVENTSERVER",
        "items" : [ {
          "name" : "event_server_heapsize",
          "value" : "565182464"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "node1"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "rman_password"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        }, {
          "name" : "headlamp_heapsize",
          "value" : "565182464"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ALERTPUBLISHER-064f0e42c9f26e3dcfd20ee6dbfdcc92",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "o45b72mt480qo5h4qxnlohwx"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-064f0e42c9f26e3dcfd20ee6dbfdcc92",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "48jeapx56xh68gp00etazop6a"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-064f0e42c9f26e3dcfd20ee6dbfdcc92",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "6k66jdeacf2qwie7khw5n9xoe"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-064f0e42c9f26e3dcfd20ee6dbfdcc92",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "dz3eaj7liizdr1bk46fffdb4w"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-064f0e42c9f26e3dcfd20ee6dbfdcc92",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "a41ff7a8-0d7a-47fb-abff-3b88fcb4122b"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "axmjhouojqsjohsce2qfui0wj"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/22/2012 20:10"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "NOT_ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  }
}
```