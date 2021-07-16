# mp3gain-docker
Docker-packaged mp3gain based on Ubuntu Hirsute (21.04).  
Will `find` all mp3 file under `/data` recursively to apply specified gain settings, with default parameters being `-a -k`.  
For other possible parameters see [mp3gain man page](http://manpages.ubuntu.com/manpages/hirsute/en/man1/mp3gain.1.html).  

https://hub.docker.com/r/fkrivsky/mp3gain
## Usage:
Simple run:
```
docker run -it \
        --rm \
        --name=mp3gain \
        -v <path/to/mp3/directory>:/data \
        fkrivsky/mp3gain
```
Can specify parameters with `parameters` env variable, e.g.:
```
docker run -it \
        --rm \
        --name=mp3gain \
        --env parameters="-r -d 2.0" \
        -v <path/to/mp3/directory>:/data \
        fkrivsky/mp3gain
```
## TODO
- build multi-arch image
