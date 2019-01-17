# Docker image of datomic

```
    [+] AUTOR:        Gerardo Junior
    [+] SITE:         https://gerardo-junior.com
    [+] EMAIL:        me@gerardo-junior.com
    [+] GITHUB:       https://github.com/gerardo-junior/datomic-docker.git
    [+] TELEGRAM:     @MrGerardoJunior
```

## datomic-free [![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/gerardojunior/datomic-free/)
- [stable](https://github.com/gerardo-junior/dynamodb-docker/blob/master/datomic-free/Dockerfile), [latest](https://github.com/gerardo-junior/dynamodb-docker/blob/develop/datomic-free/Dockerfile), [1.0.0](https://github.com/gerardo-junior/dynamodb-docker/blob/1.0.0/datomic-free/Dockerfile)
    - [library/openjdk](https://hub.docker.com/_/openjdk) 13-alpine
      - [openjdk](https://openjdk.java.net/) 13
    - [datomic free version](https://www.datomic.com/) 0.9.5703

## Come on, do your tests

```bash
docker pull gerardojunior/datomic-free:stable
```

## How to build

to build the image you need install the [docker engine](https://www.docker.com/) only

*~ You can try building with different versions of software with docker args, for example: DATOMIC_VERSION=0.9.5703 ~*
```bash
# datomic-free
docker build https://github.com/gerardo-junior/datomic-docker.git#:datomic-free  --tag gerardojunior/datomic-free
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
    name: datomic-dbdata
        
```

## How to enter datomic-free image shell
 
```bash
docker run -it --rm gerardojunior/datomic-free:stable sh

# or with docker-compose

docker-compose run datomic sh
```

### License  
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
