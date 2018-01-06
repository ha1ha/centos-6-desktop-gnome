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
tar xvzf $CWD/gnome/config.tar.gz -C /etc/skel/

exit 0

