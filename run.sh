#!/bin/bash
echo "mp3gain will run with the following parameters: ${parameters}"
exec find /data -iname '*mp3' -exec mp3gain "${parameters}" {} \;