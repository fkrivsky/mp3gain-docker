# mp3gain-docker
Docker-packaged mp3gain based on Ubuntu Hirsute (21.04).  
Will `find` all mp3 file under `/data` recursively to apply specified gain settings.
Can be run in multiple threads using [GNU parallel](https://www.gnu.org/software/parallel/).

https://hub.docker.com/r/fkrivsky/mp3gain
## Usage:
Plain run:
```
docker run -it \
        --rm \
        --name=mp3gain \
        -v <path/to/mp3/directory>:/data \
        fkrivsky/mp3gain
```
## Env variables

| Env        | Default Value | Description                                                         |
|------------|---------------|---------------------------------------------------------------------|
| PARAMETERS | "-a -k"       | Specify parameters for [mp3gain](https://www.mankier.com/1/mp3gain) |
| PARALLEL   | 1             | Set # of threads to run in parallel                                 |

## TODO
- build multi-arch image
