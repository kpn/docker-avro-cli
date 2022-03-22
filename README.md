# Docker-avro-cli

![Docker Image Version (latest by date)](https://img.shields.io/docker/v/kpnnv/avro-cli?label=latest%20version)

Container image for [avro-cli](https://github.com/rkluszczynski/avro-cli)

## Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

## Usage examples

### Pull image

```sh
docker pull kpnnv/avro-cli:0.2.7
```

### Validation example

Use to validate avro json schemas:

```sh
docker run --rm --user="$(id -u)" -v "$(pwd)":/avro kpnnv/avro-cli:0.2.7 validate -c BACKWARD --schema {newfile}.asvc --previousSchema {oldfile}.asvc
```

## Acknowledgments

* Based on the work from [brandonstubbs/avro-tools](https://github.com/brandonstubbs/docker-avro-tools)