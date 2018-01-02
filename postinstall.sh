#!/bin/bash
#
# postinstall.sh
#
# Script post-installation pour CentOS 6 + GNOME
#
# (c) Nicolas Kovacs, 2018

# Exécuter en tant que root
if [ $EUID -ne 0 ] ; then
  echo "::"
  echo ":: Vous devez être root pour exécuter ce script."
  echo "::"
  exit 1
fi

# Répertoire courant
CWD=$(pwd)

# Interrompre en cas d'erreur
set -e

# Couleurs
VERT="\033[01;32m"
GRIS="\033[00m"

# Journal
LOG=/tmp/postinstall.log

# Pause entre les opérations
DELAY=1

# Nettoyer le fichier journal
echo > $LOG

# Bannière
sleep $DELAY
echo
echo "     ########################################" | tee -a $LOG
echo "     ### CentOS 6 GNOME Post-installation ###" | tee -a $LOG
echo "     ########################################" | tee -a $LOG
echo | tee -a $LOG
sleep $DELAY
echo "     Pour suivre l'avancement des opérations, ouvrez une"
echo "     deuxième console et invoquez la commande suivante :"
echo
echo "       # tail -f /tmp/postinstall.log"
echo
sleep $DELAY

# Mise à jour initiale
echo -e ":: Mise à jour initiale du système... \c"
yum -y update >> $LOG 2>&1
echo -e "[${VERT}OK${GRIS}] \c"
sleep $DELAY
echo

# Pour l'instant on n'utilise que l'IPv4
if ! grep "net.ipv6.conf" /etc/sysctl.conf 2>&1 > /dev/null ; then
  echo "::"
  echo -e ":: Désactivation de l'IPv6... \c"
  sleep $DELAY
  echo >> /etc/sysctl.conf
  echo "# Désactiver l'IPv6" >> /etc/sysctl.conf
  echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
  echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf
  echo -e "[${VERT}OK${GRIS}] \c"
  sleep $DELAY
  echo
fi

echo

exit 0
