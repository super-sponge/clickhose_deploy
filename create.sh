#!/bin/bash

base_dir=$(cd $(dirname $0); pwd)


for i in 1 2 3
do
clickhouse-client --host=ecs-app-000${i}.novalocal --password=6lYaUiFi -n < $base_dir/create.sql
done
