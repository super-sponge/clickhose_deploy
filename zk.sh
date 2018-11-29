#!/bin/bash

for id in 0 1 2
do
echo $id > myid
ansible clickhouse[$id] --become-user zookeeper -b -m copy -a "src=myid dest=/data/zookeeper/data owner=zookeeper group=hadoop"
done

