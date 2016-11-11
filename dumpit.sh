while true
do
#extracting hour from date
TIMEHR=$(date +%H)
if [ $TIMEHR -eq $BKPTIME ];
then
echo "start backup"
date
pg_dump -h $PGHOST -p $PGPORT -U $PGUSER -d $PGDB -Ft > /var/lib/pgsql/data/`date --utc +%FT%T`.tar 
date
echo "end backup" 
sleep 24h
fi
done
