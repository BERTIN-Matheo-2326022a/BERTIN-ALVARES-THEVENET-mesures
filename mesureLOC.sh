#!/bin/bash
# Auteur: BERTIN Mathéo
# Date: 16/10/2025
# Description: Script affichant le nombre de lignes de code présentes dans le dossier
# en s'ignorant lui-même, les fichiers .gitignore et les contenus des dossiers .git

# compteur
res=0

# récupère tous les fichiers correspondant à nos critères
for f in `find . ! -type d ! -name "mesureLOC.sh" ! -name ".gitignore" ! -path "*/.git/*"`;
do
# incrémente pour chaque ligne de code
let " res += `wc -l $f | awk '{print $1}'` "
done
# affiche le nombre de ligne de codes
echo $res
