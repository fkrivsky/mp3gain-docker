#!/bin/bash
set -e
echo "mp3gain will run with the following parameters ${PARAMETERS} in $PARALLEL threads."
exec find /data -iname '*mp3' | parallel -j $PARALLEL mp3gain ${PARAMETERS} {}\;
