# mp3gain-docker
Docker-packaged mp3gain based on Ubuntu Hirsute (21.04).  
Will `find` all mp3 file under `/data` to apply specified gain settings with default parameters `-a -k`.  
For more possible parameters check [mp3gain man page](https://www.mankier.com/1/mp3gain).  
## Usage:
Simple run:
```
docker run -it \
--rm \
--name=mp3gain \
-v <path/to/mp3/directory>:/data \
fkrivsky/mp3gain
```
Can specify parameters with `parameters` env variable:
```
docker run -it \
    --rm \
    --name=mp3gain \
    -env paramters="-r -d 2.0" \
    -v <path/to/mp3/directory>:/data \
    fkrivsky/mp3gain
```
## TODO
- build multi-arch image