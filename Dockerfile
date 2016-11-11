FROM registry.centos.org/sclo/postgresql-95-centos7:latest
 
ADD dumpit.sh ./

#volume to store db dumps 
#VOLUME /var/lib/psql/data

# Run the command on container startup
CMD bash dumpit.sh
