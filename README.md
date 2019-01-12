# Docker image of datomic

```
    [+] AUTOR:        Gerardo Junior
    [+] SITE:         https://gerardo-junior.com
    [+] EMAIL:        me@gerardo-junior.com
    [+] GITHUB:       https://github.com/gerardo-junior/datomic-docker/
    [+] TELEGRAM:     @MrGerardoJunior
```

| datomic-free  |
| :------------: | 
| [![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/gerardojunior/datomic-free/) |


## Come on, do your tests

```bash
docker pull gerardojunior/datomic-free:stable
```

## How to build

to build the image you need install the [docker engine](https://www.docker.com/) only

*~ You can try building with different versions of software with docker args, for example: DATOMIC_VERSION=0.9.5703 ~*
```bash
git clone https://github.com/gerardo-junior/datomic-docker.git

# datomic-free
cd datomic-docker/datomic-free
docker build . --tag gerardojunior/datomic-free
```
## How to use

##### Only with docker command:

```bash
# in your project folder
docker run -d -p 4334:4334 gerardojunior/datomic-free:stable
```
##### With [docker-compose](https://docs.docker.com/compose/)

Create the docker-compose.yml file  in your project folder with:

```yml
# (...)

datomic:
    image: 'gerardojunior/datomic-free:stable'
    volumes:
    - type: volume
        source: dbdata
        target: /run/datomic
        volume:
            nocopy: true

# (...)
volumes:
  dbdata:
    name: dbdata
        
```

## How to enter datomic-free image shell
 
```bash
docker run -it --rm gerardojunior/datomic-free:stable /bin/sh

# or with docker-compose

docker-compose run datomic /bin/sh
```

### License  
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
