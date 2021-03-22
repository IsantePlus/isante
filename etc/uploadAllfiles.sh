#!/bin/bash
cd ${HOME}/isante/
gzfiles=`ls *.gz`
ISANTE_PLUS_CONSOLIDATED_SERVER_USER='itech'
ISANTE_PLUS_CONSOLIDATED_SERVER_PASSWORD='jaif5Ahg5mei'
ISANTE_PLUS_CONSOLIDATED_SERVER_URL='https://192.168.1.54/receiver/receive-file.pl'

for gzfile in $gzfiles
do
   echo $gzfile
    /usr/bin/curl  -k --user "${ISANTE_PLUS_CONSOLIDATED_SERVER_USER}":"${ISANTE_PLUS_CONSOLIDATED_SERVER_PASSWORD}" --url "${ISANTE_PLUS_CONSOLIDATED_SERVER_URL}" --form "startTime=2019-07-15 13:49:48" --form "stopTime=2019-07-15 13:49:48" --form "serverName=d95s13109" --form "databaseName=itech" --form "targetName=papConsolidated" --form "dataFileName=@${HOME}/isante/${gzfile}" --form "reportFileName=@${HOME}/isante/${gzfile}-report.txt" --form "errorFileName=@${HOME}/isante/${gzfile}-error.txt"
done
