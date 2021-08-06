#!/bin/bash
set -e
echo "mp3gain will run with the parameters ${PARAMETERS} in $PARALLEL thread(s)."
exec find /data -iname '*mp3' | parallel -j $PARALLEL mp3gain ${PARAMETERS} {}\;
