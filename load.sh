#!/bin/bash

base_dir=$(cd $(dirname $0); pwd)

cd $base_dir/dss

#./dbgen -s 10 -T a


sed -i 's/$/"1999-01-01"/' customer.tbl
cat customer.tbl | clickhouse-client --host=ecs-app-0001.novalocal --password=6lYaUiFi --query "INSERT INTO customerd FORMAT CSV"
cat lineorder.tbl | clickhouse-client --host=ecs-app-0001.novalocal --password=6lYaUiFi --query "INSERT INTO lineorderd FORMAT CSV"
cat part.tbl | clickhouse-client --host=ecs-app-0001.novalocal --password=6lYaUiFi --query "INSERT INTO partd FORMAT CSV"
cat supplier.tbl | clickhouse-client --host=ecs-app-0001.novalocal --password=6lYaUiFi --query "INSERT INTO supplierd FORMAT CSV"
