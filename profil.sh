#!/bin/bash
#
# profil.sh
#
# Ce script installe le profil par défaut pour les utilisateurs du bureau
# GNOME.
# 
# (c) Niki Kovacs, 2018

CWD=$(pwd)

echo
echo ":: Installation du profil par défaut."
echo
tar xvzf $CWD/config/gnome/config.tar.gz -C /etc/skel/

echo ":: Configuration de Gtkcdlabel."
cat $CWD/config/gnome/gtkcdlabelrc > /etc/skel/.gtkcdlabelrc

echo

exit 0

