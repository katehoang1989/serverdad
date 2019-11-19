#!/bin/bash
###########################
# Setup Docker-Compose
###########################
touch ./newDockerCompose

# Setup Initial file
###############
cat $DOCKERDIR/initCompose >> ./newDockerCompose

echo   "[*] Setup Docker-Compose"
echo   ""
echo   "  [-] Would you like to install Plex & Utilities (Plex, Tautulli)"
printf "      (Y/n) >> "
read answer
if [ "$answer" != "${answer#[Yy]}" ]
then
     cat $DOCKERDIR/plexCompose >> ./newDockerCompose
     cat $DOCKERDIR/tautulliCompose >> ./newDockerCompose
     echo ""
     echo "  [*] Plex & Utilities Installed"
fi

echo   "  [-] Would you like to install the PVR (Jacket,Ombi,Radarr,Sonarr,Transmission)"
printf "      (Y/n) >> "
read answer
if [ "$answer" != "${answer#[Yy]}" ]
then
     cat $DOCKERDIR/jacketCompose >> ./newDockerCompose
     cat $DOCKERDIR/ombiCompose >> ./newDockerCompose
     cat $DOCKERDIR/radarrCompose >> ./newDockerCompose
     cat $DOCKERDIR/sonarrCompose >> ./newDockerCompose
     cat $DOCKERDIR/transmissionCompose >> ./newDockerCompose
     echo ""
     echo "  [*] PVR Installed"
fi

echo   "  [-] Would you like to install System Tools (Organizr, Ouroboros)"
printf "      (Y/n) >> "
read answer
if [ "$answer" != "${answer#[Yy]}" ]
then
     cat $DOCKERDIR/organizrCompose >> ./newDockerCompose
     cat $DOCKERDIR/ouroborosCompose >> ./newDockerCompose
     echo ""
     echo "  [*] PVR Installed"
fi

echo "[*] Moving docker-compose.yml to settings folder"
mv ./newDockerCompose $SETTINGSDIR/docker-compose.yml
rm ./newDockerCompose

if [[ -f "$SETTINGSDIR/docker-compose.yml" ]]
then
	echo "[*] Success!"
else
	echo "[!] Failed"
fi
