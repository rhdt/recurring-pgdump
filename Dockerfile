FROM registry.centos.org/centos/postgresql-95-centos7
 
ADD dumpit.sh ./

#volume to store db dumps 
#VOLUME /var/lib/psql/data

# Run the command on container startup
CMD bash dumpit.sh
