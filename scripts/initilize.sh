#!/bin/bash

echo "[*] Setting Timezone to America/Denver"
sudo timedatectl set-timezone America/Denver
echo ""

$SETUP/dockerCompose.sh

$SETUP/cronJobs.sh

#$SETUP/gdrive.sh

$SETUP/systemLink.sh

#$SETUP/restore.sh

$SETUP/zerotier.sh

clear
echo "Serverdad Initilized!"
