#!/bin/bash
for i in {1932..2017}
do
  hadoop jar ~/workspace/ep2-map-reduce/target/ep2-map-reduce-1.0-SNAPSHOT.jar br.usp.sd.App ~/Documents/dados-meteorologicos/ftp.ncdc.noaa.gov/pub/data/gsod/$i hadoop/$i
done
