### Created By @Carlostkd

sudo egrep ^"r |^w " /var/lib/tor/cached-microdesc-consensus | paste -d " "  - -  \
| sed "s/Unmeasured=. //" | \
awk ' {  printf("%s %s %s ", $2, $6, $10 ); system("geoiplookup " $6 );  } ' | \
cut -f1,2,3,8- -d" " | sed "s/=/ /" | sort -k4 -n -r | head -20
