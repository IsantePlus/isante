cd /home/$(whoami)/isante/

mkdir -p /home/$(whoami)/backups/data_sent

mv *-papConsolidated.csv.gz* /home/$(whoami)/backups/data_sent >> error_move_file.txt
