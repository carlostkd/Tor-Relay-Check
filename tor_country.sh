### Created by @Carlostkd

#### Change your country


sudo egrep ^"r |^w " /var/lib/tor/cached-microdesc-consensus | paste -d " "  - -  \
| sed "s/Unmeasured=. //" | \
awk ' {  printf("%s %s %s ", $2, $6, $10 ); system("geoiplookup " $6 );  } ' | \
cut -f1,2,3,8- -d" " | sed "s/=/ /" | grep Portugal | sort -k4 -n -r 
