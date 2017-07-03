#!/bin/bash
HADOOP_HOME=$HADOOP_HOME
MAP_REDUCE_APP_PATH=/home/pedro/workspace/ep2-map-reduce
DATA_PATH=/home/pedro/Documents/dados-meteorologicos/ftp.ncdc.noaa.gov/pub/data/gsod


for i in {1929..2017}
do
  $HADOOP_HOME/bin/hadoop jar $MAP_REDUCE_APP_PATH/target/ep2-map-reduce-1.0-SNAPSHOT.jar br.usp.sd.App $DATA_PATH/$i hadoop/$i
done

# CASO ESTEJA USANDO HDFS UTILIZE A SEGUINTE 
#$HADOOP_HOME/bin/hdfs dfs -get hadoop hadoop
