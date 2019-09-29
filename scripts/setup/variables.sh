#!/bin/bash
###########################
# Add Other Variables
###########################

echo ""
echo "Adding docker-compose variables"
echo "-------------------------------"
#Add user id's
echo "#User ID's" >> $ENVFILE
echo "PUID=$(id -u)" | tee -a $ENVFILE
echo "PGID=$(id -u)" | tee -a $ENVFILE
echo "" >> $ENVFILE

#Add Timezone
echo "#Timezone" >> $ENVFILE
echo "TZ=America/Denver" | tee -a $ENVFILE
echo "" >> $ENVFILE

#Add Container Ports
echo "#Container Ports" >> $ENVFILE
echo "COUCHCPORT=5050" | tee -a $ENVFILE
echo "OMBICPORT=3579" | tee -a $ENVFILE
echo "SICKCPORT=8081" | tee -a $ENVFILE
echo "TAUTULLICPORT=8181" | tee -a $ENVFILE
echo "TRANSMISSIONCPORT=9091" | tee -a $ENVFILE
echo "TRANSMISSIONPROXY=8080" | tee -a $ENVFILE
echo "" >> $ENVFILE

#Add Host Ports
echo "#Host Ports" >> $ENVFILE
echo "TRANSMISSIONHPORT=8080" | tee -a $ENVFILE
echo "SICKHPORT=8081" | tee -a $ENVFILE
echo "TAUTULLIHPORT=8082" | tee -a $ENVFILE
echo "COUCHHPORT=8083" | tee -a $ENVFILE
echo "OMBIHPORT=8084" | tee -a $ENVFILE
echo "" >> $ENVFILE