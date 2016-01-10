# Hadoop Master

Hadoop master image which configures HDFS NameNode, YARN ResourceManager and MapReduce HistoryServer.

## Build

```
build -t ashrithr/hadoop-master .
```

## Usage

```
docker pull ashrithr/hadoop-master:latest
```

### Start a master container

Run Hadoop master container in daemonized mode

```
docker run -d -h hadoop-master --name hadoop-master -e HADOOP_REPLICATION=1 --net hadoop00 ashrithr/hadoop-master
```

> Assuming the master is on the hadoop00 overlay network