#!/bin/bash
###########################
# Setup Docker-Compose
###########################
touch ./newDockerCompose

# Setup Initial file
###############
cat $DOCKERDIR/initCompose >> ./newDockerCompose

answer=""
while [ "$answer" != 11 ]
do
  clear
  echo ""
  echo "Setup Docker-Compose"
  echo "--------------------"
  echo ""
  echo "Pick the applications you would like to install"
  echo "1. Jacket"
  echo "2. Ombi"
  echo "3. Organizr"
  echo "4. ouroboros"
  echo "5. Plex"
  echo "6. Radarr"
  echo "7. Sonarr"
  echo "8. Tautulli"
  echo "9. Transmission"
  echo "10. Install All Media Server Apps"
  echo "11. EXIT"
  printf ">> "
  read answer
  case $answer in
    1)
      cat $DOCKERDIR/jacketCompose >> ./newDockerCompose
    ;;
    2)
      cat $DOCKERDIR/ombiCompose >> ./newDockerCompose
    ;;
    3)
      cat $DOCKERDIR/organizrCompose >> ./newDockerCompose
    ;;
    4)
      cat $DOCKERDIR/ouroborosCompose >> ./newDockerCompose
    ;;
    5)
      cat $DOCKERDIR/plexCompose >> ./newDockerCompose
    ;;
    6)
      cat $DOCKERDIR/radarrCompose >> ./newDockerCompose
    ;;
    7)
      cat $DOCKERDIR/sonarrCompose >> ./newDockerCompose
    ;;
    8)
      cat $DOCKERDIR/tautulliCompose >> ./newDockerCompose
    ;;
    9)
      cat $DOCKERDIR/transmissionCompose >> ./newDockerCompose
    ;;
    10)
      cat $DOCKERDIR/jacketCompose >> ./newDockerCompose
      cat $DOCKERDIR/ombiCompose >> ./newDockerCompose
      cat $DOCKERDIR/organizrCompose >> ./newDockerCompose
      cat $DOCKERDIR/ouroborosCompose >> ./newDockerCompose
      cat $DOCKERDIR/plexCompose >> ./newDockerCompose
      cat $DOCKERDIR/radarrCompose >> ./newDockerCompose
      cat $DOCKERDIR/sonarrCompose >> ./newDockerCompose
      cat $DOCKERDIR/tautulliCompose >> ./newDockerCompose
      cat $DOCKERDIR/transmissionCompose >> ./newDockerCompose
    ;;
    11)
      echo "Finishing Services Initialization"
      mv ./newDockerCompose $SETTINGSDIR/docker-compose.yml
    ;;
  esac
done