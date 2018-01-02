Poste de travail CentOS 6 GNOME
===============================

Voici le script de post-installation dont je me sers pour configurer "aux
petits oignons" un poste de travail basé sur CentOS 6 et l'environnement de
bureau GNOME. On choisira cette branche sur du matériel qui ne supporte pas un
OS 64-bits, comme par exemple les machines dotées de processeurs Intel Atom
32-bits ou Pentium-IV. 

Prérequis
---------

Le point de départ, c'est une installation par défaut de CentOS 6. Dans l'écran
de sélection des paquets, on optera pour le groupe de paquets *Minimal
Desktop*.

Le réseau n'est pas activé par défaut, il faut donc songer à l'activer
explicitement.

Lors du redémarrage initial, créer un utilisateur provisoire `install`.

-- (c) Nicolas Kovacs, 2018
