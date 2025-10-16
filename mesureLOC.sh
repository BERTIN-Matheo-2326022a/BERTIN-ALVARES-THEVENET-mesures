#!/bin/bash
res=0

for f in `find . ! -type d ! -name "mesureLOC.sh" ! -name ".gitignore" ! -path "*/.git/*"`;
do
let " res += `wc -l $f | awk '{print $1}'` "
done
echo $res
